---
title: "Agent Sandboxing"
category: concepts
tags: [agent-security, sandboxing, docker, least-privilege, credential-scoping]
summary: Security model for autonomous coding agents: Docker container isolation, scoped credentials, and principle of least privilege. Agents running unattended need strong isolation.
sources:
  - "AIEF2025 - Software Development Agents: What Works and What Doesn't - Robert Brennan, OpenHands - https://www.youtube.com/watch?v=o_hhkJtlbSs"
  - "AIEF2025 - OpenAI on Securing Code-Executing AI Agents — Fouad Matin (Codex, Agent Robustness) - https://www.youtube.com/watch?v=w7IMuYsBNr8"
provenance:
  extracted: 0.88
  inferred: 0.12
  ambiguous: 0.00
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/agent-security|Agent Security]]"
    type: extends
  - target: "[[concepts/agent-tools|Agent Tools]]"
    type: related_to
  - target: "[[entities/codex|Codex CLI]]"
    type: related_to
---

# Agent Sandboxing

Security and isolation model for autonomous coding agents that operate without continuous human supervision. ^[extracted]

## Why Sandboxing Matters

Agents running autonomously for 5–15 minutes without human oversight need strong isolation:

- An agent could accidentally run destructive commands (`rm -rf`, database drops)
- An agent could be exploited if the LLM is manipulated
- Agents may have access to sensitive credentials

## Docker Container Isolation

The primary isolation mechanism:

- All agents run inside Docker containers by default
- Containers are fully separated from the host workstation
- No risk of the agent affecting the host (e.g., `rm -rf ~/`)
- Clean environment per agent run ^[extracted]
## OS-Level Sandboxing

Beyond Docker containers, OS-level sandboxing provides additional isolation layers: ^[extracted]

### macOS: Seatbelt
- Apple's sandboxing language, bundled into macOS since Leopard
- Used by [[entities/codex|Codex CLI]] for local agent sandboxing
- Policy heavily inspired by Chromium's Seatbelt sandboxing approach
- Written in Rust for safety ^[extracted]

### Linux: Seccomp + Landlock
- **Seccomp** — System call filtering that restricts which kernel calls the agent can make
- **Landlock** — Linux capability for creating unprivileged sandboxes
- Together they prevent privilege escalation and sandbox escape
- Used by [[entities/codex|Codex CLI]] for local agent sandboxing ^[extracted]

## Auto-Approve Sandbox Pattern

[[entities/codex|Codex CLI]] implements an "auto mode" that defines a sandbox where the agent can: ^[extracted]

- Read and write files only within the directory it was run in
- Make network calls only for auto-approved commands
- Run tests (PyTest, NPM test) without risking second-order consequences

This balances agent utility with safety by pre-approving common, low-risk operations while restricting sensitive ones. ^[inferred]

## Credential Scoping

When agents need third-party API access:

- GitHub tokens must be scoped to minimum required permissions
- AWS credentials must follow least privilege
- No broad admin-level tokens for agent use ^[extracted]

## Principle of Least Privilege

Every credential and access grant to an agent should be:

1. **Minimum scope** — Only the permissions needed for the specific task
2. **Time-limited** — Short-lived tokens where possible
3. **Task-specific** — Credentials that only work for the intended operation

## Related

- [[concepts/agent-security|Agent Security]] — Broader security considerations for agents
- [[concepts/agent-tools|Agent Tools]] — Terminal execution requires sandboxing
- [[concepts/agent-autonomy|Agent Autonomy]] — More autonomy requires more isolation
- [[entities/openhands|OpenHands]] — Implements Docker sandboxing by default
