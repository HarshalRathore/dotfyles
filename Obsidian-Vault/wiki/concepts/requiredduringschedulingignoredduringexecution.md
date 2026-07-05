---
summary: "`requiredDuringSchedulingIgnoredDuringExecution` is the primary implementation of a '"
type: concept
title: "Requiredduringschedulingignoredduringexecution"
created:
  - "2026-06-30"
updated:
  - "2026-06-30"
lifecycle: draft
base_confidence: 0.75
sources:
  - "[[sources/nodeselector-&-nodeaffinity_5d8764]]"

---
## Description
`requiredDuringSchedulingIgnoredDuringExecution` is the primary implementation of a "
  - " in Kubernetes node affinity, representing a non-negotiable requirement for Pod placement. The kube-scheduler must find a node that satisfies all defined `matchExpressions` before it can assign the Pod; if no such node exists, scheduling fails and the Pod stays pending. Once the Pod is scheduled and running, this rule is not continuously enforced, meaning modifications to node labels that break the affinity will not cause the Pod to be evicted or rescheduled. This one-time enforcement provides deterministic placement for Pods with specific hardware, security, or data locality constraints, such as needing GPUs, residing in a particular availability zone, or adhering to compliance boundaries. It is defined directly in a Pod's `spec.affinity.nodeAffinity` field and stands in contrast to "
  - " that express preferences rather than mandates.

## Related Concepts
- [[concepts/node-affinity]]: The parent feature that allows controlling which nodes a Pod is eligible to be scheduled on.
- [[concepts/preferredduringschedulingignoredduringexecution]]: The softer counterpart (soft rule) that expresses a preference for certain nodes but will schedule elsewhere if no preferred nodes are available.
- Scheduling: The overall process in Kubernetes where the scheduler assigns Pods to Nodes.
- Pod Scheduling: The specific act of assigning a Pod to a node.

## Related Entities
- [[entities/kubernetes]]: The container orchestration system where this scheduling rule is a fundamental feature.

## Mentions in Source
> **Source: nodeselector-&-nodeaffinity_5d8764**
> - `requiredDuringSchedulingIgnoredDuringExecution` (hard requirement)
> - Hard rule: Pod **won’t** schedule if no node matches.

> **Source: nodeselector-&-nodeaffinity_5d8764**
> - "
  - "
> - "
  - "
> - "
  - "
> - "
  - "
> - "