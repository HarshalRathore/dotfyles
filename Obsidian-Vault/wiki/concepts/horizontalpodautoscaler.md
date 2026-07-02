---
summary: "HorizontalPodAutoscaler (HPA) is a core Kubernetes resource that automatically manages the replica count of a target workload, such as a ReplicaSet or Deployment. It con..."
type: concept
title: "Horizontalpodautoscaler"
created:
  - "2026-06-30"
updated:
  - "2026-06-30"
lifecycle: draft
base_confidence: 0.75
sources:
  - "replication-controller-&-replicaset_285a2a"
  - "kubernetes-autoscaling_59fbf3"
---
## Description
HorizontalPodAutoscaler (HPA) is a core Kubernetes resource that automatically manages the replica count of a target workload, such as a [[concepts/replicasets]] or Deployment. It continuously monitors resource utilization, typically CPU and memory metrics supplied by the [[entities/metrics-server]], and scales the number of pods up or down to match the observed load. Administrators can define a minimum and maximum number of replicas to maintain control over the scaling scope and cost. HPA is particularly effective for stateless, web-facing applications, enabling them to handle traffic spikes by automatically adding pods and conserve resources by removing them during periods of low demand. The controller supports flexible scaling based on multiple metrics, including custom and external ones. It has been a standard feature of Kubernetes since version 1.23 and can be created either imperatively with `kubectl autoscale` or declaratively using a HorizontalPodAutoscaler manifest.

## Related Concepts
- [[concepts/scaling]]
- [[concepts/replicasets]]
- [[concepts/cpu-throttling]]

## Related Entities
- [[entities/kubernetes]]
- [[entities/metrics-server]]

## Mentions in Source

> **Source: replication-controller-&-replicaset_285a2a**
> - "
  - "
> - "
  - "

> **Source: kubernetes-autoscaling_59fbf3**
> - "
  - "
> - "