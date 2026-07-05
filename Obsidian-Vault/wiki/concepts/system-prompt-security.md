---
title: "System Prompt Security"
category: concepts
tags:
  - system-prompt
  - security
  - prompt-engineering
  - adversarial
  - agent-security
aliases:
  - system prompt security
  - prompt security
sources:
  - "AIEF2025 - How we hacked YC Spring 2025 batch's AI agents — Rene Brandel, Casco - https://www.youtube.com/watch?v=kv-QAuKWllQ"
summary: "System prompts reveal agent capabilities and constraints. Attackers extract system prompts to discover tool definitions and invert instructions. The prompt itself is not a vulnerability but an intelligence source for attackers."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/prompt-injection|Prompt Injection]]"
    type: related_to
  - target: "[[concepts/agent-security|Agent Security]]"
    type: related_to
  - target: "[[concepts/prompt-engineering-is-dead|Prompt Engineering Is Dead]]"
    type: related_to
---

# System Prompt Security

**System prompt security** concerns the risks of exposing or extracting an agent's system prompt, which reveals its capabilities, constraints, and behavioral instructions. While the system prompt itself causes no direct damage, it serves as an intelligence source for attackers. ^[extracted]

## System Prompts as Attack Intelligence

When attackers extract a system prompt, they gain:

- **Tool definitions** — What the agent can do (code execution, data access, etc.)
- **Constraints** — What the agent is restricted from doing (language restrictions, file paths, function calls)
- **Behavioral patterns** — How the agent responds to different inputs

This intelligence enables targeted exploitation of the agent's capabilities. ^[extracted]

## System Prompt Inversion

A common attack pattern: attackers invert the system prompt's instructions. If the prompt says "run code once and suppress output," the attacker makes it "run code continuously and output everything." The system prompt defines what the developer intended — the attacker does the opposite. ^[extracted]

## Key Insight

The system prompt itself is not a vulnerability. The vulnerabilities are in the downstream tool implementations, authorization logic, and sandbox configurations that the system prompt references. ^[extracted]

## Related

- [[concepts/prompt-injection]] — Prompt injection attacks target the LLM, not the system prompt
- [[concepts/agent-security]] — System prompt security is one vector in agent security
- [[concepts/system-prompt-inversion|System Prompt Inversion]] — Attacking by inverting instructions
