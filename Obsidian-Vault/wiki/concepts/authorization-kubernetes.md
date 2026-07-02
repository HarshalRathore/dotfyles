---
type: concept
title: "Authorization (Kubernetes)"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "🔐-security-in-kubernetes_0a37d1"
tags:
  - security
aliases:
  - Kubernetes Access Control
---
# Authorization (Kubernetes)

## Definition
Authorization in Kubernetes is the process that determines what actions authenticated users and service accounts can perform within a cluster. It operates as a critical security layer after authentication, enforcing access control policies to ensure users can only perform permitted operations on cluster resources, following the principle of least privilege.

## Key Characteristics
- Operates after authentication in the Kubernetes security pipeline
- Handled by pluggable authorization modules
- Enforces the principle of least privilege for all cluster interactions
- Supports multiple authorization strategies (RBAC, ABAC, Node Authorizer, Webhooks)
- RBAC (Role-Based Access Control) is the most commonly used authorization method
- Controls access at the API server level for all resource operations
- Applies to both human users and service accounts
- Can be extended via webhook-based custom authorization logic


## Applications
- Defining fine-grained permissions for developers accessing cluster resources
- Restricting service account capabilities to only required operations
- Implementing multi-tenant isolation in shared Kubernetes clusters
- Enforcing compliance requirements through role-based access policies
- Controlling node-level operations via the Node Authorizer
- Integrating external authorization systems through webhooks


## Related Concepts
- [[concepts/authentication-kubernetes]]
- [[concepts/rbac]]
- [[concepts/abac]]
- [[concepts/node-authorizer]]
- [[concepts/webhooks-authorization]]


## Related Entities
- [[entities/kubernetes]]


## Mentions in Source
- Determines: **What actions can authenticated users perform?** — 🔐-security-in-kubernetes_0a37d1
- Handled by various modules: ✅ **RBAC** (Role-Based Access Control) → Most common — 🔐-security-in-kubernetes_0a37d1
- ✅ **ABAC** (Attribute-Based Access Control) — 🔐-security-in-kubernetes_0a37d1
- ✅ Node Authorizer — 🔐-security-in-kubernetes_0a37d1