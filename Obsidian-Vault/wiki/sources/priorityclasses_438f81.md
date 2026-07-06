---
summary: 'This source details **PriorityClasses**, a core scheduling mechanism in Kubernetes that assigns integer priority values to Pods to manage scheduling order and resource contention. The '
tags:
- PriorityClass
- Pod Preemption
- priorityClassName
- globalDefault
- preemptionPolicy
aliases:
- Pod Priority and Preemption
- Kubernetes PriorityClasses
contentHash: de6-b288de62
generation_complete: true
title: PriorityClasses in Kubernetes - Summary
category: sources
sources: []
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
created: '2026-07-02T13:38:25.552843+00:00'
updated: '2026-07-02T13:38:25.552843+00:00'
---
# PriorityClasses in Kubernetes - Summary

## Source
- Original file: 
- Ingested: 2026-06-30

## Core Content
This source details **PriorityClasses**, a core scheduling mechanism in Kubernetes that assigns integer priority values to Pods to manage scheduling order and resource contention. The [[concepts/priorityclass]] is a cluster-scoped object in the `scheduling.k8s.io/v1` API, with key attributes like a numeric `value` (higher is more important), an optional `globalDefault` flag, and a `preemptionPolicy`. Pods use this via the `priorityClassName` field. The mechanism enables **Pod Preemption**, where higher-priority Pods can evict lower-priority ones when resources are scarce. The `preemptionPolicy` defines if a Pod will preempt others (`PreemptLowerPriority`) or wait in the queue (`Never`). The document covers priority value ranges, provides YAML examples, and outlines critical use cases for protecting system components and important services.

## Key Entities
- [[concepts/priorityclass]]
- [[concepts/pod-preemption]]
- [[concepts/priorityclassname]]
- [[concepts/globaldefault]]
- [[concepts/preemptionpolicy]]

## Key Concepts
- [[concepts/priorityclass]]
- [[concepts/pod-preemption]]
- [[concepts/priorityclassname]]
- [[concepts/globaldefault]]
- [[concepts/preemptionpolicy]]

## Main Points
- A [[concepts/priorityclass]] defines a priority value and preemption rules for Pods in a Kubernetes cluster.
- The `priorityClassName` field in a Pod spec links the Pod to its assigned [[concepts/priorityclass]].
- [[concepts/pod-preemption]] allows higher-priority Pods to evict lower-priority Pods to secure resources when needed.
- The `preemptionPolicy` controls this behavior, with `Never` being the non-evicting alternative.
- Built-in system PriorityClasses like `system-node-critical` protect essential control-plane components with high values.
- This system is vital for ensuring cluster stability and the proper scheduling of critical workloads.