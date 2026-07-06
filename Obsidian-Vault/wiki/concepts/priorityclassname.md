---
type: concept
title: priorityClassName
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/priorityclasses_438f81]]'
tags:
- deployment
aliases:
- Pod Priority Class
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: priorityClassName
---
# priorityClassName

## Definition
`priorityClassName` is a field within the Kubernetes Pod specification (`.spec.priorityClassName`) that assigns a `PriorityClass` to a Pod. This name determines the scheduling priority of the Pod relative to other Pods in the cluster, which is critical for scheduling and preemption decisions made by the kube-scheduler.

## Key Characteristics
- **Scheduling Priority:** Directly influences the order in which the scheduler places Pods onto nodes, with higher-priority Pods getting scheduled before lower-priority ones if resources are constrained.
- **Preemption Trigger:** Pods with higher `priorityClassName` can evict lower-priority Pods from a node to free up resources if needed.
- **Default Behavior:** If the field is omitted, the Pod receives a priority of 0, unless a `PriorityClass` exists with `globalDefault: true`, in which case it inherits that class's priority.
- **Cluster-Wide Enforcement:** The `PriorityClass` objects are cluster-scoped resources, and their names must be unique within the cluster.
- **Preemption Policy:** Works in conjunction with `preemptionPolicy` (which can be `PreemptLowerPriority` or `Never`) to control whether a Pod can preempt others.

## Applications
- **Cluster Stability:** Ensuring critical system components (like a cluster autoscaler or monitoring agents) are always scheduled by assigning them a high-priority `PriorityClass`.
- **Workload Differentiation:** Differentiating between production, staging, and batch workloads. For example, a production database pod would have a higher `priorityClassName` than a batch processing job.
- **Resource Guarantees:** Providing a form of "soft" resource guarantees. A high-priority Pod can preempt lower-priority work to claim needed resources.
- **Cost Management:** In cloud environments, Pods can be prioritized to ensure expensive, high-performance nodes are reserved for the most important workloads.
- **Graceful Degradation:** During node pressure or resource contention, lower-priority Pods are evicted first, allowing higher-priority applications to continue running.

## Related Concepts
- [[concepts/priorityclass]]
- Pod Preemption|Pod Preemption]]
- [[concepts/globaldefault]]
- [[concepts/preemptionpolicy]]

## Related Entities
- [[entities/kubernetes]]
- [[entities/pods]]
- [[entities/kubelet]]

## Mentions in Source
- In your Pod (or Deployment) spec:
yaml
spec:
  priorityClassName: high-priority
``` — priorityclasses_438f81
- If omitted, Pods get **priority 0** unless a PriorityClass has `globalDefault: true`. — priorityclasses_438f81