---
type: concept
title: DefaultTolerationSeconds
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/admission-controllers_7667fc]]'
tags:
- scheduling
aliases:
- TolerationDefaults
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: DefaultTolerationSeconds
---
# DefaultTolerationSeconds

## Definition
DefaultTolerationSeconds is a built-in mutating admission controller in Kubernetes that automatically adds default tolerations to Pods for the `node.kubernetes.io/not-ready` and `node.kubernetes.io/unreachable` taints. It runs during the mutating phase of the admission process, ensuring Pods can be scheduled on nodes experiencing temporary issues by applying a default toleration period of 300 seconds (5 minutes).

## Key Characteristics
- Built-in MutatingAdmissionWebhook controller that modifies Pod specifications.
- Adds default tolerations for the `node.kubernetes.io/not-ready` and `node.kubernetes.io/unreachable` taints.
- Applies a default toleration period of 300 seconds (5 minutes) for these taints.
- Runs automatically during the mutating admission phase.
- Aims to improve application availability by allowing Pods to tolerate brief node connectivity issues or node not-ready states.

## Applications
- Provides automatic resilience for stateless workloads by allowing Pods to remain scheduled on nodes experiencing transient network issues or temporary node failure.
- Reduces manual configuration burden by applying sensible default tolerations, ensuring Pods are not evicted immediately when a node becomes unreachable or not ready.
- Commonly used with deployments, ReplicaSets, and other Pod-producing controllers to enhance cluster stability during node disruptions.

## Related Concepts
- [[concepts/mutating-phase]]
- [[concepts/admission-controller]]
- [[concepts/taints]]
- [[concepts/tolerations]]

## Related Entities

## Mentions in Source
- "**DefaultTolerationSeconds**: adds default tolerations for NotReady/Unreachable node taints." — admission-controllers_7667fc
- "Runs **MutatingAdmissionWebhook** and built-in mutating controllers (e.g., **AlwaysPullImages**, **DefaultStorageClass**, **DefaultIngressClass**, **LimitRanger**)." — admission-controllers_7667fc