---
summary: "The Node Authorizer is a core component of the Kubernetes authorization chain, designed to enforce node-level security. It operates by authorizing API requests made specifically by kubelets, which ..."
type: concept
title: "Node Authorizer"
created:
  - "2026-06-30"
updated:
  - "2026-06-30"
lifecycle: draft
base_confidence: 0.75
sources:
  - "🔐-security-in-kubernetes_0a37d1"
  - "kubernetes-api-groups-authorization-and-rbac-a-comprehensive-overview_ab21cb"
tags:
---
## Description
The Node Authorizer is a core component of the Kubernetes authorization chain, designed to enforce node-level security. It operates by authorizing API requests made specifically by kubelets, which are identified by usernames prefixed with `system:node:` and belong to the `system:nodes` group. This mechanism ensures that a kubelet can only perform actions relevant and necessary for its own node's operation, such as updating node status or retrieving pod configurations. It functions as a critical security boundary, preventing any other actor—including a kubelet from a different node—from accessing or manipulating the kubelet API of a target node. This helps prevent lateral movement and privilege escalation within a cluster. It works as a complementary layer alongside general-purpose authorization modes like [[concepts/rbac]] and [[concepts/abac]].

## Related Concepts
- [[concepts/authorization-kubernetes]]
- [[concepts/rbac]]
- [[concepts/abac]]
- [[concepts/authentication-kubernetes]]

## Related Entities
- [[entities/kubernetes]]

## Mentions in Source
- "
  - " — 🔐-security-in-kubernetes_0a37d1
- "
  - " — 🔐-security-in-kubernetes_0a37d1

> **Source: kubernetes-api-groups-authorization-and-rbac-a-comprehensive-overview_ab21cb**
> - "
  - "
> - "