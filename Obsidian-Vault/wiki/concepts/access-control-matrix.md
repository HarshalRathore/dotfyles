---
title: "Access Control Matrix"
category: concepts
tags:
  - access-control
  - authorization
  - security
  - agent-security
  - rbac
aliases:
  - access control matrix
  - permission matrix
sources:
  - "AIEF2025 - How we hacked YC Spring 2025 batch's AI agents — Rene Brandel, Casco - https://www.youtube.com/watch?v=kv-QAuKWllQ"
summary: "An access control matrix is a role-level permission structure that maps users to resources and operations. It is the fundamental mechanism for preventing IDOR and enforcing authorization."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.80
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
  - target: "[[concepts/authentication-vs-authorization|Authentication vs Authorization]]"
    type: related_to
---

# Access Control Matrix

An **access control matrix** is a role-level permission structure that maps users (or agents) to resources and the operations they can perform on each resource. It is the fundamental mechanism for enforcing authorization and preventing [[concepts/idor-insecure-direct-object-reference|IDOR]] vulnerabilities. ^[extracted]

## How It Works

The access control matrix defines:

- **Subjects** — Users, agents, or roles making requests
- **Objects** — Resources being accessed (documents, user profiles, chat sessions)
- **Permissions** — What operations each subject can perform on each object

When a request arrives, the system checks the matrix to verify that the requesting subject has permission for the specific object and operation. ^[extracted]

## Role-Level Security

The speaker emphasized role-level security as the practical implementation of access control matrices in the modern SaaS era. Instead of checking permissions per-user, systems define roles (admin, editor, viewer) and assign users to roles, with the matrix mapping roles to resource permissions. ^[extracted]

## In the Agent Context

Since agents act as users, the access control matrix must account for agent-permissions separately from human-user permissions. An agent operating on behalf of a user should have the same permissions as that user, not service-level permissions. ^[extracted]

## Related

- [[concepts/agent-security]] — Access control matrices prevent IDOR in agent systems
- [[concepts/idor-insecure-direct-object-reference]] — IDOR is prevented by proper access control
- [[concepts/authentication-vs-authorization]] — Authorization is enforced via the access control matrix
