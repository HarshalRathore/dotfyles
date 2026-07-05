---
summary: "Resource Requests in Kubernetes define the minimum CPU and memory guarantees for a container at scheduling time, which the kube-scheduler uses to filter and select appropriate nodes. If no node..."
type: concept
title: "Resource Requests"
created:
  - "2026-06-30"
updated:
  - "2026-06-30"
lifecycle: draft
base_confidence: 0.75
sources:
  - "[[sources/resource-requests-&-limits_4bd978]]"
  - "[[sources/kubernetes-autoscaling_59fbf3]]"
tags:
---
## Description
Resource Requests in Kubernetes define the minimum CPU and memory guarantees for a container at scheduling time, which the kube-scheduler uses to filter and select appropriate nodes. If no node meets the requested resources, the pod remains in a `Pending` state. Beyond basic scheduling, these values are also fundamental for cluster resource planning and capacity management, allowing administrators to assess aggregate resource needs. Critically, Resource Requests are used by dynamic resource management tools; for instance, the Vertical Pod Autoscaler (VPA) uses them as baseline values to automatically adjust pod resource allocations over time. Manual vertical scaling also involves directly editing these values (e.g., with `kubectl edit`), which causes the pod to be recreated with the new resource profile.

## Related Concepts
- [[concepts/resource-limits]]
- kube-scheduler
- [[concepts/limitrange]]
- [[concepts/resourcequota]]
- [[concepts/vertical-pod-autoscaler]]
- [[concepts/in-place-pod-vertical-scaling]]
- [[concepts/vertical-scaling]]

## Related Entities
- [[entities/kubernetes]]
- [[entities/pods]]
- [[entities/metrics-server]]

## Mentions in Source

> **Source: resource-requests-&-limits_4bd978**
> - "
  - "
> - "
  - "

> **Source: kubernetes-autoscaling_59fbf3**
> - "
  - "
> - "