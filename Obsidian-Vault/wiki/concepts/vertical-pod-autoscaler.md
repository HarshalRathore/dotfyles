---
type: concept
title: "Vertical Pod Autoscaler"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "kubernetes-autoscaling_59fbf3"
tags:
  - scaling
aliases:
  - Vertical Autoscaling
---
# Vertical Pod Autoscaler

## Definition
Vertical Pod Autoscaler (VPA) is a Kubernetes add-on that automatically adjusts the CPU and memory resource requests and limits for pods over time based on historical and current usage. It consists of three components: a Recommender that suggests optimal resources, an Updater that evicts pods for adjustment, and an Admission Controller that applies recommendations during pod creation. The source emphasizes it is not built-in and must be deployed separately, making it suitable for right-sizing resources for stateful or heavy-compute workloads like databases and JVM applications.

## Key Characteristics
- **Not built-in:** Must be deployed as a separate component to the Kubernetes cluster.
- **Three-component architecture:** Consists of a Recommender, Updater, and Admission Controller.
- **Resource focus:** Specifically targets the adjustment of vertical resources (CPU and memory).
- **Automated right-sizing:** Uses historical and real-time metrics to recommend optimal resource allocations.
- **Pod-disruptive:** The Updater component evicts pods to apply new resource recommendations.
- **Ideal for specific workloads:** Best suited for stateful or heavy-compute workloads where vertical scaling is effective.

## Applications
VPA is primarily applied to optimize resource utilization and ensure performance stability for workloads that are challenging to scale horizontally. Key application scenarios include:
- **Stateful applications:** Databases (e.g., PostgreSQL, MongoDB) that require stable, predictable resource allocations.
- **Heavy-compute workloads:** JVM applications, machine learning training jobs, and other CPU/memory-intensive processes.
- **Right-sizing in clusters:** Automatically correcting over-provisioned or under-provisioned pod resource requests to reduce cost and prevent performance degradation.
- **Workload profiling:** Using the Recommender's output to understand the true resource needs of applications over time.

## Related Concepts
- [[concepts/horizontalpodautoscaler]]
- [[concepts/vertical-scaling]]
- [[entities/metrics-server]]
- [[concepts/resource-requests]]
- [[concepts/resource-limits]]

## Related Entities
- [[entities/metrics-server]]

## Mentions in Source
- Purpose: automatically **adjust pod resource requests/limits** over time. — kubernetes-autoscaling_59fbf3
- Not built-in; must deploy VPA components. — kubernetes-autoscaling_59fbf3
- Ideal for **stateful or heavy-compute** workloads (databases, JVM, ML). — kubernetes-autoscaling_59fbf3