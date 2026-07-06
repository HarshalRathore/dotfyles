---
type: concept
title: Resource Limits
created:
- datetime.date(2026
- 6
- 30)
updated:
- datetime.date(2026
- 6
- 30)
sources:
- '[[sources/kubernetes-autoscaling_59fbf3]]'
tags:
- resources
- qos
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: Resource Limits
---
## Description
Resource Limits define the maximum allowed CPU and memory consumption for a container. They work with Resource Requests to form a container's complete resource specification, ensuring cluster stability and predictable performance. CPU limits result in kernel-level throttling when a container attempts to exceed its cap, while memory limits lead to the container being forcibly terminated via an OOM kill. These limits are crucial for preventing a single container from monopolizing node resources and for enforcing quality of service (QoS) classifications. Beyond static configuration, resource limits are a key component of vertical scaling operations. They can be manually adjusted using commands like `kubectl edit` to right-size workloads, though this typically causes pod recreation. More significantly, the Vertical Pod Autoscaler (VPA) can automatically adjust pod resource requests and limits over time based on observed usage, optimizing resource efficiency without manual intervention.

## Key Characteristics
- Enforced at the kernel level by the underlying node operating system
- CPU limits result in throttling—the container is slowed down rather than terminated
- Memory limits result in OOM kill—the container is forcibly terminated if it exceeds the limit
- Set within the container's `resources.limits` field in the pod specification
- Work in conjunction with Resource Requests to define both minimum guarantees and maximum bounds
- Prevent a single container from monopolizing node resources
- Essential for ensuring cluster stability and predictable performance

## Applications
- Ensuring fair resource distribution across multi-tenant Kubernetes clusters
- Preventing runaway containers from destabilizing nodes through resource exhaustion
- Enforcing cost controls in cloud environments by bounding resource consumption
- Supporting quality of service (QoS) classifications for pods (Guaranteed, Burstable, BestEffort)
- Complementing LimitRange and ResourceQuota policies for organizational resource governance
- Acting as the adjustable parameters for vertical scaling operations, both manual and automated

## Related Concepts
- [[concepts/resource-requests]]
- [[concepts/cpu-throttling]]
- [[concepts/oom-kill]]
- [[concepts/limitrange]]
- [[concepts/resourcequota]]

## Related Entities
- [[entities/kubernetes]]
- [[entities/pods]]

## Mentions in Source
> **Source: resource-requests-&-limits_4bd978**
> - Add `resources.limits` under each container to cap usage:
> - **CPU** → kernel throttles on excess; **Memory** → kernel OOM-kills container if pressure.

> **Source: kubernetes-autoscaling_59fbf3**
> - Manual V-Scale (resources): `kubectl edit` to bump requests/limits → pod recreated.
> - Vertical Pod Autoscaler (VPA) ... **automatically adjust pod resource requests/limits over time**.