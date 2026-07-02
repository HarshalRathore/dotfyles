---
type: concept
title: "ABAC"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "🔐-security-in-kubernetes_0a37d1"
tags:
  - security
aliases:
  - "Attribute-Based Access Control"
  - "Attribute-Based Authorization"
---
# ABAC

## Definition
ABAC (Attribute-Based Access Control) is an authorization method that uses attributes—such as the subject (user), resource, action, and environment—to determine whether access is granted. In Kubernetes, it is one of the supported authorization modules, evaluated by policies that compare attributes to predefined rules.

## Key Characteristics
- **Attribute-Driven:** Access decisions are based on attributes of the request (who, what, where, when) rather than fixed roles.
- **Policy-Based:** Uses policies (typically defined in files or configurations) that express rules combining multiple attributes.
- **Highly Flexible:** Can model complex, fine-grained access control scenarios that are difficult to express with simpler models.
- **Complex to Manage:** Policy definition and maintenance can become intricate and error-prone as the number of attributes and rules grows.
- **Integrated into Kubernetes:** Supported as a native authorization module alongside RBAC, Node Authorizer, and Webhooks.


## Applications
- **Kubernetes Authorization:** Used to implement complex access control rules for the Kubernetes API server, especially in environments requiring attribute-based policies.
- **Enterprise Security:** Applied in systems needing context-aware authorization (e.g., access based on time, location, device type).
- **Fine-Grained Access Control:** Ideal for scenarios where access depends on a combination of multiple dynamic attributes, such as project membership, resource sensitivity, and operational environment.


## Related Concepts
- [[concepts/rbac]]
- [[concepts/authentication-kubernetes]]

## Related Entities
- [[entities/kubernetes]]


## Mentions in Source
- **ABAC** (Attribute-Based Access Control) — 🔐-security-in-kubernetes_0a37d1
- Handled by various modules: ✅ **RBAC** ... ✅ **ABAC** ... — 🔐-security-in-kubernetes_0a37d1