---
title: "Agent Autonomy Spectrum"
category: concepts
tags:
  - agent
  - autonomy
  - safety
  - guardrails
  - human-in-the-loop
aliases:
  - agent autonomy levels
  - autonomy spectrum
sources:
  - "AIEF2025 - OpenAI on Securing Code-Executing AI Agents — Fouad Matin (Codex, Agent Robustness) - https://www.youtube.com/watch?v=w7IMuYsBNr8"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/yolo-structured-spectrum-vibe-coding|YOLO-Structured Spectrum]]"
    type: related_to
  - target: "[[concepts/agent-sandboxing|Agent Sandboxing]]"
    type: requires
  - target: "[[concepts/agent-autonomy|Agent Autonomy]]"
    type: extends
---

# Agent Autonomy Spectrum

The agent autonomy spectrum describes the range of possible oversight levels for AI agents, from fully uncontrolled ("YOLO") to fully human-approved. The challenge is finding the right balance — avoiding both no oversight and micromanagement. ^[extracted]

## The Spectrum

| Mode | Description | Risk |
|------|-------------|------|
| **YOLO** | Agent executes everything without any human review | Highest risk of damage |
| **Sandboxed auto** | Agent runs in isolated environment with auto-approved operations | Medium risk, contained |
| **Review diffs** | Agent produces PRs/diffs for human review before merge | Lower risk, human judgment |
| **Approve commands** | Human approves each individual operation | Lowest risk, highest friction |
| **Manual** | Human writes all code, agent only assists | No autonomous risk |

## The Balancing Problem

As described by [[entities/fouad-matin|Fouad Matin]] at OpenAI, the key challenge is avoiding two extremes: ^[extracted]

> "Avoiding the YOLO mode on one end to having to approve every single `ls` command is not practical either."

- **YOLO mode** — Agent has full autonomy with no oversight. Fast but dangerous if the agent makes a mistake or is exploited.
- **Full approval** — Human must approve every single operation. Safe but impractical — no one wants to click "approve" for every command.

## Practical Implementation

The practical solution lies in the middle: ^[extracted]

1. **Sandbox by default** — Agent operates in an isolated environment where mistakes are contained
2. **Auto-approve safe operations** — Common, low-risk operations (running tests, reading files) are pre-approved
3. **Review significant changes** — Code changes, file deletions, network calls to unknown domains require review
4. **Human review of final output** — PRs or diffs reviewed before merging

## Related

- [[concepts/agent-autonomy|Agent Autonomy]] — The broader concept of agent decision-making authority
- [[concepts/yolo-structured-spectrum-vibe-coding|YOLO-Structured Spectrum]] — Related spectrum for coding approaches
- [[concepts/agent-sandboxing|Agent Sandboxing]] — Technical isolation that enables safe autonomy
- [[concepts/holistic-ai-sdlc|Holistic AI SDLC]] — Where autonomy decisions fit in the development lifecycle
