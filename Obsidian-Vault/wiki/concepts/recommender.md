---
type: concept
title: "Recommender"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "kubernetes-autoscaling_59fbf3"
tags:
  - scheduling
aliases:
  - Vertical Pod Autoscaler Recommender
---
# Recommender

## Definition
A component of the Vertical Pod Autoscaler (VPA) that analyzes historical and current resource usage patterns to suggest optimal CPU and memory settings for pods. It is a core part of automating resource right-sizing in a Kubernetes cluster.

## Key Characteristics
- Analyzes both historical and real-time resource utilization data for pods.
- Generates data-driven recommendations for CPU and memory `requests` and `limits`.
- Operates as a control loop, continuously evaluating workloads.
- Collaborates with other VPA components (`updater` and `admission-controller`) to apply recommendations automatically.
- Relies on metrics data, typically sourced from the Metrics Server.

## Applications
- Automatically right-sizing pod resource allocations for stateful and heavy-compute workloads.
- Preventing chronic under-provisioning, which leads to performance degradation or crashes.
- Eliminating chronic over-provisioning, which leads to wasted cluster resources and increased cost.
- Maintaining efficient resource utilization in dynamic environments where workload patterns change over time.
- Facilitating the implementation of In-Place Pod Vertical Scaling for more efficient adjustments.

## Related Concepts
- [[concepts/vertical-pod-autoscaler]]
- [[entities/metrics-server]]
- [[concepts/in-place-pod-vertical-scaling]]

## Related Entities
- [[entities/metrics-server]]

## Mentions in Source
- "Recommender: analyzes historical/current usage, suggests optimal CPU/memory." — kubernetes-autoscaling_59fbf3
- "Components: - Recommender: analyzes historical/current usage, suggests optimal CPU/memory." — kubernetes-autoscaling_59fbf3