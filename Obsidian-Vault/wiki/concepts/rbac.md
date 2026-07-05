---
type: concept
title: "RBAC"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/🔐-security-in-kubernetes_0a37d1]]"
tags:
  - security
aliases:
  - "Role-Based Access Control"
---
# RBAC

## Definition
RBAC (Role-Based Access Control) is an authorization method in Kubernetes that restricts access to resources based on the roles assigned to users, groups, or service accounts. It is the most common authorization mechanism in Kubernetes environments.

## Key Characteristics
- Uses `Role` and `ClusterRole` objects to define sets of permissions on resources.
- Uses `RoleBinding` and `ClusterRoleBinding` objects to assign roles to subjects (users, groups, or service accounts).
- Provides a flexible and scalable way to manage permissions, especially in complex or multi-tenant environments.
- Essential for implementing the principle of least privilege in Kubernetes clusters.
- `Role` and `RoleBinding` are namespace-scoped, while `ClusterRole` and `ClusterRoleBinding` are cluster-scoped.

## Applications
RBAC is the standard method for controlling access to the Kubernetes API and its resources. It is used to define what actions (verbs) a subject can perform on which resources within a cluster. This is critical for securing cluster operations, managing multi-tenant environments, and ensuring that service accounts and users have only the permissions necessary to perform their functions.

## Related Concepts
- [[concepts/authorization-kubernetes]]
- [[concepts/clusterrole]]
- [[concepts/clusterrolebinding]]
- [[concepts/human-vs-machine-users]]
- concepts/role-rbac|Role]]
- concepts/rolebinding|RoleBinding]]

## Related Entities
- [[entities/kubernetes]]

## Mentions in Source
- **RBAC** (Role-Based Access Control) → Most common — 🔐-security-in-kubernetes_0a37d1
- **RBAC Structure**: `Role`: Defines permissions, `RoleBinding`: Assigns users/groups to Roles, `ClusterRole` & `ClusterRoleBinding`: For cluster-wide permissions — 🔐-security-in-kubernetes_0a37d1