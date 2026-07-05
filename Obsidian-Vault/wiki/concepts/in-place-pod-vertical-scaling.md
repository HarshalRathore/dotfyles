---
type: concept
title: "In-Place Pod Vertical Scaling"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/kubernetes-autoscaling_59fbf3]]"
tags:
  - scaling
aliases:
  - InPlacePodVerticalScaling
  - "In-Place Pod Resizing"
---
# In-Place Pod Vertical Scaling

## Definition
In-Place Pod Vertical Scaling is an alpha Kubernetes feature that allows the CPU and memory resources of a running pod to be updated without deleting and recreating it. This is achieved via a per-resource resize policy, where each resource type (e.g., CPU, memory) can be configured to either apply the change as a live update or trigger a standard pod restart.

## Key Characteristics
- **Alpha Feature:** Gated behind the `InPlacePodVerticalScaling` feature gate, indicating it is experimental and not enabled by default.
- **Per-Resource Resize Policy:** Utilizes a `resizePolicy` list where each resource (cpu, memory) has its own restart policy. Setting `restart: false` allows for a live, in-place update (e.g., for CPU), while `restart: true` will perform a normal pod restart to apply the change (e.g., often for memory).
- **Avoids Pod Disruption:** The primary benefit is updating resources without the pod being deleted, which is critical for maintaining availability in long-running, stateful, or latency-sensitive applications.
- **Current Limitations:** Does not support init containers, ephemeral containers, or pods scheduled on Windows nodes.

## Applications
- **Fine-Tuning Resource Allocation:** Ideal for long-running pods (like databases, caches, or specialized applications) where administrators need to adjust CPU or memory requests/limits based on observed performance without causing downtime.
- **Optimizing Cluster Resource Usage:** Enables more granular and immediate adjustments to resource allocations, potentially improving node packing efficiency without the overhead of pod recreation.
- **Adaptive Workload Management:** Can be used in conjunction with monitoring systems to programmatically adjust resources for specific pods in response to changing load patterns, all without restarting the workload.

## Related Concepts
- [[concepts/vertical-scaling]]
- [[concepts/vertical-pod-autoscaler]]
- [[concepts/resource-requests]]
- [[concepts/resource-limits]]

## Related Entities
None specified.

## Mentions in Source
- In-Place Resize (Alpha): **Feature Gate**: `InPlacePodVerticalScaling`. — kubernetes-autoscaling_59fbf3
- Resize Policy per resource: `restart: false` → live update (e.g., CPU). — kubernetes-autoscaling_59fbf3