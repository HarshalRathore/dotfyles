---
title: "Agent Terminal"
category: concepts
tags: [agent-tools, terminal, command-execution, long-running-processes, parallel-execution]
summary: How coding agents interact with the terminal: challenges with long-running commands, parallel execution, background processes, and server-curl patterns. Text-in-text-out is deceptively complex.
sources:
  - "AIEF2025 - Software Development Agents: What Works and What Doesn't - Robert Brennan, OpenHands - https://www.youtube.com/watch?v=o_hhkJtlbSs"
provenance:
  extracted: 0.90
  inferred: 0.10
  ambiguous: 0.00
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/agent-tools|Agent Tools]]"
    type: extends
  - target: "[[concepts/agent-sandboxing|Agent Sandboxing]]"
    type: related_to
  - target: "[[concepts/agent-autonomy|Agent Autonomy]]"
    type: related_to
---

# Agent Terminal

How coding agents interact with the system terminal. While text-in-text-out seems simple, there are significant design challenges when an LLM drives command execution. ^[extracted]

## Key Challenges

### Long-Running Commands

When a command produces no stdout for an extended period:

- **Kill it?** Risk losing useful output that will arrive later
- **Wait?** Agent is blocked, potentially wasting time
- **Timeout?** Need configurable thresholds

### Parallel Execution

Running multiple commands simultaneously:

- Useful for independent operations (e.g., starting a dev server + running tests)
- Requires coordination to avoid resource conflicts
- Output interleaving must be managed

### Background Processes

The server-curl pattern is common:

1. Start a server in the background
2. Wait for it to be ready
3. Run curl or other commands against it
4. Shut down the server

This requires the agent to manage process lifecycle, not just issue commands. ^[extracted]

### Command Sequencing

Commands often depend on previous outputs:

- Parse output from one command
- Feed it as input to another
- Handle errors and retries

## Design Implications

The terminal is not just a pipe — it is a stateful environment the agent must reason about. Good terminal implementations give the agent visibility into process state, output streams, and exit codes. ^[inferred]

## Related

- [[concepts/agent-tools|Agent Tools]] — The three core agent tools
- [[concepts/agent-sandboxing|Agent Sandboxing]] — Terminal execution in containers
- [[concepts/agent-autonomy|Agent Autonomy]] — Terminal access requires trust boundaries
- [[entities/openhands|OpenHands]] — Implements terminal with Docker sandboxing
