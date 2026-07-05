---
title: "Agent Preparedness Framework"
category: concepts
tags:
  - agent-security
  - safety
  - guardrails
  - openai
  - framework
aliases:
  - agent safety framework
  - preparedness framework
sources:
  - "AIEF2025 - OpenAI on Securing Code-Executing AI Agents — Fouad Matin (Codex, Agent Robustness) - https://www.youtube.com/watch?v=w7IMuYsBNr8"
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/agent-sandboxing|Agent Sandboxing]]"
    type: includes
  - target: "[[concepts/prompt-injection|Prompt Injection]]"
    type: defends_against
  - target: "[[concepts/holistic-ai-sdlc|Holistic AI SDLC]]"
    type: related_to
  - target: "[[concepts/red-teaming|Red Teaming]]"
    type: related_to
---

# Agent Preparedness Framework

The Agent Preparedness Framework is OpenAI's approach to ensuring safe deployment of code-executing AI agents, both internally and externally. It emphasizes safeguards to prevent misalignment at large-scale deployment. ^[extracted]

## Core Principles

The framework is built on three layered safeguards: ^[extracted]

### 1. Sandboxing

Give the agent its own isolated computing environment. This is the single most important safety control:

- **Isolated containers** — The agent runs in a fully separated environment (as used in Codex and ChatGPT)
- **OS-level sandboxing** — For local execution: macOS Seatbelt, Linux Seccomp + Landlock
- **App-level sandboxing** — Restricting the agent to specific directories and operations

The gold standard: the agent produces a PR at the end rather than making direct changes. ^[extracted]

### 2. Internet Access Controls

Limit or disable internet access to prevent the two highest-probability attack vectors: prompt injection and data exfiltration. ^[extracted]

Two implementation patterns: ^[extracted]

- **Auto mode** — Agent can only read/write in its run directory and make network calls for auto-approved commands only
- **Configurable allowlists** — Specify which domains and HTTP methods are permitted, with explicit risk warnings

### 3. Human Review

Review agent operations or final diffs before they take effect:

- **GitHub PR code review** — Agent produces diffs that humans review
- **Approvals and confirmations** — Human-in-the-loop for sensitive operations
- **Balancing act** — Avoid both "YOLO mode" (no oversight) and approving every single command (impractical)

## Key Insight: Misalignment at Scale

The framework's central concern is preventing misalignment when agents are deployed at large scale. ^[extracted] The same safeguards that OpenAI applies to Codex are the ones that organizations should consider when deploying coding agents in their workplaces. ^[extracted]

## Related

- [[concepts/agent-sandboxing|Agent Sandboxing]] — The primary isolation mechanism
- [[concepts/agent-robustness|Agent Robustness]] — Broader reliability concerns
- [[concepts/red-teaming|Red Teaming]] — Testing agents against adversarial scenarios
- [[concepts/holistic-ai-sdlc|Holistic AI SDLC]] — End-to-end AI development lifecycle
