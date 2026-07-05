---
summary: Admission controllers intercept API requests to enforce cluster policies through mutating and validating phases.
type: concept
title: "Admission Controller"
created:
  - "2026-06-30"
updated:
  - "2026-06-30"
lifecycle: draft
base_confidence: 0.75
sources:
  - "[[sources/kubernetes-autoscaling_59fbf3]]"
  - "[[sources/admission-controllers_7667fc]]"
tags:
---
## Description
An Admission Controller is a component within the Kubernetes API server that intercepts create, update, and delete requests after authentication and authorization but before object persistence. It enforces cluster-wide policies by validating, mutating, or rejecting objects based on defined rules, running in two distinct phases: mutating (which can modify request objects) and validating (which only checks for compliance). This mechanism is crucial for implementing security policies, resource constraints, and default behaviors that RBAC alone cannot enforce.

In the context of the Vertical Pod Autoscaler (VPA), a specific Admission Controller acts as a mutating controller that intercepts pod creation requests. It injects recommended CPU and memory values from the VPA Recommender into the pod specification, ensuring every new pod starts with optimized resource requests and limits based on historical usage patterns. This prevents resource mismatches and over-provisioning from the outset, working in conjunction with the VPA Updater to maintain consistent resource allocation and streamline workload management without pod restarts in supported modes.


## Related Concepts
- [[concepts/vertical-pod-autoscaler]]
- [[concepts/recommender]]
- [[concepts/updater]]


## Related Entities
- No related entities


## Mentions in Source
- "
  - " — kubernetes-autoscaling_59fbf3
> **Source: admission-controllers_7667fc**
> - "
  - "
> - "