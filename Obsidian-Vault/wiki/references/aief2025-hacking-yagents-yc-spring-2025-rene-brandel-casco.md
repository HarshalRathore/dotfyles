---
title: "How we hacked YC Spring 2025 batch's AI agents — Rene Brandel, Casco"
category: references
tags:
  - aief2025
  - agent-security
  - red-teaming
  - y-combinator
  - idor
  - code-execution
  - system-prompt
aliases:
  - AIEF2025 - Hacking YC Agents
  - Casco YC Agent Hack
sources:
  - "AIEF2025 - How we hacked YC Spring 2025 batch's AI agents — Rene Brandel, Casco - https://www.youtube.com/watch?v=kv-QAuKWllQ"
summary: "Casco CEO Rene Brandel demonstrates hacking 7 of 16 YC Spring 2025 batch agents in 30 minutes each, revealing three common agent security vulnerabilities: IDOR, code sandbox abuse, and prompt inversion."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/agent-security|Agent Security]]"
    type: related_to
  - target: "[[concepts/idor-insecure-direct-object-reference|IDOR]]"
    type: related_to
  - target: "[[concepts/agent-as-user|Agents Act as Users]]"
    type: related_to
  - target: "[[entities/casco|Casco]]"
    type: created_by
  - target: "[[entities/rene-brandel|Rene Brandel]]"
    type: presented_by
---

# How we hacked YC Spring 2025 batch's AI agents — Rene Brandel, Casco

Rene Brandel, CEO of [[entities/casco|Casco]], presented at AIEF2025 a systematic security audit of AI agents deployed in the Y Combinator Spring 2025 batch. His team hacked 7 out of 16 agents within 30 minutes each, revealing three pervasive vulnerability classes.

## Methodology

The attack methodology was straightforward:

1. **Extract system prompts** — Set a 30-minute timer and identify which agents were live
2. **Analyze tool definitions** — Determine what each agent's tools could do (access data, run code, etc.)
3. **Exploit identified vulnerabilities** — Test each agent against common attack patterns

The approach was so effective it generated the second highest upvoted launch post in YC history. ^[extracted]

## Three Common Vulnerabilities Discovered

### 1. Cross-User Data Access via IDOR

One agent leaked its system prompt, which revealed tools for looking up user info by ID, documents by ID, and other data access operations. The agent used [[concepts/idor-insecure-direct-object-reference|Insecure Direct Object Reference]] — validating that the token was valid but not checking whether the requesting user had permission to access the specific resource. ^[extracted]

By finding a user ID in a product demo video's URL bar, the team could enumerate personal information (email, nickname) and traverse interconnected resources (user IDs → chat IDs → document IDs) across the entire system. ^[extracted]

### 2. Code Execution Sandbox Abuse

Many agents include code execution tools (Python sandboxes, calculator generators, etc.). The speaker noted that developers make up 37% of Claude's usage despite being only 3.4% of the world population, and many agents create code on demand. ^[extracted]

Attackers exploited these sandboxes by inverting the system prompt — running code continuously instead of once, outputting code to the user instead of suppressing it, and probing for restricted file paths and function calls. ^[extracted]

### 3. System Prompt Inversion

A pattern across multiple agents: the system prompt defines what the agent should and should not do, but attackers simply invert these instructions. ^[extracted] The system prompt itself causes no direct damage, but it reveals the agent's tool capabilities and constraints, enabling targeted exploitation. ^[extracted]

## Key Principle: Agents Act as Users

A critical insight from the audit: agents are not API servers — they act like users. Developers often give agents service-level permissions because "it runs on a server," but this is wrong. Everything that applies to user-level access control applies to agents too. ^[extracted]

The fix requires both authentication (valid token) and authorization (access control matrix checking requestor-resource alignment), with role-level security enforced downstream. ^[extracted]

## Sources

- AIEF2025 - How we hacked YC Spring 2025 batch's AI agents — Rene Brandel, Casco. https://www.youtube.com/watch?v=kv-QAuKWllQ
