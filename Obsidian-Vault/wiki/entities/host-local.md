---
type: entity
title: host-local
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/pods_c92b62]]'
tags:
- product
aliases:
- host-local CNI plugin
category: entities
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: host-local
---
# host-local

## Basic Information
- Type: product
- Source: pods_c92b62

## Description
`host-local` is a Container Network Interface (CNI) IP Address Management (IPAM) plugin responsible for allocating and managing IP addresses for containers, such as Pods, on a single Kubernetes node. It works by dividing a larger cluster CIDR block into smaller, non-overlapping subnets assigned to each node. The plugin uses a simple file-based locking mechanism to ensure that IP allocations are unique and do not conflict among concurrent operations on the same host. It is a fundamental component within the broader CNI ecosystem that handles network configuration for containerized applications. By managing local IP pools, `host-local` ensures each Pod receives a unique and routable IP address within the cluster's network.

## Related Entities
- [[entities/calico]]

## Related Concepts
- [[concepts/ipam]]
- [[concepts/cidr]]
- [[concepts/veth-pair]]

## Mentions in Source
- "The **IPAM plugin** (often `host-local`) divides the cluster CIDR into **non-​overlapping** subnets, one per node (e.g., /24 each)." — pods_c92b62
- "Pods on that node draw IPs from its subnet." — pods_c92b62