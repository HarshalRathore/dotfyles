---
type: concept
title: "preemptionPolicy"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "priorityclasses_438f81"
tags:
  - scheduling
aliases:
  - PreemptionPolicy
---
# preemptionPolicy

## Definition
The `preemptionPolicy` is a configurable field within a Kubernetes `PriorityClass` object that dictates the eviction behavior when the scheduler attempts to place a higher-priority Pod. It provides explicit control over whether the system should actively evict existing lower-priority workloads to make room for the new, more important one.

## Key Characteristics
- **Configurable Eviction Behavior:** It is the primary setting that determines if and how a `PriorityClass` triggers Pod preemption.
- **Two Defined Modes:** It accepts exactly two values:
    - `PreemptLowerPriority` (the default): Instructs the scheduler to evict one or more lower-priority Pods on a node to free up resources for the higher-priority Pod.
    - `Never`: Prohibits the scheduler from evicting any existing Pods. The new Pod will wait in the scheduling queue until sufficient resources become available naturally.
- **Operator-Controlled Stability:** Allows cluster administrators to define safe "non-disruptive" priority tiers where critical system Pods are never evicted, enhancing overall cluster stability.
- **Fine-Grained Workload Prioritization:** Enables different scheduling policies for separate classes of workloads within the same cluster.

## Applications
- **Critical Infrastructure Protection:** Setting `preemptionPolicy: Never` for system-critical or latency-sensitive applications (like databases) ensures they are not evicted by other workloads.
- **Batch Job Scheduling:** Allowing preemptive scheduling (`PreemptLowerPriority`) for high-priority batch jobs can accelerate their start time without permanently reserving resources.
- **Resource Quota Management:** Prevents "priority inversion" where low-priority, long-running workloads can block high-priority, short-lived workloads from being scheduled.
- **Cluster Stability:** Prevents cascading failures by ensuring that essential services cannot be preempted by less important workloads during periods of high resource contention.

## Related Concepts
- [[concepts/priorityclass]]
- Pod Preemption|Pod Preemption]]
- priority-class-name|priorityClassName]]
- [[concepts/globaldefault]]

## Related Entities
- [[entities/kubernetes]]

## Mentions in Source
- **preemptionPolicy** (on the PriorityClass) controls eviction behavior when scheduling a higher-priority Pod: — priorityclasses_438f81
-   `PreemptLowerPriority` (default): evicts lower-priority Pods to free resources — priorityclasses_438f81