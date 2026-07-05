---
type: concept
title: "Pod Preemption"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/priorityclasses_438f81]]"
tags:
  - scheduling
aliases:
  - Kubernetes Pod Preemption
---
# Pod Preemption

## Definition
Pod Preemption is a Kubernetes scheduling mechanism that allows higher-priority Pods to evict lower-priority Pods from nodes when there are insufficient resources to schedule the higher-priority Pod. When the scheduler encounters a Pod that cannot be scheduled due to resource constraints, it checks the Pod's `PriorityClass`'s `preemptionPolicy`. If set to `PreemptLowerPriority` (the default), the scheduler identifies and evicts the minimal set of lowest-priority victim Pods to free up resources, then schedules the higher-priority Pod. If the `preemptionPolicy` is set to `Never`, the Pod will wait in the scheduling queue instead of evicting others.

## Key Characteristics
- **Priority-Driven**: Scheduling and preemption decisions are based on the integer priority assigned via a Pod's `PriorityClass`.
- **Policy-Controlled**: The `preemptionPolicy` field on a `PriorityClass` defines whether a higher-priority Pod can evict lower-priority ones.
- **Minimal Disruption**: The scheduler attempts to select the minimal set of victim Pods for eviction to satisfy the scheduling requirements of the higher-priority Pod.
- **Conditional Trigger**: Preemption is only considered for Pods with a `preemptionPolicy` of `PreemptLowerPriority`; Pods set to `Never` wait in the queue.
- **Critical for Reliability**: Ensures essential workloads (e.g., control-plane components) can secure necessary resources during cluster resource contention.

## Applications
- Guaranteeing resource availability for critical system components (e.g., control plane, core services).
- Enforcing service-level agreements (SLAs) for high-priority applications by displacing less critical workloads.
- Implementing tiered workload management in multi-tenant or complex environments.
- Ensuring batch processing or high-throughput jobs can run when cluster resources are fully utilized by lower-priority tasks.

## Related Concepts
- Scheduler
- [[concepts/desired-state]]
- PriorityClasses

## Related Entities
- [[entities/kubernetes]]

## Mentions in Source
- "PriorityClasses assign integer priorities to Pods so that higher-priority Pods can preempt lower-priority ones when resources are scarce." — priorityclasses_438f81
- "preemptionPolicy (on the PriorityClass) controls eviction behavior when scheduling a higher-priority Pod: PreemptLowerPriority (default): evicts lower-priority Pods to free resources" — priorityclasses_438f81