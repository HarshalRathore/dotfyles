---
type: concept
title: Node Affinity
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/nodeselector-&-nodeaffinity_5d8764]]'
tags:
- deployment
aliases:
- Node Affinity
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: Node Affinity
---
# Node Affinity

## Definition
Node affinity is an advanced pod scheduling mechanism in Kubernetes that provides more expressive control over pod placement than the basic [[concepts/nodeselector]]. It uses label-based rules with boolean operators to constrain which nodes a pod can or should be scheduled on, supporting both mandatory requirements and soft preferences.

## Key Characteristics
- **Expressive Matching**: Supports multiple label selectors with operators like `In`, `NotIn`, `Exists`, `DoesNotExist`, `Gt`, and `Lt`.
- **Hard Requirements (`requiredDuringSchedulingIgnoredDuringExecution`)**: Pods are only scheduled on nodes that meet all specified node affinity rules. These rules are mandatory.
- **Soft Preferences (`preferredDuringSchedulingIgnoredDuringExecution`)**: Pods are preferably scheduled on nodes matching the rules, but will be scheduled elsewhere if no matching nodes are available. These act as weighted preferences.
- **Superset of `nodeSelector`**: All functionality of [[concepts/nodeselector]] can be expressed with node affinity, but node affinity offers greater flexibility.
- **Defined in Pod Spec**: Configuration is located under `.spec.affinity.nodeAffinity` in a Pod's specification.

## Applications
- **Hardware-Specific Placement**: Scheduling pods that require specific hardware (e.g., GPUs, SSDs) onto nodes with corresponding labels.
- **Multi-Zone or Multi-Region Deployments**: Distributing pods across different availability zones or regions by using zone/region labels.
- **Workload Isolation**: Ensuring certain critical workloads run only on designated, high-performance, or trusted nodes.
- **Graceful Exclusion**: Preventing pods from being scheduled on nodes that are undergoing maintenance, are labeled as problematic, or have insufficient resources (often used in conjunction with taints and tolerations).

## Related Concepts
- [[concepts/labels]]
- [[concepts/nodeselector]]
- [[concepts/soft-rule]]
- [[concepts/requiredduringschedulingignoredduringexecution]]
- [[concepts/preferredduringschedulingignoredduringexecution]]
- taints and tolerations

## Related Entities
- [[entities/kubernetes]]

## Mentions in Source
- "**Node affinity** is a more expressive superset of nodeSelector that supports boolean operators (`In`, `NotIn`, `Exists`, etc.) and “soft” vs. "hard" preferences." — nodeselector-&-nodeaffinity_5d8764