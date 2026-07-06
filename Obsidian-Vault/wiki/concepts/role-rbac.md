---
type: concept
title: Role (RBAC)
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/🔐-security-in-kubernetes_0a37d1]]'
tags:
- security
aliases:
- Kubernetes Role
- Namespace Role
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: Role (RBAC)
---
# Role (RBAC)

## Definition
A Role in Kubernetes Role-Based Access Control (RBAC) is a resource that defines a set of permissions within a specific namespace. It specifies which actions (verbs) can be performed on which Kubernetes API resources, serving as the fundamental unit for granting least-privilege access to users, groups, or service accounts within a namespace boundary.

## Key Characteristics
- **Namespace-scoped**: Permissions defined in a Role are confined to a single Kubernetes namespace and cannot grant access to resources in other namespaces.
- **Declarative permission model**: Permissions are defined as a list of rules in the Role's manifest, specifying API groups, resources, and allowed verbs.
- **Implements least-privilege access**: Enables granular access control by granting only the specific permissions required for a user or service account to perform its functions.
- **Bound to subjects via RoleBinding**: A Role itself grants no access; it must be bound to a subject (user, group, or service account) using a RoleBinding resource to take effect.
- **Focused on read/write operations**: Commonly used to permit verbs like `get`, `watch`, `list`, `create`, `update`, `patch`, and `delete` on resources such as Pods, Services, and ConfigMaps.

## Applications
- **Developer access control**: Granting developers permissions to view, create, and manage resources (like Pods and Services) within their team's specific namespace.
- **CI/CD pipeline permissions**: Providing automated build/deploy tools with the minimum necessary permissions to deploy applications (e.g., `get`, `list` Pods; `create` Deployments) within a target namespace.
- **Service account permissions**: Defining exactly what an application's service account is allowed to do within its own namespace, such as reading ConfigMaps or writing to a specific API endpoint.
- **Namespace isolation**: Ensuring users of one application namespace cannot interfere with resources in another, supporting multi-tenancy within a single cluster.

## Related Concepts
- [[concepts/rbac]]
- concepts/rolebinding|RoleBinding]]
- [[concepts/clusterrole]]
- [[concepts/authorization-kubernetes]]
- [[concepts/authentication-kubernetes]]

## Related Entities
- [[entities/kubernetes]]

## Mentions in Source
- "`Role`: Defines permissions — 🔐-security-in-kubernetes_0a37d1
- "Example: kind: Role, ... rules: - apiGroups: [""] resources: ["pods"] verbs: ["get", "watch", "list"] — 🔐-security-in-kubernetes_0a37d1