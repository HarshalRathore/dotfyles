---
type: concept
title: TaintNodesByCondition
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/admission-controllers_7667fc]]'
tags:
- scheduling
aliases:
- Taint Nodes By Condition
- TNC
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: TaintNodesByCondition
---
# TaintNodesByCondition

## Definition
TaintNodesByCondition is a built-in mutating admission controller within the Kubernetes API server that automatically applies taints to new nodes based on their reported conditions, such as `NotReady`. It runs during the mutating phase of the admission process to prevent pods from being scheduled onto nodes that are not yet ready or are experiencing issues, thereby enforcing proper scheduling behavior.

## Key Characteristics
- It is a **mutating admission controller**, executing automatically in the mutating phase.
- It **applies taints** (e.g., `NoSchedule`) to nodes as they join the cluster or when specific node conditions change.
- It primarily uses the `NotReady` condition to add a `NoSchedule` taint, ensuring pods are not scheduled on unhealthy nodes.
- It works in conjunction with the node lifecycle controller to manage node taints and handle scheduling constraints.
- It helps maintain cluster stability by preventing workload placement on potentially problematic nodes.

## Applications
- Ensuring that newly joined nodes are not scheduled for workloads until they pass readiness checks.
- Automatically reacting to node condition changes (like network or disk pressure) to evict or prevent scheduling.
- Providing a foundational mechanism for Kubernetes' node health management and self-healing capabilities.
- Supporting scenarios where manual taint management is impractical, especially in large, dynamic clusters.

## Related Concepts
- Mutating Phase|Mutating Phase]]
- Admission Controller|Admission Controller]]
- Taints and Tolerations

## Related Entities
No related entities are mentioned in the source material.

## Mentions in Source
- **TaintNodesByCondition**: taints new nodes as NotReady/NoSchedule. — admission-controllers_7667fc
- Runs **MutatingAdmissionWebhook** and built-in mutating controllers (e.g., **AlwaysPullImages**, **DefaultStorageClass**, **DefaultIngressClass**, **LimitRanger**). — admission-controllers_7667fc