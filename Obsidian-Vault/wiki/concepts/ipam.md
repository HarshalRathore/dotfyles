---
type: concept
title: IPAM
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/pods_c92b62]]'
tags:
- storage
aliases:
- IP Management
- IP Allocation
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: IPAM
---
# IPAM

## Definition
IPAM (IP Address Management) is the method used by CNI plugins to allocate and manage IP addresses for Pods in a Kubernetes cluster. It is responsible for distributing unique IP addresses to each Pod from a predefined network range.

## Key Characteristics
- Splits the cluster's overall CIDR range into smaller, non-overlapping subnets.
- Assigns one subnet to each node in the cluster.
- Pods on a given node draw their IP addresses from that node's designated subnet.
- Ensures each Pod receives a unique, cluster-wide IP address.
- Critical for maintaining the flat network model where Pods can communicate directly via IP without NAT.

## Applications
- Core component of Kubernetes Pod networking, enabling direct Pod-to-Pod communication.
- Implemented by CNI plugins (e.g., `host-local`) to manage the IP address lifecycle for workloads.
- Fundamental for cluster network design, ensuring IP addresses are efficiently utilized and avoid conflicts.

## Related Concepts
- [[concepts/cidr]]
- CNI
- pod-networking|Pod networking]]

## Related Entities
- [[entities/host-local]]
- [[entities/pods]]

## Mentions in Source
- "The **IPAM plugin** (often `host-local`) divides the cluster CIDR into **non-overlapping** subnets, one per node (e.g., /24 each)." — pods_c92b62
- "Pods on that node draw IPs from its subnet." — pods_c92b62