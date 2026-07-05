---
title: "IDOR — Insecure Direct Object Reference"
category: concepts
tags:
  - idor
  - security
  - authorization
  - access-control
  - vulnerability
  - api-security
aliases:
  - Insecure Direct Object Reference
  - IDOR vulnerability
sources:
  - "AIEF2025 - How we hacked YC Spring 2025 batch's AI agents — Rene Brandel, Casco - https://www.youtube.com/watch?v=kv-QAuKWllQ"
summary: "IDOR is an access control flaw where predictable resource identifiers (user IDs, document IDs) allow unauthorized data access when only token validity is checked, not resource ownership."
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
  - target: "[[concepts/access-control-matrix|Access Control Matrix]]"
    type: related_to
  - target: "[[concepts/authentication-vs-authorization|Authentication vs Authorization]]"
    type: related_to
---

# IDOR — Insecure Direct Object Reference

**IDOR (Insecure Direct Object Reference)** is an access control vulnerability where an application exposes internal object identifiers (user IDs, document IDs, chat IDs) that can be guessed or enumerated to access resources belonging to other users. ^[extracted]

## How It Works

The vulnerability occurs when an API validates that a request token is valid but does not verify that the requesting user has permission to access the specific resource identified. The implicit assumption is that resource identifiers cannot be guessed — which is often false. ^[extracted]

## Agent-Specific IDOR Pattern

In the context of AI agents, IDOR manifests when an agent's system prompt reveals tools for looking up data by ID (user info by ID, documents by ID, etc.). Once the attacker discovers a valid resource identifier — for example, from a URL in a product demo video — they can use the agent's own tools to access that resource and traverse interconnected data. ^[extracted]

The chain of interconnected IDs (user ID → chat ID → document ID) allows an attacker to traverse the entire system from a single known identifier. ^[extracted]

## Fix

The fix requires two checks:

1. **Authentication** — Verify the token is valid
2. **Authorization** — Verify the requesting user has permission to access the specific resource, typically via a role-level access control matrix ^[extracted]

## Related

- [[concepts/agent-security]] — Agent security encompasses IDOR prevention
- [[concepts/access-control-matrix]] — Access control matrix as the fix for IDOR
- [[concepts/authentication-vs-authorization]] — Authentication alone is insufficient
