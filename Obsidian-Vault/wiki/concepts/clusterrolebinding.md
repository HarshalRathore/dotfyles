---
type: concept
title: ClusterRoleBinding
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/🔐-security-in-kubernetes_0a37d1]]'
tags:
- security
aliases:
- K8s ClusterRoleBinding
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: ClusterRoleBinding
---
# ClusterRoleBinding

## Definition
ClusterRoleBinding is a Kubernetes resource within the RBAC (Role-Based Access Control) system that assigns a ClusterRole to specified subjects — users, groups, or service accounts — granting them the permissions defined in that ClusterRole across the entire cluster.

## Key Characteristics
- Binds a ClusterRole to one or more subjects (users, groups, service accounts)
- Grants cluster-wide permissions, unlike RoleBinding which is namespace-scoped
- Works in conjunction with ClusterRole to enforce access control at the cluster level
- Supports multiple subjects per binding, allowing flexible permission assignment
- Part of Kubernetes' native RBAC authorization mechanism
- Cannot be scoped to individual namespaces; applies globally to all namespaces

## Applications
- Granting administrators full cluster access
- Assigning monitoring tools (like Prometheus) cluster-wide read permissions
- Configuring service accounts for cluster-level operations (e.g., across multiple namespaces)
- Setting up CI/CD pipelines that require broad cluster access
- Delegating cluster-wide resource management to specific teams or service accounts
- Integrating with external identity providers for cluster-wide authorization

## Related Concepts
- [[concepts/rbac]]
- [[concepts/clusterrole]]
- [[concepts/authorization-kubernetes]]
- [[concepts/abac]]
- [[concepts/authentication-kubernetes]]

## Related Entities
- [[entities/kubernetes]]

## Mentions in Source
- "ClusterRole & ClusterRoleBinding: For cluster-wide permissions" — 🔐-security-in-kubernetes_0a37d1