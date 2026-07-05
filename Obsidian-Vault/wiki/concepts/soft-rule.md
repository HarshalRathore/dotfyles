---
type: concept
title: "soft rule"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/nodeselector-&-nodeaffinity_5d8764]]"
tags:
  - deployment
aliases:
  - "best-effort scheduling"
---
# soft rule

## Definition
A soft rule in Kubernetes node affinity represents a scheduling preference for a pod to run on nodes matching specific criteria, rather than a strict requirement. The scheduler will attempt to find and schedule the pod on a preferred node, but if no such nodes are available, it will proceed to schedule the pod on any other suitable node.

## Key Characteristics
- Represents a **preference**, not a mandatory requirement (contrast with a hard rule).
- Implemented using the `preferredDuringSchedulingIgnoredDuringExecution` field in a pod's affinity or anti-affinity rules.
- Includes a **weight** parameter (integer from 1 to 100) to define the strength of the preference.
- **Ignored during execution**: Once a pod is scheduled, changes to node labels that would affect the soft rule will not cause the pod to be evicted.
- Useful for expressing non-critical constraints like zone selection, instance type preferences, or performance tiers.

## Applications
- **Locality and Fault Tolerance**: Prefer to schedule pods across different availability zones to improve resilience, without strictly enforcing it.
- **Performance Tiers**: Prefer nodes with specific hardware (e.g., GPUs, high-memory) for optimal performance, allowing fallback to standard nodes if needed.
- **Cost Optimization**: Prefer nodes in a lower-cost region or spot instance pool, while allowing scheduling elsewhere if those resources are unavailable.
- **Development & Testing**: Prefer scheduling on nodes dedicated to a specific team or environment, while still allowing overflow to shared nodes during peak demand.

## Related Concepts
- [[concepts/preferredduringschedulingignoredduringexecution]]
- [[concepts/requiredduringschedulingignoredduringexecution]]
- [[concepts/node-affinity]]

## Related Entities
- [[entities/kubernetes]]

## Mentions in Source
- "Soft rule: Scheduler 'prefers' matching nodes but will schedule anywhere if needed." — nodeselector-&-nodeaffinity_5d8764
- "preferredDuringSchedulingIgnoredDuringExecution (soft preference)" — nodeselector-&-nodeaffinity_5d8764