---
type: concept
title: "matchExpressions"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "nodeselector-&-nodeaffinity_5d8764"
tags:
  - scheduling
aliases:
  - matchExpress
---
# matchExpressions

## Definition
`matchExpressions` are a key-value pair matching mechanism used within Kubernetes node affinity rules to specify requirements for node selection. They are a more flexible and powerful alternative to simple `nodeSelector` labels, enabling complex boolean logic for node placement decisions during pod scheduling.

## Key Characteristics
- **Operator Support**: Supports multiple operators for flexible matching: `In`, `NotIn`, `Exists`, `DoesNotExist`, `Gt` (greater than), and `Lt` (less than).
- **Logical Grouping**: Contained within `nodeSelectorTerms`. Multiple expressions within a single `nodeSelectorTerm` are evaluated with `AND` logic. Multiple `nodeSelectorTerms` within the same affinity rule are evaluated with `OR` logic.
- **Expressive Constraints**: Allows for complex node selection constraints beyond simple label existence or equality, such as matching a label value against a list of options or checking for label absence.
- **Integral to Node Affinity**: A core component of Kubernetes node affinity rules (both `requiredDuringSchedulingIgnoredDuringExecution` and `preferredDuringSchedulingIgnoredDuringExecution`).

## Applications
- **Workload Segregation**: Ensuring specific workloads (e.g., GPU-intensive applications) are only scheduled on nodes with the corresponding hardware or capability labels.
- **Environment-Based Placement**: Separating development, staging, and production workloads by scheduling them to node groups with specific environment labels.
- **License Compliance or Cost Optimization**: Directing workloads requiring specific licensed software or targeting spot/preemptible instances to the appropriate node pools.
- **Complex Topology Requirements**: Implementing multi-criteria placement rules, such as "place on nodes in zone A with a specific CPU model OR on any nodes with a large memory capacity."

## Related Concepts
- [[concepts/nodeselector]]
- [[concepts/node-affinity]]
- [[concepts/requiredduringschedulingignoredduringexecution]]

## Related Entities
- [[entities/kubernetes]]

## Mentions in Source
- "matchExpressions allow operators: In, NotIn, Exists, DoesNotExist, Gt, Lt." — nodeselector-&-nodeaffinity_5d8764
- "Example – OR logic: requiredDuringSchedulingIgnoredDuringExecution: nodeSelectorTerms: - matchExpressions: - key: size operator: In values: - large - medium" — nodeselector-&-nodeaffinity_5d8764