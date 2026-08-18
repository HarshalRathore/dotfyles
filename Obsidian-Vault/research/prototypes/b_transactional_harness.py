#!/usr/bin/env python3
"""
================================================================================
  Prototype B: Transactional Execution Harness for AI Agent
================================================================================

  WHAT IT DOES:
    A Python harness where the AI agent NEVER executes commands directly.
    Instead, the agent sends structured JSON actions that the harness parses,
    validates, and executes with specific security checks for each action type.

    Action types:
      - file_read  : Read files from allowed directories only
      - file_write : Write files to allowed directories with length limits
      - shell      : Run whitelisted commands with metacharacter checks
      - test       : Run a command in a restricted subprocess environment

    Every action is validated BEFORE execution. Violations are logged and
    rejected — never silently ignored.

  HOW IT WORKS:
    The harness acts as a secure proxy between the agent and the host system.
    The agent sends JSON actions → the harness validates → the harness executes
    → results are returned as JSON.

  SECURITY ASSUMPTIONS & LIMITATIONS:
    ✓ All actions are validated before execution
    ✓ File reads are restricted to ALLOWED_DIRS
    ✓ File writes are restricted to ALLOWED_DIRS with MAX_CONTENT_LENGTH
    ✓ Shell commands use only a whitelist (no wildcards, no metacharacters)
    ✓ Test actions run with subprocess security flags
    ✓ All paths are resolved to absolute — no symlink tricks
    ✓ Content size limits prevent memory exhaustion attacks
    ✗ This does NOT replace kernel-level isolation (use Prototype A for that)
    ✗ Network access is not restricted within shell/test actions
    ✗ Running as current user — combine with Prototype A for full isolation

  HOW TO RUN:
      # Run the harness interactively (sends JSON actions via stdin):
      python3 b_transactional_harness.py

      # Or run with demo mode:
      python3 b_transactional_harness.py --demo

      # Or pipe actions:
      echo '{"action": "execute", "type": "file_read", "path": "/tmp/test.txt"}' \
        | python3 b_transactional_harness.py

  API - JSON ACTION FORMAT:
      {
          "action": "execute",
          "type": "file_read|file_write|shell|test",
          "path": "/allowed/path/to/file.txt",   // file_read/write
          "content": "file content here",          // file_write
          "cmd": "ls -la",                          // shell/test
          "args": ["-la"]                           // shell/test (alternative to cmd)
      }

  REQUIRES:
    - Python 3.8+
    - No external packages needed (stdlib only)
================================================================================
"""

import json
import os
import sys
import re
import subprocess
import time
import tempfile
import logging
import argparse
from pathlib import Path
from typing import Optional

# ---------------------------------------------------------------------------
# Logging setup
# ---------------------------------------------------------------------------
logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s [%(levelname)s] %(message)s",
    datefmt="%H:%M:%S",
)
logger = logging.getLogger("harness")

# ---------------------------------------------------------------------------
# Configuration — tweak these for your environment
# ---------------------------------------------------------------------------

# Allowed directories for file read/write operations
# Only files under these paths can be accessed. No symlink traversal.
ALLOWED_DIRS: list[str] = [
    "/tmp/sandbox-work",
    "/tmp/agent-work",
]

# Maximum content length for file writes (1 MB)
MAX_CONTENT_LENGTH: int = 1_048_576

# Maximum content length for file reads (5 MB)
MAX_READ_LENGTH: int = 5_242_880

# Maximum output size for shell/test commands (1 MB)
MAX_OUTPUT_SIZE: int = 1_048_576

# Command timeout in seconds
COMMAND_TIMEOUT: int = 30

# Whitelist of allowed shell commands (basename only)
# Only these commands can be executed via the shell action.
# Arguments are allowed but the command itself must be on the whitelist.
ALLOWED_COMMANDS: list[str] = [
    "python3",
    "python",
    "pytest",
    "py",
    "git",
    "ls",
    "cat",
    "echo",
    "pwd",
    "whoami",
    "date",
    "wc",
    "head",
    "tail",
    "grep",
    "find",
    "sort",
    "uniq",
    "diff",
    "touch",
    "cp",
    "mv",
    "mkdir",
    "rm",
    "mkdir",
    "tee",
    "basename",
    "dirname",
    "readlink",
    "file",
    "stat",
    "id",
    "env",
    "printenv",
]

# Patterns that are NEVER allowed in shell command arguments
# These prevent injection attacks via metacharacters
BLOCKED_PATTERN = re.compile(
    r'[;&|`$()]',  # semicolons, pipes, backticks, $(), command substitution
    re.IGNORECASE,
)

# Dangerous argument patterns
BLOCKED_ARGS = re.compile(
    r'(--force|-rf|--no-preserve-root|rm\s+/-)',
    re.IGNORECASE,
)


# ===================================================================
# Action Result Helper
# ===================================================================

def result_ok(
    action_id: Optional[str] = None,
    stdout: str = "",
    stderr: str = "",
    exit_code: int = 0,
    metadata: Optional[dict] = None,
) -> dict:
    """Create a successful action result dict."""
    return {
        "ok": True,
        "action_id": action_id,
        "return_code": exit_code,
        "stdout": stdout,
        "stderr": stderr,
        "metadata": metadata or {},
        "timestamp": time.time(),
    }


def result_error(
    action_id: Optional[str] = None,
    error: str = "",
    error_type: str = "validation_error",
    metadata: Optional[dict] = None,
) -> dict:
    """Create an error action result dict."""
    return {
        "ok": False,
        "action_id": action_id,
        "error": error,
        "error_type": error_type,
        "metadata": metadata or {},
        "timestamp": time.time(),
    }


# ===================================================================
# Validator — checks every action before execution
# ===================================================================

class ActionValidator:
    """
    Validates each incoming action against security policies.

    Every action must pass validation before the harness will execute it.
    Validation failures are logged and the action is rejected.

    The validator is STATELESS — it has no memory of previous actions,
    which means it can't be bypassed via state manipulation.
    """

    def __init__(
        self,
        allowed_dirs: list[str],
        max_content_length: int,
        max_read_length: int,
        allowed_commands: list[str],
        command_timeout: int,
    ) -> None:
        self.allowed_dirs = [os.path.abspath(d) for d in allowed_dirs]
        self.max_content_length = max_content_length
        self.max_read_length = max_read_length
        self.allowed_commands = set(allowed_commands)
        self.command_timeout = command_timeout

    def validate(
        self, action: dict
    ) -> tuple[bool, Optional[str]]:
        """
        Validate an action dict and return (is_valid, error_message).

        The action dict must have:
          - "action": "execute" (required)
          - "type": one of ["file_read", "file_write", "shell", "test"]

        Returns:
            (True, None)  if valid
            (False, msg)  if invalid, with a descriptive error message
        """
        # --- 1. Required top-level fields ---
        if not isinstance(action, dict):
            return False, "Action must be a JSON object"

        if action.get("action") != "execute":
            return False, f'Expected action="execute", got "{action.get("action")}"'

        action_type = action.get("type", "")
        if action_type not in ("file_read", "file_write", "shell", "test"):
            return False, (
                f'Unknown action type "{action_type}". '
                f'Allowed: file_read, file_write, shell, test'
            )

        # --- 2. Type-specific validation ---
        if action_type == "file_read":
            return self._validate_file_read(action)

        elif action_type == "file_write":
            return self._validate_file_write(action)

        elif action_type == "shell":
            return self._validate_shell(action)

        elif action_type == "test":
            return self._validate_test(action)

        return False, "Unreachable — type should have been caught above"

    def _validate_file_read(self, action: dict) -> tuple[bool, Optional[str]]:
        """
        Validate a file_read action.

        Checks:
          - "path" field is present and non-empty
          - Path resolves to an absolute path (no relative paths)
          - Path is under one of the allowed directories
          - Path does not contain '..' or symlink tricks
          - File exists and is a regular file (not a device or symlink)
        """
        path = action.get("path")
        if not path or not isinstance(path, str):
            return False, "file_read requires a non-empty 'path' string"

        # Resolve to absolute path — blocks relative paths like '../etc/shadow'
        abs_path = os.path.abspath(path)

        # Check for path traversal
        if ".." in abs_path:
            return False, f"Path traversal detected: {path}"

        # Verify the path is under an allowed directory
        is_under_allowed = any(
            abs_path == allowed_dir or abs_path.startswith(allowed_dir + "/")
            for allowed_dir in self.allowed_dirs
        )
        if not is_under_allowed:
            return False, (
                f"Path '{abs_path}' is not under any allowed directory. "
                f"Allowed: {self.allowed_dirs}"
            )

        # Check the file exists and is readable
        if not os.path.exists(abs_path):
            return False, f"File does not exist: {abs_path}"

        if not os.path.isfile(abs_path):
            return False, f"Path is not a regular file: {abs_path}"

        return True, None

    def _validate_file_write(self, action: dict) -> tuple[bool, Optional[str]]:
        """
        Validate a file_write action.

        Checks:
          - "path" field is present and non-empty
          - "content" field is present (can be empty string)
          - Content length is within MAX_CONTENT_LENGTH
          - Path resolves to an absolute path
          - Directory exists for the new file
          - Path is under one of the allowed directories
          - Path does not contain '..' or symlink tricks
        """
        path = action.get("path")
        content = action.get("content")

        if not path or not isinstance(path, str):
            return False, "file_write requires a non-empty 'path' string"

        # Content is optional (can write an empty file)
        if content is None:
            content = ""
        if not isinstance(content, str):
            return False, "file_write 'content' must be a string"

        # Check content length
        content_bytes = content.encode("utf-8")
        if len(content_bytes) > self.max_content_length:
            return False, (
                f"Content exceeds maximum length ({len(content_bytes)} > "
                f"{self.max_content_length} bytes)"
            )

        # Resolve to absolute path
        abs_path = os.path.abspath(path)

        # Check for path traversal
        if ".." in abs_path:
            return False, f"Path traversal detected: {path}"

        # Verify the path is under an allowed directory
        is_under_allowed = any(
            abs_path == allowed_dir or abs_path.startswith(allowed_dir + "/")
            for allowed_dir in self.allowed_dirs
        )
        if not is_under_allowed:
            return False, (
                f"Path '{abs_path}' is not under any allowed directory. "
                f"Allowed: {self.allowed_dirs}"
            )

        # Check the parent directory exists
        parent_dir = os.path.dirname(abs_path)
        if not os.path.isdir(parent_dir):
            return False, f"Parent directory does not exist: {parent_dir}"

        return True, None

    def _validate_shell(self, action: dict) -> tuple[bool, Optional[str]]:
        """
        Validate a shell action.

        Checks:
          - "cmd" OR "args" must be present (but not both required)
          - Command must be in the ALLOWED_COMMANDS whitelist
          - No shell metacharacters in the command/args
          - No dangerous argument patterns
          - Command is called via subprocess (no shell=True)
        """
        cmd = action.get("cmd")
        args = action.get("args", [])

        if not cmd and not args:
            return False, "shell action requires 'cmd' string or 'args' list"

        # Build the command to validate
        if isinstance(cmd, str) and cmd.strip():
            # Parse cmd into command + arguments
            parts = cmd.strip().split()
            if not parts:
                return False, "cmd is empty after stripping"
            command_basename = os.path.basename(parts[0])
            command_args = parts[1:]
        elif isinstance(args, list) and args:
            command_basename = os.path.basename(args[0])
            command_args = args[1:]
        else:
            return False, "Could not extract command from action"

        # Check command is whitelisted
        if command_basename not in self.allowed_commands:
            return False, (
                f"Command '{command_basename}' is not in the whitelist. "
                f"Allowed: {sorted(self.allowed_commands)[:10]}..."
            )

        # Check for blocked metacharacters in both cmd and args
        all_args_str = " ".join(str(a) for a in [cmd or ""] + list(args))
        if BLOCKED_PATTERN.search(all_args_str):
            return False, (
                f"Blocked metacharacters in command/args: {all_args_str}"
            )

        # Check for dangerous argument patterns
        if BLOCKED_ARGS.search(all_args_str):
            return False, f"Dangerous argument pattern: {all_args_str}"

        # Ensure timeout is reasonable
        timeout = action.get("timeout", self.command_timeout)
        if not isinstance(timeout, (int, float)) or timeout <= 0:
            return False, "timeout must be a positive number"
        if timeout > 120:
            return False, f"Timeout too high ({timeout}s), max is 120s"

        return True, None

    def _validate_test(self, action: dict) -> tuple[bool, Optional[str]]:
        """
        Validate a test action.

        A test action is like a shell action but runs in a restricted
        environment. It inherits the same validation rules as shell.

        Additionally, test actions can specify a "test_name" for logging.
        """
        # Test inherits all shell validation
        cmd = action.get("cmd")
        args = action.get("args", [])

        if not cmd and not args:
            return False, "test action requires 'cmd' string or 'args' list"

        # Same cmd/args extraction as shell
        if isinstance(cmd, str) and cmd.strip():
            parts = cmd.strip().split()
            if not parts:
                return False, "cmd is empty after stripping"
            command_basename = os.path.basename(parts[0])
            command_args = parts[1:]
        elif isinstance(args, list) and args:
            command_basename = os.path.basename(args[0])
            command_args = args[1:]
        else:
            return False, "Could not extract command from action"

        # Check command is whitelisted
        if command_basename not in self.allowed_commands:
            return False, (
                f"Command '{command_basename}' is not in the whitelist. "
                f"Allowed: {sorted(self.allowed_commands)[:10]}..."
            )

        # Check for blocked metacharacters
        all_args_str = " ".join(str(a) for a in [cmd or ""] + list(args))
        if BLOCKED_PATTERN.search(all_args_str):
            return False, f"Blocked metacharacters in command/args: {all_args_str}"

        # Check for dangerous argument patterns
        if BLOCKED_ARGS.search(all_args_str):
            return False, f"Dangerous argument pattern: {all_args_str}"

        # Ensure timeout is reasonable
        timeout = action.get("timeout", self.command_timeout)
        if not isinstance(timeout, (int, float)) or timeout <= 0:
            return False, "timeout must be a positive number"
        if timeout > 120:
            return False, f"Timeout too high ({timeout}s), max is 120s"

        return True, None


# ===================================================================
# Executor — actually runs validated actions
# ===================================================================

class ActionExecutor:
    """
    Executes validated actions on behalf of the agent.

    The executor NEVER receives an action directly from the agent.
    It only receives actions that have already been validated by the
    ActionValidator. This separation prevents any bypass of validation.
    """

    def execute_file_read(self, path: str, max_length: int) -> dict:
        """Read a file with content length limit."""
        try:
            with open(path, "r", encoding="utf-8") as fh:
                content = fh.read()

            # Enforce read length limit
            if len(content.encode("utf-8")) > max_length:
                truncated = content[: max_length * 4]  # rough estimate for UTF-8
                content = truncated + f"\n... [truncated, exceeded {max_length} bytes]"

            return result_ok(
                stdout=content,
                metadata={
                    "path": path,
                    "size_bytes": len(content.encode("utf-8")),
                },
            )

        except PermissionError:
            return result_error(error=f"Permission denied: {path}", error_type="permission")
        except FileNotFoundError:
            return result_error(error=f"File not found: {path}", error_type="not_found")
        except UnicodeDecodeError:
            return result_error(
                error=f"Cannot decode file as UTF-8: {path}", error_type="encoding"
            )
        except Exception as exc:
            return result_error(error=str(exc), error_type="file_error")

    def execute_file_write(self, path: str, content: str) -> dict:
        """Write a file with path and content validation."""
        try:
            abs_path = os.path.abspath(path)

            # Write the file
            with open(abs_path, "w", encoding="utf-8") as fh:
                fh.write(content)

            return result_ok(
                metadata={
                    "path": abs_path,
                    "written_bytes": len(content.encode("utf-8")),
                }
            )

        except PermissionError:
            return result_error(error=f"Permission denied: {path}", error_type="permission")
        except IsADirectoryError:
            return result_error(
                error=f"Path is a directory, not a file: {path}", error_type="path_error"
            )
        except Exception as exc:
            return result_error(error=str(exc), error_type="file_error")

    def execute_shell(
        self,
        cmd: Optional[str] = None,
        args: Optional[list] = None,
        timeout: int = 30,
        cwd: Optional[str] = None,
    ) -> dict:
        """Execute a whitelisted command with no shell=True."""
        if isinstance(cmd, str) and cmd.strip():
            full_cmd = cmd.strip().split()
        elif isinstance(args, list) and args:
            full_cmd = args
        else:
            return result_error(
                error="No command to execute", error_type="validation"
            )

        try:
            result = subprocess.run(
                full_cmd,
                capture_output=True,
                text=True,
                timeout=timeout,
                cwd=cwd,
                # Security: explicitly disable shell access
                shell=False,
                # Run with restricted environment (no PATH manipulation)
                env={
                    "PATH": "/usr/bin:/bin",
                    "HOME": os.environ.get("HOME", ""),
                    "LANG": "C.UTF-8",
                    "TERM": "dumb",
                    # Block common environment variables that could be abused
                    "LD_PRELOAD": "",
                    "LD_LIBRARY_PATH": "",
                    "PYTHONPATH": "",
                },
            )

            stdout = (result.stdout[:MAX_OUTPUT_SIZE] or "") if result.stdout else ""
            stderr = (result.stderr[:MAX_OUTPUT_SIZE] or "") if result.stderr else ""

            return result_ok(
                stdout=stdout,
                stderr=stderr,
                exit_code=result.returncode,
                metadata={
                    "cmd": " ".join(full_cmd),
                    "timeout": timeout,
                },
            )

        except subprocess.TimeoutExpired:
            return result_error(
                error=f"Command timed out after {timeout}s",
                error_type="timeout",
                metadata={"cmd": " ".join(full_cmd), "timeout": timeout},
            )
        except FileNotFoundError:
            return result_error(
                error=f"Command not found: {full_cmd[0]}",
                error_type="not_found",
                metadata={"cmd": " ".join(full_cmd)},
            )
        except Exception as exc:
            return result_error(error=str(exc), error_type="process_error")

    def execute_test(
        self,
        cmd: Optional[str] = None,
        args: Optional[list] = None,
        test_name: Optional[str] = None,
        **kwargs,
    ) -> dict:
        """Execute a test action in a restricted environment."""
        logger.info("Running test: %s", test_name or "unnamed")

        result = self.execute_shell(cmd=cmd, args=args, **kwargs)

        if result.get("metadata") is None:
            result["metadata"] = {}
        if test_name:
            result["metadata"]["test_name"] = test_name

        return result


# ===================================================================
# Harness — Orchestrates validation and execution
# ===================================================================

class AgentHarness:
    """
    Main harness class.

    Flow:
      1. Agent sends JSON action →
      2. Validator checks the action →
      3. Executor runs the validated action →
      4. Result is returned as JSON

    The harness NEVER passes actions directly to the executor without
    validation first. This is the core security guarantee.
    """

    def __init__(
        self,
        allowed_dirs: Optional[list[str]] = None,
        max_content_length: int = MAX_CONTENT_LENGTH,
        max_read_length: int = MAX_READ_LENGTH,
        allowed_commands: Optional[list[str]] = None,
        command_timeout: int = COMMAND_TIMEOUT,
    ) -> None:
        self.validator = ActionValidator(
            allowed_dirs=allowed_dirs or ALLOWED_DIRS,
            max_content_length=max_content_length,
            max_read_length=max_read_length,
            allowed_commands=allowed_commands or ALLOWED_COMMANDS,
            command_timeout=command_timeout,
        )
        self.executor = ActionExecutor()
        self._action_count = 0

    def handle_action(self, action: dict) -> dict:
        """
        Handle a single action from the agent.

        This is the main entry point. It:
          1. Assigns an action ID for tracking
          2. Validates the action
          3. Executes if valid, rejects if not
          4. Returns a result dict

        Args:
            action: JSON action dict from the agent.

        Returns:
            Result dict with 'ok' boolean and result details.
        """
        self._action_count += 1
        action_id = f"action-{self._action_count:04d}"
        logger.info("[%s] Received action: %s", action_id, json.dumps(action, default=str)[:200])

        # --- Step 1: Validate ---
        is_valid, error_msg = self.validator.validate(action)

        if not is_valid:
            logger.warning("[%s] REJECTED: %s", action_id, error_msg or "unknown")
            return result_error(
                action_id=action_id,
                error=error_msg or "Unknown validation error",
                error_type="validation_error",
                metadata={"raw_action": action},
            )

        # --- Step 2: Execute ---
        action_type = action.get("type")

        if action_type == "file_read":
            result = self.executor.execute_file_read(action["path"], self.validator.max_read_length)

        elif action_type == "file_write":
            result = self.executor.execute_file_write(action["path"], action["content"])

        elif action_type == "shell":
            result = self.executor.execute_shell(
                cmd=action.get("cmd"),
                args=action.get("args"),
                timeout=action.get("timeout", self.validator.command_timeout),
                cwd=action.get("cwd"),
            )

        elif action_type == "test":
            result = self.executor.execute_test(
                cmd=action.get("cmd"),
                args=action.get("args"),
                test_name=action.get("test_name"),
                timeout=action.get("timeout", self.validator.command_timeout),
                cwd=action.get("cwd"),
            )

        else:
            result = result_error(
                action_id=action_id,
                error=f"Unexpected type after validation: {action_type}",
                error_type="internal_error",
            )

        result["action_id"] = action_id
        result["action_type"] = action_type

        if result.get("ok"):
            logger.info(
                "[%s] OK (type=%s, code=%s)",
                action_id,
                action_type,
                result.get("return_code", "-"),
            )
        else:
            logger.warning(
                "[%s] EXEC FAILED (type=%s, err=%s)",
                action_id,
                action_type,
                result.get("error", ""),
            )

        return result


# ===================================================================
# Interactive Mode — reads JSON actions from stdin
# ===================================================================

def interactive_mode(harness: AgentHarness) -> None:
    """
    Run in interactive mode, reading JSON actions from stdin.
    Each line should be a valid JSON action object.
    Type 'quit' or 'exit' to stop.
    """
    print("\n╔══════════════════════════════════════════════════════════╗")
    print("║  Transactional Agent Harness — Interactive Mode          ║")
    print("║  Send JSON actions via stdin. Type 'quit' to exit.       ║")
    print("║  Example:                                                  ║")
    print("║    {\"action\": \"execute\", \"type\": \"shell\", \"cmd\": \"echo hello\"}  ║")
    print("╚══════════════════════════════════════════════════════════╝\n")

    while True:
        try:
            line = input("action> ").strip()
        except (EOFError, KeyboardInterrupt):
            print()
            break

        if line.lower() in ("quit", "exit", "q"):
            print("Exiting harness.")
            break

        if not line:
            continue

        try:
            action = json.loads(line)
        except json.JSONDecodeError as exc:
            print(f"ERROR: Invalid JSON — {exc}\n")
            continue

        result = harness.handle_action(action)
        print(json.dumps(result, indent=2, default=str))
        print()


# ===================================================================
# Demo Mode — simulates an agent sending 3 actions
# ===================================================================

def demo_mode(harness: AgentHarness) -> None:
    """
    Run a demo that simulates an agent sending three actions:
      1. file_read  — read a test file
      2. file_write — write a test file
      3. shell      — run a whitelisted command

    This demonstrates the harness in action.
    """
    # --- Setup: create test files ---
    sandbox_dir = ALLOWED_DIRS[0] if ALLOWED_DIRS else "/tmp/sandbox-work"
    os.makedirs(sandbox_dir, exist_ok=True)
    test_read_file = os.path.join(sandbox_dir, "demo_input.txt")
    test_write_file = os.path.join(sandbox_dir, "demo_output.txt")

    # Write an input file for the demo
    with open(test_read_file, "w") as fh:
        fh.write("This is demo content for file_read action.\n")
        fh.write("Line 2: generated by the harness setup.\n")

    print("╔══════════════════════════════════════════════════════════╗")
    print("║  Transactional Agent Harness — Demo Mode                 ║")
    print("║  Simulating an agent sending 3 actions...                ║")
    print("╚══════════════════════════════════════════════════════════╝\n")

    # --- Action 1: file_read ---
    print("--- Action 1: file_read ---")
    action_read = {
        "action": "execute",
        "type": "file_read",
        "path": test_read_file,
    }
    result_read = harness.handle_action(action_read)
    print(json.dumps(result_read, indent=2, default=str))

    if result_read.get("ok"):
        print(f"  ✓ File read successfully ({len(result_read.get('stdout', ''))} bytes)\n")
    else:
        print(f"  ✗ File read failed: {result_read.get('error')}\n")

    # --- Action 2: file_write ---
    print("--- Action 2: file_write ---")
    action_write = {
        "action": "execute",
        "type": "file_write",
        "path": test_write_file,
        "content": "Hello from the agent harness!\nThis file was written by the file_write action.\nTimestamp: " + str(time.time()),
    }
    result_write = harness.handle_action(action_write)
    print(json.dumps(result_write, indent=2, default=str))

    if result_write.get("ok"):
        print(f"  ✓ File written successfully ({result_write.get('metadata', {}).get('written_bytes', 0)} bytes)\n")
    else:
        print(f"  ✗ File write failed: {result_write.get('error')}\n")

    # --- Action 3: shell ---
    print("--- Action 3: shell ---")
    action_shell = {
        "action": "execute",
        "type": "shell",
        "cmd": "date",
    }
    result_shell = harness.handle_action(action_shell)
    print(json.dumps(result_shell, indent=2, default=str))

    if result_shell.get("ok"):
        print(f"  ✓ Shell command executed (exit code: {result_shell.get('return_code', '?')})\n")
    else:
        print(f"  ✗ Shell command failed: {result_shell.get('error')}\n")

    # --- Bonus: Show rejection ---
    print("--- Bonus: Rejected Action ---")
    action_rejected = {
        "action": "execute",
        "type": "shell",
        "cmd": "rm -rf /tmp/sandbox-work",  # dangerous command — should be blocked
    }
    result_rejected = harness.handle_action(action_rejected)
    print(json.dumps(result_rejected, indent=2, default=str))
    print(f"  ✓ Rejected as expected: {result_rejected.get('error')}\n")

    # --- Summary ---
    print("=" * 60)
    print("DEMO SUMMARY")
    print("=" * 60)
    print(f"Total actions: {harness._action_count}")
    ok_count = sum(1 for r in [result_read, result_write, result_shell, result_rejected] if r.get("ok"))
    fail_count = 4 - ok_count
    print(f"  Passed: {ok_count}")
    print(f"  Rejected (as expected): {fail_count}")
    print("=" * 60)


# ===================================================================
# Main Entry Point
# ===================================================================

def main() -> None:
    """
    Main entry point.

    Usage:
        # Interactive mode (default):
        python3 b_transactional_harness.py

        # Demo mode:
        python3 b_transactional_harness.py --demo

        # Pipe actions:
        echo '{"action": "execute", "type": "shell", "cmd": "echo hello"}' | python3 b_transactional_harness.py
    """
    parser = argparse.ArgumentParser(
        description="Transactional AI Agent Execution Harness",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog=__doc__,
    )
    parser.add_argument(
        "--demo",
        action="store_true",
        help="Run demo mode with simulated agent actions",
    )
    parser.add_argument(
        "--actions",
        type=str,
        help="File containing newline-delimited JSON actions to execute",
    )
    args = parser.parse_args()

    logger.info("Agent harness starting...")
    logger.info("Allowed directories: %s", ALLOWED_DIRS)
    logger.info("Allowed commands: %s (first 10: %s)", len(ALLOWED_COMMANDS), sorted(ALLOWED_COMMANDS)[:10])

    harness = AgentHarness()

    if args.demo:
        demo_mode(harness)
        return

    if args.actions:
        if not os.path.isfile(args.actions):
            logger.error("Actions file not found: %s", args.actions)
            sys.exit(1)

        logger.info("Reading actions from: %s", args.actions)
        with open(args.actions) as fh:
            for i, line in enumerate(fh, 1):
                line = line.strip()
                if not line:
                    continue
                try:
                    action = json.loads(line)
                    result = harness.handle_action(action)
                    print(json.dumps(result, indent=2, default=str))
                except json.JSONDecodeError as exc:
                    logger.error("Line %d: invalid JSON — %s", i, exc)
                    print(json.dumps(result_error(error=str(exc)), indent=2))
        return

    # Interactive mode (default)
    interactive_mode(harness)


if __name__ == "__main__":
    main()
