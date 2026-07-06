---
type: concept
title: RoleBinding
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/🔐-security-in-kubernetes_0a37d1]]'
tags:
- security
aliases:
- Role Binding
- Kubernetes RoleBinding
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: RoleBinding
---
# RoleBinding

## Definition
RoleBinding is a Kubernetes resource that grants the permissions defined in a Role to a specific set of users, groups, or service accounts within a single namespace. It acts as the binding mechanism that links the abstract permission set (a Role) to concrete subjects, thereby enforcing Role-Based Access Control (RBAC) at the namespace level.

## Key Characteristics
- **Namespace Scope**: A RoleBinding is a namespaced resource; it only grants permissions within the specific namespace where it is created.
- **Subject Association**: It binds a `Role` or `ClusterRole` to one or more subjects, which can be of kind `User`, `Group`, or `ServiceAccount`.
- **Permission Granting**: It grants the permissions (verbs like `get`, `list`, `create`) on specific resources (like `pods`, `services`) that are defined in the referenced Role.
- **Separation of Concerns**: It separates the definition of what can be done (Role) from who can do it (subjects), promoting modularity and reuse.

## Applications
- **Developper Access**: Granting a team of developers read-only access to `pods` and `logs` within their development namespace for debugging.
- **Service Account Authorization**: Assigning specific permissions to a CI/CD pipeline's service account, allowing it only to deploy applications within its designated namespace.
- **Audit and Compliance**: Creating bindings to ensure specific audit roles can view but not modify resources in a namespace for compliance purposes.

## Related Concepts
- [[concepts/rbac]]
- [[concepts/clusterrole]]
- concepts/role-rbac|Role]]

## Related Entities
- [[entities/kubernetes]]

## Mentions in Source
- `RoleBinding`: Assigns users/groups to Roles — 🔐-security-in-kubernetes_0a37d1
- Example: kind: RoleBinding, ... subjects: - kind: User, name: user1 ... roleRef: kind: Role, name: pod-reader — 🔐-security-in-kubernetes_0a37d1