---
type: concept
title: "Cluster CIDR"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/pods_c92b62]]"
tags:
  - deployment
aliases:
  - "Cluster-wide Pod CIDR"
  - Pod CIDR
---
# Cluster CIDR

## Definition
Cluster CIDR is the overall IP address range (in Classless Inter-Domain Routing notation) allocated for all Pods across the entire Kubernetes cluster. It is defined during cluster initialization (e.g., with `kubeadm init --pod-network-cidr=10.244.0.0/16`). The IPAM plugin divides this large range into smaller, non-overlapping subnets for each node. The Cluster CIDR ensures that every Pod in the cluster gets a unique, routable IP address. This centralized allocation is fundamental to the Kubernetes flat network model, allowing Pods to communicate directly without NAT. The size of the Cluster CIDR must be large enough to accommodate all potential Pods across all nodes in the cluster.

## Key Characteristics
- A single, contiguous IP address block in CIDR notation defined at cluster creation.
- Represents the total IP address space available for Pod networking within the cluster.
- Is logically subdivided by an IPAM plugin into per-node subnets (Node CIDRs).
- Is configured via the cluster's control plane (e.g., `--pod-network-cidr` flag in `kubeadm`).
- Its size is planned based on the maximum scale of the cluster (nodes and Pods per node).
- Enables a flat, NAT-less network model for Pod-to-Pod communication.
- Must not overlap with other networks in the cluster (e.g., Service CIDR, node networks).

## Applications
- **Cluster Initialization:** Defined as a primary parameter when bootstrapping a Kubernetes cluster with tools like `kubeadm`.
- **Network Plugin Configuration:** Used by CNI (Container Network Interface) plugins and IPAM (IP Address Management) systems to automatically configure Pod networking.
- **Scalability Planning:** Determined by administrators to ensure the cluster can grow to the required size without running out of Pod IP addresses.
- **Network Security & Policy:** Forms the basis for defining network policies that control ingress and egress traffic to and from Pods.
- **Troubleshooting:** Used to diagnose IP exhaustion issues or network connectivity problems between Pods.

## Related Concepts
- CIDR
- IPAM
- [[concepts/kubernetes-network-model]]
- [[concepts/node-subnet]]

## Related Entities
- [[entities/kubeadm]]

## Mentions in Source
- "Defined at cluster init (e.g., `--pod-network-cidr=10.244.0.0/16`)." — pods_c92b62
- "Entire Pod network lives within this range." — pods_c92b62