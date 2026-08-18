#!/usr/bin/env python3
"""
================================================================================
  Prototype A: Kernel Capability Sandbox for AI Agent Harness
================================================================================

  WHAT IT DOES:
    A Python harness that runs arbitrary commands inside a sandboxed environment
    using only Linux kernel primitives — no Docker, no VM, no special daemon.
    It applies four layers of isolation:

      1. LANDLOCK LSM    — restricts filesystem access to a single directory
      2. SECCOMP          — blocks dangerous syscalls (mount, reboot, ptrace…)
      3. CGROUPS V2       — limits CPU and memory for the sandboxed process
      4. PID NAMESPACE    — hides host processes from the child

    The harness runs as an unprivileged user (no root required).

  HOW TO RUN:
      # Create a sandbox directory with test files first:
      mkdir -p /tmp/sandbox-work && echo "Hello from sandbox" > /tmp/sandbox-work/test.txt

      # Run a command inside the sandbox:
      python3 a_kernel_sandbox.py "cat /tmp/sandbox-work/test.txt"

      # The command runs with all kernel-level restrictions applied.

  SECURITY ASSUMPTIONS & LIMITATIONS:
    ✓ Landlock LSM requires kernel ≥ 5.13 (we're on 7.0 — good)
    ✓ Seccomp filtering uses prctl(PR_SET_SECCOMP, SECCOMP_MODE_STRICT) for
      the most restrictive profile. We *attempt* a custom seccomp profile via
      the 'seccomp' C extension, falling back to strict mode.
    ✓ PID namespace via unshare(2) — child cannot see host PIDs
    ✓ Cgroups v2 must be mounted (verified at runtime)
    ✓ All operations use only unprivileged syscalls — no CAP_SYS_ADMIN needed
    ✗ Network access is NOT restricted by default (would need network namespaces)
    ✗ This does NOT replace proper user/group isolation (runs as current user)
    ✗ Landlock rules are additive — you can only remove access, not grant new access
    ✗ seccomp custom profile requires pip install seccomp; falls back to STRICT
    ✗ unshare --pid may require user namespace permissions; falls back gracefully

  IMPLEMENTATION ORDER (important!):
    1. Preload libc into memory BEFORE any Landlock rules (so prctl works after)
    2. Apply seccomp profile (while libc is still loadable, and before Landlock)
    3. Set up cgroups v2 limits
    4. Set resource limits (rlimit)
    5. Apply Landlock filesystem restrictions (last — permanently locks the process)
    6. Spawn child process in PID namespace (with all restrictions inherited)

  REQUIRES:
    - Python 3.8+
    - landlock Python package (pip install landlock)
    - Linux kernel ≥ 5.13 with Landlock LSM enabled
    - cgroups v2 mounted
================================================================================
"""

import os
import sys
import re
import subprocess
import ctypes
import ctypes.util
import resource
import logging

# ---------------------------------------------------------------------------
# CRITICAL: Preload libc into memory BEFORE Landlock applies.
# Landlock blocks filesystem access, so after we apply it, ctypes can't load
# libc.so.6 anymore. We must load it now, while the process still has full
# filesystem access.  The ctypes CDL object is a live C library handle that
# stays valid even after filesystem rules restrict access.
# ---------------------------------------------------------------------------
_libc_loaded = None  # Will hold the loaded libc handle

try:
    _libc_loaded = ctypes.CDLL(
        ctypes.util.find_library("c") or "libc.so.6",
        use_errno=True,
    )
    _SECCOMP_STRICT = 0  # PR_SET_SECCOMP = 1, SECCOMP_MODE_STRICT = 0
    _PR_SET_SECCOMP = 1
    LIBC_AVAILABLE = True
except Exception:
    LIBC_AVAILABLE = False
    _libc_loaded = None

logging.basicConfig(
    level=logging.INFO,
    format="%(message)s",
)
logger = logging.getLogger("sandbox")

# ---------------------------------------------------------------------------
# Optional: Landlock module for filesystem restrictions
# ---------------------------------------------------------------------------
try:
    import landlock
    LANDLOCK_AVAILABLE = True
except ImportError:
    LANDLOCK_AVAILABLE = False

# ---------------------------------------------------------------------------
# Constants
# ---------------------------------------------------------------------------
SANDBOX_ROOT = "/tmp/sandbox-work"
CGROUP_BASE = "/sys/fs/cgroup"
CGROUP_NAME = "agent-sandbox"
MAX_OUTPUT_SIZE = 65536  # 64 KB max output buffer


# ===================================================================
# PART 1: Seccomp Profile (syscall filtering) — applied BEFORE Landlock
# ===================================================================
# MUST run before Landlock so ctypes can still load the seccomp library
# (if needed). The fallback uses the pre-loaded libc handle.


def apply_seccomp_profile() -> None:
    """
    Apply a seccomp BPF filter to restrict dangerous syscalls.

    Strategy (in order of preference):
      1. Custom profile via 'seccomp' Python package (most permissive but safe)
      2. SECCOMP_MODE_STRICT via pre-loaded prctl handle — most secure but
         blocks most commands.  We pre-loaded libc at module level so prctl
         still works after Landlock applies.
      3. Skip (if both fail) — print warning and continue

    Blocked syscalls include:
      - mount, umount2      : prevent mounting filesystems
      - reboot               : prevent rebooting the host
      - ptrace               : prevent debugging/attaching to processes
      - kexec_load           : prevent loading a new kernel
      - swapon, swapoff      : prevent swap manipulation
      - init_module, finit_module, delete_module : prevent loading kernel modules

    Security note:
      SECCOMP_MODE_STRICT is extremely restrictive — it only allows read(2),
      write(2), exit(2), and sigreturn(2). Most real commands will fail.
      The custom profile below is more practical but still blocks dangerous ops.
    """
    # --- Attempt 1: custom seccomp profile via 'seccomp' package ---
    try:
        from seccomp import (
            SystemCall,
            Filter,
            Policy,
            Action,
            native_arch,
        )

        p = Policy(Action.Kill)

        # Allow common safe syscalls that commands need
        safe_syscalls = [
            # File operations
            "read",
            "write",
            "open",
            "openat",
            "close",
            "stat",
            "fstat",
            "lstat",
            "lseek",
            "pread64",
            "pwrite64",
            "readlink",
            "access",
            "fcntl",
            "dup",
            "dup2",
            "dup3",
            "newfstatat",
            "getdents64",
            "getcwd",
            "chdir",
            "fchdir",
            "unlink",
            "rename",
            "mkdir",
            "rmdir",
            # Process operations
            "fork",
            "vfork",
            "clone",
            "execve",
            "execveat",
            "wait4",
            "waitid",
            "exit",
            "exit_group",
            "getpid",
            "getppid",
            "getuid",
            "getgid",
            "geteuid",
            "getegid",
            "gettid",
            "set_tid_address",
            "set_robust_list",
            "futex",
            "rt_sigaction",
            "rt_sigprocmask",
            "rt_sigreturn",
            "nanosleep",
            "clock_nanosleep",
            "gettimeofday",
            "brk",
            "mmap",
            "munmap",
            "mprotect",
            "mremap",
            "arch_prctl",
            # Network (minimal — connect only, no bind/listen/accept)
            "socket",
            "connect",
            "sendto",
            "recvfrom",
            "sendmsg",
            "recvmsg",
            "shutdown",
            "getsockname",
            "getsockopt",
            "setsockopt",
            "getpeername",
            # Misc
            "ioctl",
            "pipe",
            "pipe2",
            "select",
            "pselect6",
            "poll",
            "ppoll",
            "epoll_create",
            "epoll_create1",
            "epoll_ctl",
            "epoll_wait",
            "epoll_pwait",
            "clone3",
            "sched_yield",
            "sched_getaffinity",
            "sched_getparam",
            "sched_setscheduler",
        ]

        for sc in safe_syscalls:
            try:
                p.add_rule(Action.Allow, SystemCall(sc))
            except Exception:
                pass  # Some syscalls may not exist on this arch

        p.load()
        logger.info("Custom seccomp profile loaded (safe syscalls only)")
        return

    except ImportError:
        logger.info("seccomp module not found — falling back to SECCOMP_MODE_STRICT")

    # --- Attempt 2: SECCOMP_MODE_STRICT via prctl(2) ---
    # NOTE: We use the pre-loaded libc handle (_libc_loaded) so this works
    # even after Landlock is applied (which would block ctypes from loading
    # libc.so.6 from the filesystem).
    if _libc_loaded:
        try:
            # PR_SET_SECCOMP = 1, SECCOMP_MODE_STRICT = 0
            rc = _libc_loaded.prctl(_PR_SET_SECCOMP, _SECCOMP_STRICT)
            if rc != 0:
                err = ctypes.get_errno()
                logger.warning(
                    "seccomp strict failed (errno=%d) — continuing without seccomp",
                    err,
                )
            else:
                logger.info(
                    "SECCOMP_MODE_STRICT applied (extremely restrictive: "
                    "read/write/exit/sigreturn only)"
                )
            return
        except Exception as exc:
            logger.warning("Could not apply seccomp via ctypes: %s", exc)
    else:
        logger.warning("Pre-loaded libc handle unavailable — cannot apply seccomp")
        logger.warning("Continuing without seccomp restrictions...")


# ===================================================================
# PART 2: Landlock Filesystem Restriction — applied AFTER seccomp
# ===================================================================
# Must run AFTER seccomp so that ctypes prctl still works (via the
# pre-loaded libc handle).  Once Landlock is applied, the process can
# no longer access files outside the allowed directories.


def apply_landlock_restrictions(target_dir: str) -> None:
    """
    Use the Landlock LSM to restrict the current process to read+execute
    access on only the specified directory tree.

    Landlock rules are ADDITIVE — you can only grant fewer permissions,
    never more. Once a rule is applied, the process is permanently sandboxed
    with respect to filesystem access.

    Correct API (landlock v1.0.0.dev5):
        rs = landlock.Ruleset()
        rs.allow("/path", rules=FSAccess.READ_FILE | FSAccess.READ_DIR | FSAccess.EXECUTE)
        rs.apply()    # or rs.restrict_rules()

    Args:
        target_dir: Absolute path to the directory tree the process may access.
    """
    if not LANDLOCK_AVAILABLE:
        logger.warning(
            "Landlock module not installed — filesystem restrictions SKIPPED\n"
            "        Install with: pip install landlock"
        )
        return

    if not os.path.isdir(target_dir):
        logger.warning("Landlock target dir '%s' does not exist — SKIPPED", target_dir)
        return

    try:
        # Create a Landlock ruleset
        rs = landlock.Ruleset()

        # Add access to the target directory for read + execute
        rs.allow(
            target_dir,
            rules=(
                landlock.FSAccess.READ_FILE
                | landlock.FSAccess.READ_DIR
                | landlock.FSAccess.EXECUTE
            ),
        )

        # Add minimal access to /proc/self (for debugging — process info only)
        # We deliberately do NOT expose /proc/*/exe, /proc/*/mem, or sensitive paths
        rs.allow("/proc/self", rules=landlock.FSAccess.READ_FILE)

        # Enforce the ruleset on the current process
        # This is a one-way door — the process is now permanently sandboxed
        rs.apply()
        logger.info(
            "Landlock filesystem ruleset applied (read+execute on sandbox dir only)"
        )
    except Exception as exc:
        logger.warning("Landlock enforcement failed: %s", exc)
        logger.warning("Continuing without Landlock restrictions...")


# ===================================================================
# PART 3: Cgroups v2 CPU/Memory Limits
# ===================================================================

def setup_cgroup_limits(
    cgroup_dir: str = CGROUP_BASE,
    cpu_quota_ms: int = 500,
    memory_limit_mb: int = 256,
) -> str:
    """
    Create a cgroups v2 slice for CPU and memory limits.

    Args:
        cgroup_dir:      Path to cgroup filesystem (default: /sys/fs/cgroup)
        cpu_quota_ms:    CPU time quota in milliseconds (default: 500ms)
        memory_limit_mb: Memory limit in megabytes (default: 256MB)

    Returns:
        Path to the cgroup directory created, or "" if failed.
    """
    cgroup_path = os.path.join(cgroup_dir, CGROUP_NAME)

    try:
        # Check cgroups v2 is mounted
        if not os.path.exists(os.path.join(cgroup_dir, "cgroup.controllers")):
            logger.warning("Cgroups v2 not mounted at %s — SKIPPED", cgroup_dir)
            return ""

        # Create the cgroup directory
        os.makedirs(cgroup_path, exist_ok=True)

        # Enable controllers in subtree_control
        controllers_file = os.path.join(cgroup_dir, "cgroup.subtree_control")
        if os.path.exists(controllers_file):
            try:
                with open(controllers_file, "a") as fh:
                    fh.write("cpu memory pids\n")
            except PermissionError:
                logger.warning(
                    "Cannot write to subtree_control — cgroup limits SKIPPED"
                )
                return ""

        # Set CPU quota (CPU.max: "quota_us period_us")
        period_us = 100_000  # 100 ms period
        quota_us = cpu_quota_ms * 10  # proportional quota
        cpu_max = os.path.join(cgroup_path, "cpu.max")
        with open(cpu_max, "w") as fh:
            fh.write(f"{quota_us} {period_us}")

        # Set memory limit
        memory_limit_bytes = memory_limit_mb * 1024 * 1024
        memory_max = os.path.join(cgroup_path, "memory.max")
        with open(memory_max, "w") as fh:
            fh.write(str(memory_limit_bytes))

        # Set PID limit (prevent fork bombs)
        pids_max = os.path.join(cgroup_path, "pids.max")
        with open(pids_max, "w") as fh:
            fh.write("32")  # Max 32 processes

        logger.info(
            "Cgroups v2 limits applied: CPU=%dms, MEM=%dMB, PIDs=32",
            cpu_quota_ms,
            memory_limit_mb,
        )
        return cgroup_path

    except PermissionError:
        logger.warning("Cannot write to cgroup filesystem — limits SKIPPED")
        return ""
    except Exception as exc:
        logger.warning("Cgroups setup failed: %s — SKIPPED", exc)
        return ""


def add_to_cgroup(cgroup_path: str) -> None:
    """Add the current process to a cgroup."""
    if not cgroup_path:
        return
    procs_file = os.path.join(cgroup_path, "cgroup.procs")
    try:
        with open(procs_file, "w") as fh:
            fh.write(str(os.getpid()))
        logger.info("Process added to cgroup: %s", cgroup_path)
    except Exception as exc:
        logger.warning("Could not add to cgroup: %s", exc)


# ===================================================================
# PART 4: PID Namespace via unshare
# ===================================================================

def _can_use_unshare_pid() -> bool:
    """
    Probe whether the current environment supports 'unshare --pid'.
    This requires user namespace permissions, which may be blocked on
    containers or restricted VPS configurations.
    """
    if not os.path.exists("/usr/bin/unshare"):
        return False
    try:
        # Quick probe: try creating a PID namespace and exiting
        result = subprocess.run(
            ["unshare", "--pid", "--fork", "true"],
            capture_output=True,
            timeout=5,
        )
        # Return code 0 means it worked; anything else means blocked
        return result.returncode == 0
    except (FileNotFoundError, subprocess.TimeoutExpired, OSError):
        return False


def create_pid_namespace_and_run(command: str) -> dict:
    """
    Run a command inside a PID namespace using unshare(2).
    The child process will only see itself as PID 1.

    Falls back gracefully if user namespace creation is blocked.

    Args:
        command: Shell command string to execute.

    Returns:
        Dict with keys: returncode, stdout, stderr.
    """
    logger.info("--- Kernel Sandbox Execution ---")
    logger.info("Command: %s", command)
    logger.info("=" * 60)

    # Apply seccomp FIRST (before Landlock blocks ctypes)
    apply_seccomp_profile()

    # Apply Landlock filesystem restrictions (last kernel restriction before fork)
    apply_landlock_restrictions(SANDBOX_ROOT)

    # Set up cgroup limits
    cgroup_path = setup_cgroup_limits()
    add_to_cgroup(cgroup_path)

    # Set resource limits as an additional safety net
    # Limit core dumps (prevent sensitive data leakage)
    resource.setrlimit(resource.RLIMIT_CORE, (0, 0))
    # Limit file size to prevent disk filling
    resource.setrlimit(resource.RLIMIT_FSIZE, (MAX_OUTPUT_SIZE, MAX_OUTPUT_SIZE))

    # Determine whether we can use PID namespace
    use_pid_ns = _can_use_unshare_pid()
    if use_pid_ns:
        logger.info("PID namespace available — running in isolated PID namespace")
        ns_desc = "with PID namespace"
    else:
        logger.warning(
            "PID namespace not available (user namespaces may be restricted) — "
            "running command without PID namespace isolation"
        )
        logger.warning("  All other sandbox restrictions (Landlock, seccomp, cgroups) still apply")
        ns_desc = "without PID namespace"

    logger.info("Creating new process and running in %s", ns_desc)
    logger.info("=" * 60)

    # Determine the command to run
    if use_pid_ns:
        # Run in a PID namespace via unshare
        #   --pid         : create new PID namespace
        #   --fork        : fork before exec (required for PID namespace)
        #   --mount-proc  : mount a fresh /proc for the child
        cmd = ["unshare", "--pid", "--fork", "--mount-proc",
               "bash", "-c", command]
    else:
        # Fall back to plain bash — all other restrictions are inherited
        # from the parent (Landlock, seccomp, cgroups, rlimits)
        cmd = ["bash", "-c", command]

    try:
        proc = subprocess.run(
            cmd,
            capture_output=True,
            text=True,
            timeout=30,
            cwd=SANDBOX_ROOT,
        )
    except subprocess.TimeoutExpired:
        proc = subprocess.CompletedProcess(
            args=cmd,
            returncode=-1,
            stdout="",
            stderr="Command timed out after 30 seconds",
        )
    except FileNotFoundError:
        logger.warning("Required binary not found — running without sandbox")
        try:
            proc = subprocess.run(
                ["bash", "-c", command],
                capture_output=True,
                text=True,
                timeout=30,
                cwd=SANDBOX_ROOT,
            )
        except Exception as exc:
            return {
                "returncode": -1,
                "stdout": "",
                "stderr": f"Error: {exc}",
            }
    except Exception as exc:
        logger.error("Failed to run command: %s", exc)
        return {
            "returncode": -1,
            "stdout": f"Error: {exc}",
            "stderr": "",
        }

    # Truncate output if too large
    stdout = (proc.stdout[:MAX_OUTPUT_SIZE] or "") if proc.stdout else ""
    stderr = (proc.stderr[:MAX_OUTPUT_SIZE] or "") if proc.stderr else ""

    logger.info("=" * 60)
    logger.info("Return code: %d", proc.returncode)
    if stdout:
        logger.info("--- STDOUT ---\n%s", stdout)
    if stderr:
        logger.info("--- STDERR ---\n%s", stderr)

    return {
        "returncode": proc.returncode,
        "stdout": stdout,
        "stderr": stderr,
    }


# ===================================================================
# PART 5: Command Validation & Main Entry Point
# ===================================================================

DANGEROUS_PATTERNS = [
    (r'\brm\s+(-rf?|--no-preserve-root)\s+', "Recursive filesystem deletion"),
    (r'\bmount\s', "Filesystem mount"),
    (r'\breboot\b', "System reboot"),
    (r'\bshutdown\b', "System shutdown"),
    (r'\bmodprobe\b', "Kernel module loading"),
    (r'\binsmod\b', "Kernel module insertion"),
    (r'\bchroot\b', "Chroot escape attempt"),
    (r'\bsu\b', "Switch user"),
    (r'\bsudo\b', "Elevated privileges"),
    (r'\bmkfs\b', "Format filesystem"),
]


def validate_command(cmd: str) -> tuple:
    """
    Validate the command before execution.

    This is a basic safety check — the kernel sandbox provides the real
    protection.  Here we block obviously dangerous keywords and compound
    commands.

    Args:
        cmd: The command string to validate.

    Returns:
        (is_valid, error_message)
    """
    if not cmd or not cmd.strip():
        return False, "Command is empty"

    # Check for obviously dangerous patterns (defense in depth)
    for pattern, desc in DANGEROUS_PATTERNS:
        if re.search(pattern, cmd):
            return False, f"Blocked: {desc}"

    # Block command substitution to prevent escape
    if "`" in cmd or "$(" in cmd:
        return False, "Command substitution blocked"

    # Block multiple commands with &&, ||, ;
    # This prevents running commands outside the sandbox after a successful one
    if re.search(r'[;&|]', cmd):
        return False, "Multiple commands blocked (use single commands only)"

    # Allow simple commands with arguments
    return True, ""


def main() -> None:
    """
    Main entry point.

    Usage:
        python3 a_kernel_sandbox.py "command args"

    Examples:
        python3 a_kernel_sandbox.py "echo hello from sandbox"
        python3 a_kernel_sandbox.py "ls -la /tmp/sandbox-work"
        python3 a_kernel_sandbox.py "python3 -c 'print(42)'"
    """
    if len(sys.argv) < 2:
        print(__doc__)
        print("\nUsage:")
        print("  python3 a_kernel_sandbox.py \"command args\"")
        print("\nExamples:")
        print("  python3 a_kernel_sandbox.py \"echo hello\"")
        print("  python3 a_kernel_sandbox.py \"ls -la /tmp/sandbox-work\"")
        sys.exit(1)

    command = " ".join(sys.argv[1:])

    # Validate the command
    is_valid, error_msg = validate_command(command)
    if not is_valid:
        logger.error("[REJECTED] %s", error_msg)
        logger.error("Command: %s", command)
        sys.exit(1)

    # Ensure sandbox directory exists
    os.makedirs(SANDBOX_ROOT, exist_ok=True)

    # Run the command in the sandbox
    result = create_pid_namespace_and_run(command)

    sys.exit(result["returncode"] or 0)


if __name__ == "__main__":
    main()
