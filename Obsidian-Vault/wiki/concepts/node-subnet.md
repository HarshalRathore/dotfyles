---
type: concept
title: Node subnet
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/pods_c92b62]]'
tags:
- deployment
aliases:
- Per-node subnet
- Per-node CIDR subnet
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: Node subnet
---
# Node subnet

## Definition
A node subnet is a non-overlapping IP address range assigned to a specific node within a Kubernetes cluster. The cluster's overall CIDR block is divided into these smaller, node-specific subnets. Pods running on a node receive their IP addresses exclusively from the subnet allocated to that node, simplifying network routing and IP address management.

## Key Characteristics
- **Per-Node Allocation:** Each node in the cluster is assigned a unique, non-overlapping subnet from the main cluster CIDR range.
- **IPAM-Driven Division:** The division of the cluster CIDR into node subnets is typically performed by the IP Address Management (IPAM) plugin (e.g., `host-local`).
- **Pod IP Scope:** Pods scheduled to a node draw their IP addresses exclusively from that node's assigned subnet.
- **Routing Simplification:** The design allows for efficient inter-node communication because nodes only need to know which subnet (and thus which node) to route traffic for a given Pod IP.
- **Essential for Scalability:** This concept is critical for managing IP address space efficiently and maintaining network performance in large-scale Kubernetes clusters.

## Applications
- **Large-Scale Cluster Networking:** Provides a structured way to allocate Pod IP addresses across many nodes without conflict.
- **Simplified Network Policies and Routing:** Enables clear traffic routing paths and the definition of network policies based on node-level subnet ranges.
- **Cloud-Native and On-Premise Clusters:** A fundamental networking pattern used across various Kubernetes deployment environments to ensure reliable Pod-to-Pod communication.

## Related Concepts
- CIDR
- IPAM
- [[concepts/kubernetes-network-model]]

## Related Entities
- [[entities/host-local]]

## Mentions in Source
- The **IPAM plugin** (often `host-local`) divides the cluster CIDR into **non-​overlapping** subnets, one per node (e.g., /24 each). — pods_c92b62
- Pods on that node draw IPs from its subnet. — pods_c92b62