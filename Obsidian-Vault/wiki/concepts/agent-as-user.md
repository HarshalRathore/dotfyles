---
title: "Agents Act as Users"
category: concepts
tags:
  - agent-security
  - authorization
  - access-control
  - agent-design
  - security-patterns
aliases:
  - agents as users
  - agent-permission-model
  - agents-not-services
sources:
  - "AIEF2025 - How we hacked YC Spring 2025 batch's AI agents — Rene Brandel, Casco - https://www.youtube.com/watch?v=kv-QAuKWllQ"
summary: "Agents should be treated as users, not API servers. They should operate with user-level permissions, validate inputs, sanitize outputs, and follow the same access control rules as human users."
provenance:
  extracted: 0.90
  inferred: 0.05
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
  - target: "[[concepts/authorization-server|Authorization Server]]"
    type: related_to
  - target: "[[concepts/agent-architecture|Agent Architecture]]"
    type: related_to
---

# Agents Act as Users

**Agents act as users** is a security principle stating that AI agents should be treated as users of a system, not as API servers or services. This principle governs how agents should be authorized, what permissions they should have, and how their inputs and outputs should be handled. ^[extracted]

## The Developer Mistake

Developers often give agents service-level permissions because "it runs on a server." This pattern matching — treating any server-side code as a service — leads to agents with overly broad access that bypasses user-level authorization checks. ^[extracted]

## Three Rules for Agent Permissions

1. **Agents should not determine authorization patterns** — The LLM should not decide what access is appropriate; authorization should be enforced by the application layer
2. **Agents should not act with service-level permissions** — Agents should operate with the same scoped permissions as the human users they represent
3. **Agents should validate and sanitize inputs and outputs** — Just like any user-facing application, agents must sanitize what they receive and what they produce ^[extracted]

## Implications

This principle means that all user-level access control patterns — [[concepts/idor-insecure-direct-object-reference|IDOR prevention]], [[concepts/oauth-2.0|OAuth scoping]], role-based access control, and input validation — apply equally to agents. ^[extracted]

## Related

- [[concepts/agent-security]] — Agent security depends on proper user-level permissions
- [[concepts/authorization-server]] — Authorization servers enforce the user-level boundary
- [[concepts/agent-architecture]] — Agent architecture decisions affect permission model
