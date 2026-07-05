---
title: "OpenAI on Securing Code-Executing AI Agents — Fouad Matin (Codex, Agent Robustness)"
category: references
tags:
  - aief2025
  - agent-security
  - agent-sandboxing
  - prompt-injection
  - data-exfiltration
  - codex
  - agent-robustness
  - openai
aliases:
  - aief2025-securing-code-executing-agents
  - fouad-matin-agent-security
sources:
  - "AIEF2025 - OpenAI on Securing Code-Executing AI Agents — Fouad Matin (Codex, Agent Robustness) - https://www.youtube.com/watch?v=w7IMuYsBNr8"
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[entities/fouad-matin|Fouad Matin]]"
    type: related_to
  - target: "[[entities/openai|OpenAI]]"
    type: related_to
  - target: "[[entities/codex|Codex CLI]]"
    type: related_to
  - target: "[[concepts/code-executing-agents|Code-Executing Agents]]"
    type: related_to
  - target: "[[concepts/agent-sandboxing|Agent Sandboxing]]"
    type: related_to
  - target: "[[concepts/prompt-injection|Prompt Injection]]"
    type: related_to
---

# OpenAI on Securing Code-Executing AI Agents — Fouad Matin (AIEF2025)

Fouad Matin from OpenAI presented on safety and security for code-executing AI agents, drawing from his experience building [[entities/codex|Codex CLI]] and working on agent robustness in post-training.

## Key Themes

### The Shift to Code-Executing Agents

Every frontier research lab is focusing on pushing coding benchmarks, usability, and deployability — making agents good at writing AND executing code. ^[extracted] The new constraint isn't whether models can do things, but what they should be allowed to do and what guardrails apply when they operate in user environments. ^[extracted]

Code execution is useful beyond SWE tasks: in multimodal reasoning, agents autonomously run code to perform OCR on images or crop images without being explicitly instructed to do so. ^[extracted] This represents a fundamental shift from complex inner-loop chains (determine task → load specific prompt → chain loops → ask model if done → respond) to a single model that decides when to use tools and write/run code directly. ^[extracted] Matin notes this is essentially what security calls "RCE" (remote code execution). ^[extracted]

### Agent Failure Modes

Four primary ways agents go wrong: ^[extracted]

1. **Prompt injection** — The highest priority security risk. Untrusted content (e.g., GitHub issue comments) can leak into the agent's core decision loop.
2. **Data exfiltration** — The model sends sensitive data outside the sandbox, typically via network calls.
3. **Agent mistakes** — Installing malicious packages unintentionally, writing vulnerable code, or performing destructive operations.
4. **Privilege escalation / sandbox escape** — The agent breaks out of its isolation boundary.

### OpenAI's Preparedness Framework

OpenAI's safety approach centers on three core safeguards: ^[extracted]

**1. Sandboxing the agent** — The gold standard is giving the agent its own computer. Codex and ChatGPT spin up fully isolated containers and produce PRs at the end. For local execution (Codex CLI), they use:

- **macOS**: Seatbelt sandboxing policy (inspired by Chromium's approach), written in Rust
- **Linux**: Seccomp + Landlock for unprivileged sandboxing that prevents privilege escalation

**2. Disabling or limiting internet access** — This is the highest-probability vector for prompt injection and data exfiltration. The model reads docs or GitHub issues, and untrusted content in comments can inject into the core loop. Two methods:

- **Codex CLI auto mode**: Defines a sandbox where the agent can only read/write files in its run directory and make network calls only for auto-approved commands
- **ChatGPT/Codex**: Configurable allowlists that specify which domains and even HTTP methods are permitted

**3. Human review of agent operations** — Reviewing diffs (via GitHub PR code review) or requiring approvals/confirmations. The key challenge is avoiding both "YOLO mode" (no oversight) and approving every single command (impractical).

## Key Quotes

> "The new constraint isn't just can these models do things, but actually what should they be able to do, and what should the guardrails be when you allow them to work in your environments." ^[extracted]

> "Ensuring that humans stay in control of these systems is one of the strongest mitigations that we have. But of course, no one wants to sit there and keep clicking approved, so avoiding the YOLO mode on one end to having to approve every single LS command is not practical either." ^[extracted]

## Related

- [[concepts/code-executing-agents|Code-Executing Agents]] — The paradigm shift from code-writing to code-executing
- [[concepts/agent-sandboxing|Agent Sandboxing]] — Isolation techniques discussed in depth
- [[concepts/prompt-injection|Prompt Injection]] — Primary attack vector for agents
- [[entities/fouad-matin|Fouad Matin]] — Speaker, OpenAI security and agent robustness
