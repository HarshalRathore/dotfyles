---
type: concept
title: "nodeSelector"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/nodeselector-&-nodeaffinity_5d8764]]"
tags:
  - deployment
aliases:
  - node selector
---
# nodeSelector

## Definition
`nodeSelector` is a simple and straightforward method in Kubernetes for constraining pods to specific nodes. Pods specify a single map of key-value pairs that must exactly match labels on a candidate node. This forces the scheduler to only consider nodes where all specified labels are present.

## Key Characteristics
- **Simple Label-Based Scheduling**: Requires a direct and exact match between pod-specified labels and node labels.
- **Single Map Constraint**: Uses a single, flat key-value pair map in the pod specification.
- **Limited Expressiveness**: Cannot express complex scheduling logic such as OR conditions, NOT conditions, or flexible matching rules.
- **Foundational Scheduling Primitive**: Serves as a basic building block for pod placement, often used for straightforward placement requirements.
- **Requires Node Labeling**: Nodes must be explicitly labeled with the corresponding key-value pairs before scheduling can occur.

## Applications
- **Basic Workload Placement**: Directing pods to nodes with specific hardware (e.g., GPUs, SSDs) or network configurations in simple setups.
- **Environment Segregation**: Assigning development or testing pods to a dedicated set of worker nodes by label.
- **Regulatory Compliance**: Ensuring pods that handle sensitive data are scheduled on nodes within a specific geographic or security zone, marked by labels.
- **Simplified Configuration**: Quick and easy scheduling rule when advanced scheduling features like node affinity are not required.

## Related Concepts
- [[concepts/labels]]
- [[concepts/node-affinity]]
- [[concepts/soft-rule]]
- Taints and Tolerations

## Related Entities
- [[entities/kubernetes]]

## Mentions in Source
- "nodeSelector is the simplest way to constrain pods to nodes by matching a single set of node labels." — nodeselector-&-nodeaffinity_5d8764