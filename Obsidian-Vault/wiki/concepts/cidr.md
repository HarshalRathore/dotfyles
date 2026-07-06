---
type: concept
title: CIDR
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/pods_c92b62]]'
tags:
- deployment
aliases:
- Classless Inter-Domain Routing
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: CIDR
---
# CIDR

## Definition
CIDR (Classless Inter-Domain Routing) is a standard for allocating IP addresses and routing that replaces the older class-based system. In Kubernetes, it defines the overall range of IP addresses (e.g., `10.244.0.0/16`) available for all Pods in the cluster, established during cluster initialization.

## Key Characteristics
- Employs variable-length subnet masking (VLSM) for flexible and efficient IP address allocation.
- Used in Kubernetes to specify the `--pod-network-cidr` during cluster setup (e.g., `kubeadm init --pod-network-cidr=10.244.0.0/16`).
- The large cluster CIDR is subdivided by the IPAM (IP Address Management) plugin into smaller, node-specific subnets for efficient Pod IP distribution and routing.
- Provides the fundamental, scalable, and routable IP address space that underpins Pod-to-Pod networking in a cluster.
- Enables network planners to allocate address space based on actual need rather than fixed classful boundaries.


## Applications
- **Kubernetes Pod Networking**: Defines the primary address pool from which individual Pod IPs are allocated within the cluster.
- **Node Subnet Allocation**: The IPAM component carves the cluster CIDR into per-node subnets, ensuring each node has a unique and manageable range of IPs for its Pods.
- **Network Policy & Routing**: Provides a well-defined IP range for implementing network policies and configuring routing rules that govern traffic between Pods, nodes, and services.
- **Service Discovery**: Ensures Pod IP addresses are routable within the cluster network, allowing internal DNS and service discovery mechanisms to function reliably.


## Related Concepts
- [[concepts/ipam]]
- [[concepts/network-plugin]]
- [[concepts/cluster-cidr]]


## Related Entities


## Mentions in Source
- "Defined at cluster init (e.g., `--pod-network-cidr=10.244.0.0/16`)." — pods_c92b62
- "Entire Pod network lives within this range." — pods_c92b62