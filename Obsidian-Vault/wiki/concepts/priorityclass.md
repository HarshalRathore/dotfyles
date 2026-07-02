---
type: concept
title: "PriorityClass"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "priorityclasses_438f81"
tags:
  - deployment
aliases:
  - "pod-priority"
---
# PriorityClass

## Definition
PriorityClass is a cluster-scoped Kubernetes object defined in the `scheduling.k8s.io/v1` API group. It assigns integer priority values to Pods, which determine their scheduling order and preemption eligibility within the cluster. Higher numeric values indicate greater importance.

## Key Characteristics
- It is a cluster-scoped resource, meaning it is not namespaced and applies to Pods across the entire cluster.
- It defines a numeric `value` field (higher values = more important). User-defined workloads can use values ranging from approximately -2³¹ to +10⁹.
- It includes an optional `globalDefault` flag, which, when set to `true`, makes the PriorityClass the default for any Pod that does not specify a `priorityClassName`.
- It contains a `preemptionPolicy` field that controls whether and how a higher-priority Pod can preempt lower-priority Pods to secure resources.
- It provides a human-readable `description` field for documentation.
- Built-in system PriorityClasses, such as `system-node-critical` and `system-cluster-critical`, use very large values (~2 billion) to ensure critical control-plane components are protected from eviction.

## Applications
- **Cluster Resource Management**: Allows administrators to enforce workload priority, ensuring critical applications receive necessary resources.
- **QoS Enforcement**: Used in conjunction with resource requests and limits to establish Quality of Service tiers.
- **Automated Preemption**: Enables the scheduler to automatically evict lower-priority Pods when higher-priority Pods are unschedulable due to resource constraints.
- **Critical System Protection**: The built-in system classes prevent essential Kubernetes components from being evicted by user workloads.

## Related Concepts
- [[concepts/pod-preemption]]
- [[concepts/scheduler]]
- resource-requests-&-limits
- taints-&-tolerations
- scheduling

## Related Entities
- [[entities/kubernetes]]
- [[entities/pods]]
- [[entities/kubelet]]
- [[entities/kubectl]]

## Mentions in Source
- "A cluster‐scoped object (scheduling.k8s.io/v1/ PriorityClass) defining: value: an integer (higher = more important) — PriorityClasses" — priorityclasses_438f81
- "Built-in system classes (system-node-critical, system-cluster-critical) use very large values (~ 2 billion) to protect core components. — PriorityClasses" — priorityclasses_438f81