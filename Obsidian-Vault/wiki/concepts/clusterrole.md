---
type: concept
title: "ClusterRole"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "🔐-security-in-kubernetes_0a37d1"
tags:
  - security
aliases:
  - K8s ClusterRole
---
# ClusterRole

## Definition
ClusterRole is a Kubernetes resource that defines permissions at the cluster level. It is a core component of the Kubernetes Role-Based Access Control (RBAC) system, used to specify allowed actions on cluster-scoped resources or across all namespaces.

## Key Characteristics
- Defines permissions with a scope limited to the entire cluster, not a single namespace.
- Contains a set of rules, each specifying resources, API groups, and verbs (actions).
- Is not tied to a specific namespace; it grants permissions that can be applied globally when bound.
- Is paired with a `ClusterRoleBinding` to grant its defined permissions to users, groups, or service accounts.
- Essential for managing access to cluster-wide resources like nodes, persistent volumes, and namespaces themselves.

## Applications
- Granting administrators full access to manage all resources and namespaces within a Kubernetes cluster.
- Defining read-only permissions for monitoring tools that need to observe metrics from all namespaces.
- Providing service accounts (e.g., for system components or Ingress controllers) with the necessary permissions to operate across the cluster.
- Implementing security policies where certain roles (like auditors or security scanners) require visibility into the entire cluster state.

## Related Concepts
- [[concepts/rbac]] (Role-Based Access Control)
- [[concepts/clusterrolebinding]]
- concepts/role-rbac|Role]]

## Related Entities
- [[entities/kubernetes]]

## Mentions in Source
- "ClusterRole & ClusterRoleBinding: For cluster-wide permissions" — 🔐-security-in-kubernetes_0a37d1