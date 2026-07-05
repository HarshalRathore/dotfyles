---
title: "Red Teaming AI Agents"
category: concepts
tags:
  - red-teaming
  - security
  - agent-security
  - adversarial-testing
  - vulnerability-discovery
aliases:
  - agent red teaming
  - AI agent red team
  - red teaming agents
sources:
  - "AIEF2025 - How we hacked YC Spring 2025 batch's AI agents — Rene Brandel, Casco - https://www.youtube.com/watch?v=kv-QAuKWllQ"
  - "AIEF2025 - Vibe Coding with Confidence — Itamar Friedman, Qodo - https://www.youtube.com/watch?v=n991Yxo1aOI"
summary: "Systematic adversarial testing of AI agents to discover security vulnerabilities. Methodology includes system prompt extraction, tool analysis, and exploitation within constrained time windows."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-04
updated: 2026-07-05
relationships:
  - target: "[[concepts/agent-security|Agent Security]]"
    type: related_to
  - target: "[[concepts/prompt-injection|Prompt Injection]]"
    type: related_to
  - target: "[[entities/casco|Casco]]"
    type: practiced_by
---

# Red Teaming AI Agents

**Red teaming AI agents** is the systematic adversarial testing of AI agent systems to discover security vulnerabilities before malicious actors exploit them. It extends traditional red teaming beyond prompt injection to cover the full agent attack surface. ^[extracted]

## Methodology

A structured agent red team engagement follows these steps:

1. **Identify live agents** — Determine which agents are deployed and accessible
2. **Extract system prompts** — Obtain the agent's behavioral instructions and capabilities
3. **Analyze tool definitions** — Understand what each tool can do (data access, code execution, etc.)
4. **Exploit identified vulnerabilities** — Test against common attack patterns (IDOR, sandbox abuse, prompt inversion)

The Casco team demonstrated this methodology by hacking 7 of 16 YC Spring 2025 batch agents within 30 minutes each. ^[extracted]

## Scope Beyond Prompt Injection

Traditional AI red teaming focuses on prompt injection and harmful content. Agent red teaming broadens the scope to include:

- **Cross-user data access** — IDOR and permission escalation
- **Code execution abuse** — Sandbox escape and resource exhaustion
- **System prompt inversion** — Manipulating agent behavior
- **Downstream authorization gaps** — Service-level permissions where user-level are needed ^[extracted]

## Related

- [[concepts/agent-security]] — The domain being tested
- [[concepts/prompt-injection]] — One vector among many

- [[concepts/idor-insecure-direct-object-reference]] — Common vulnerability discovered through red teaming

## Red Team in AI Coding

Friedman (Qodo) introduced a framing of AI coding tools as either blue team (code generation) or red team (reviewing, testing, quality assurance). In this context, the red team acts as a tech lead perspective — reviewing code and having fitting technology for that — rather than just generating code. Qodo's focus is on the red team, providing AI tools that act as reviewers and testers. This addresses a key limitation of [[concepts/vibe-coding|vibe coding]]: the lack of confidence in generated code. ^[extracted]
