---
title: "Agent Security"
category: concepts
tags:
  - agent-security
  - security
  - ai-security
  - red-teaming
  - vulnerability
aliases:
  - agentic security
  - AI agent security
sources:
  - "AIEF2025 - How we hacked YC Spring 2025 batch's AI agents — Rene Brandel, Casco - https://www.youtube.com/watch?v=kv-QAuKWllQ"
summary: "Security posture for AI agent systems — examining all attack vectors across the agent stack, not just prompt injection. Includes IDOR, code sandbox abuse, and authorization gaps."
provenance:
  extracted: 0.70
  inferred: 0.25
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
  - target: "[[concepts/idor-insecure-direct-object-reference|IDOR]]"
    type: related_to
  - target: "[[concepts/agent-as-user|Agents Act as Users]]"
    type: related_to
  - target: "[[concepts/system-prompt-security|System Prompt Security]]"
    type: related_to
---

# Agent Security

**Agent security** refers to the comprehensive security posture of AI agent systems — examining all attack vectors across the entire agent architecture, not just prompt injection at the LLM boundary. ^[inferred]

## Beyond Prompt Injection

Traditional LLM security discussions focus on prompt injection and harmful content generation. Agent security broadens this view to examine every arrow in the system diagram, where real damage typically occurs. ^[extracted]

## Common Attack Vectors

- **Cross-user data access** — IDOR vulnerabilities allowing one user's agent to access another user's data through predictable resource identifiers
- **Code execution sandbox abuse** — Exploiting agent code tools by inverting system prompt constraints, running code continuously, or probing for restricted capabilities
- **System prompt inversion** — Manipulating the agent to do the opposite of what its system prompt instructs
- **Authorization gaps** — Agents given service-level permissions instead of user-level access control

## Core Principle: Agents as Users

Agents should be treated as users, not API servers. They should not determine authorization patterns, should not act with service-level permissions, and should validate and sanitize inputs and outputs just like any user-facing application. ^[extracted]

## Related

- [[concepts/prompt-injection]] — Traditional LLM security concern
- [[concepts/idor-insecure-direct-object-reference]] — Cross-user data access vulnerability
- [[concepts/agent-as-user]] — Agents should be treated as users, not services
- [[concepts/red-teaming]] — Methodology for discovering agent vulnerabilities
