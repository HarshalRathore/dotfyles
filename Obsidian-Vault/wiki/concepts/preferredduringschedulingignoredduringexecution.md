---
type: concept
title: preferredDuringSchedulingIgnoredDuringExecution
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/nodeselector-&-nodeaffinity_5d8764]]'
tags:
- scheduling
aliases:
- soft affinity
- preferredDuringSchedulingIgnoredDuringExecution
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: preferredDuringSchedulingIgnoredDuringExecution
---
# preferredDuringSchedulingIgnoredDuringExecution

## Definition
`preferredDuringSchedulingIgnoredDuringExecution` is a field within Kubernetes Node Affinity that defines a set of *soft* scheduling rules. It specifies weighted preferences for node placement, which the scheduler attempts to satisfy but does not strictly enforce. If no node matches the preferences, the pod can be scheduled on any available node.

## Key Characteristics
- Represents a "soft" preference, unlike the hard requirement of `requiredDuringSchedulingIgnoredDuringExecution`.
- Allows specifying multiple rules, each with an associated weight for prioritization.
- The scheduler uses these weights to select the best possible node from available options.
- Label changes on nodes after a pod is running do not trigger eviction.
- Enables best-effort node placement strategies.

## Applications
- Preferring pods to be scheduled in specific availability zones or regions without guaranteeing it.
- Targeting nodes with particular hardware (e.g., GPU-equipped) for optimized workload placement while allowing fallback to general-purpose nodes.
- Organizing workloads across nodes based on cost, performance, or organizational policies in a flexible manner.

## Related Concepts
- [[concepts/node-affinity]]
- [[concepts/requiredduringschedulingignoredduringexecution]]
- scheduling
- pod scheduling

## Related Entities
- [[entities/kubernetes]]

## Mentions in Source
- `preferredDuringSchedulingIgnoredDuringExecution` (soft preference) — nodeselector-&-nodeaffinity_5d8764