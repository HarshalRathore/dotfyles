---
type: concept
title: "Network Policies"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "🔐-security-in-kubernetes_0a37d1"
tags:
  - security
aliases:
  - K8s Network Policies
  - NetPol
---
# Network Policies

## Definition
Network Policies are a security mechanism in Kubernetes that allow users to define rules for controlling network traffic flow between pods, namespaces, and external endpoints. They are implemented by a network plugin (such as Calico or Cilium) that enforces the specified ingress (incoming) and egress (outgoing) traffic rules.

## Key Characteristics
- **Declarative Rule Specification:** Administrators define desired traffic rules in YAML manifests, which are then enforced by the cluster's network provider.
- **Ingress and Egress Control:** Policies can independently control both incoming (ingress) and outgoing (egress) traffic for targeted pods.
- **Namespace-scoped or Cluster-wide:** Rules can be applied to pods within a specific namespace or, in some cases, across multiple namespaces.
- **Zero-Trust Default:** When a Network Policy is applied to a pod, all traffic not explicitly allowed by the policy is blocked, shifting the model from default-allow to default-deny.
- **Selector-based Targeting:** Policies use pod and namespace selectors (labels) to define which pods the rules apply to.

## Applications
- **Micro-segmentation:** Implementing granular security zones within a cluster, isolating applications or tiers (e.g., web, application, database) from each other.
- **Zero-Trust Networking:** Enforcing the principle of least privilege by ensuring pods only communicate with explicitly authorized peers.
- **Compliance and Security Hardening:** Meeting regulatory requirements by controlling and auditing network access between services.
- **Preventing Lateral Movement:** Mitigating the impact of a compromised pod by restricting its ability to communicate with other parts of the cluster.

## Related Concepts
- Pod-to-Pod Communication

## Related Entities
- [[entities/kubernetes]]

## Mentions in Source
- "By default, all pods can communicate with each other" — 🔐-security-in-kubernetes_0a37d1
- "Use **Network Policies** to restrict communication between Pods" — 🔐-security-in-kubernetes_0a37d1
- "Specify allowed ingress/egress traffic per Pod/Namespace" — 🔐-security-in-kubernetes_0a37d1