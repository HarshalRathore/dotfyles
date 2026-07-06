---
type: concept
title: globalDefault
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/priorityclasses_438f81]]'
tags:
- deployment
aliases:
- Kubernetes globalDefault
- PriorityClass default
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: globalDefault
---
# globalDefault

## Definition
`globalDefault` is an optional boolean field within a Kubernetes `PriorityClass` object. When set to `true`, it designates that `PriorityClass` as the default priority for all Pods in the cluster that do not explicitly specify a `priorityClassName`. This mechanism ensures every Pod is assigned a priority level, which is fundamental for consistent scheduling and preemption behavior across the cluster.

## Key Characteristics
- **Boolean field**: It is a simple `true`/`false` option within the `PriorityClass` specification.
- **Cluster-wide default**: Its effect applies cluster-wide, not within a specific namespace.
- **Fallback assignment**: If `globalDefault` is `true` for any `PriorityClass`, Pods without a `priorityClassName` receive that class's priority. If no such class exists, they default to a priority of 0.
- **Optional field**: The field is not mandatory; its omission simply means no global default is set by that `PriorityClass`.
- **Influences scheduling**: The assigned priority directly impacts Pod scheduling decisions and the kube-scheduler's preemption logic.

## Applications
- **Establishing a baseline priority**: Used to set a minimum or standard priority level for all general workloads in a cluster.
- **Ensuring preemption predictability**: Guarantees that Pods are not silently assigned zero priority, which can affect how they are preempted by higher-priority workloads.
- **Simplifying Pod specifications**: Allows developers to omit the `priorityClassName` from Pod definitions while still receiving an appropriate, cluster-defined priority.
- **Cluster policy enforcement**: Enables cluster administrators to define and enforce a default priority tier for uncategorized applications.

## Related Concepts
- [[concepts/priorityclass]]
- priorityClassName
- [[concepts/pod-preemption]]

## Related Entities
- [[entities/kubernetes]]

## Mentions in Source
- **globalDefault** (optional): if true, this class becomes the default for Pods with no `priorityClassName` — priorityclasses_438f81
- If omitted, Pods get **priority 0** unless a PriorityClass has `globalDefault: true`. — priorityclasses_438f81