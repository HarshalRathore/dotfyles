---
title: "Authentication vs Authorization for Agents"
category: concepts
tags:
  - authentication
  - authorization
  - agent-security
  - access-control
  - security
aliases:
  - authn vs authz
  - agent authentication
  - agent authorization
sources:
  - "AIEF2025 - How we hacked YC Spring 2025 batch's AI agents — Rene Brandel, Casco - https://www.youtube.com/watch?v=kv-QAuKWllQ"
summary: "Agent security requires two distinct checks: authentication (valid token) and authorization (access control matrix matching requestor to resource). Authentication alone is insufficient."
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
  - target: "[[concepts/idor-insecure-direct-object-reference|IDOR]]"
    type: related_to
  - target: "[[concepts/access-control-matrix|Access Control Matrix]]"
    type: related_to
  - target: "[[concepts/oauth-2.0|OAuth 2.0]]"
    type: related_to
---

# Authentication vs Authorization for Agents

Agent security requires two distinct and separate checks: **authentication** (verifying the token is valid) and **authorization** (verifying the requestor has permission to access the specific resource). ^[extracted]

## The Two Checks

1. **Authentication** — "Is this token valid?" — The basic security check that most systems implement correctly
2. **Authorization** — "Does this user have permission to access THIS specific resource?" — The check that is commonly missing and leads to IDOR vulnerabilities ^[extracted]

## The Access Control Matrix

Authorization should be enforced via a role-level access control matrix that checks whether the requesting user's permissions match the resource being accessed. This is the fundamental fix for IDOR vulnerabilities. ^[extracted]

## Why Both Matter

Authentication alone is insufficient because it only validates identity, not permissions. An agent with a valid token can still access resources belonging to other users if authorization checks are missing — this is the essence of [[concepts/idor-insecure-direct-object-reference|IDOR]]. ^[extracted]

## In the Agent Context

Since agents act as users, the same two-check model applies: the agent's token must be valid (authentication) AND the agent must have permission to access the specific resource on behalf of its user (authorization). ^[extracted]

## Related

- [[concepts/agent-security]] — Both checks are required for agent security
- [[concepts/idor-insecure-direct-object-reference]] — IDOR occurs when only authentication is checked
- [[concepts/access-control-matrix]] — The authorization mechanism
- [[concepts/oauth-2.0]] — OAuth provides scoped tokens that encode authorization
