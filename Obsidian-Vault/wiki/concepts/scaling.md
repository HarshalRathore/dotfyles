---
summary: "Scaling is a fundamental operational practice in Kubernetes for maintaining performance and cost-efficiency. At the workload level, it is primarily understood as **horizontal scaling**—adjustin..."
type: concept
title: "Scaling"
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
Scaling is a fundamental operational practice in Kubernetes for maintaining performance and cost-efficiency. At the workload level, it is primarily understood as **horizontal scaling**—adjusting the number of running pod replicas for a stateless application to handle traffic. This is often managed automatically by controllers like the HorizontalPodAutoscaler (HPA) based on metrics such as CPU usage. A complementary approach is **vertical scaling**, which involves tuning the resource requests and limits of existing pods to optimize their performance for a given load. Beyond the workload, scaling can also refer to **cluster scaling**, which involves adding or removing worker nodes to change the cluster's overall capacity. The choice between methods depends on the application's needs; for instance, the HPA is recommended for rapid scaling needs, while the Vertical Pod Autoscaler (VPA) is suited for resource tuning.

## Related Concepts
- [[concepts/horizontalpodautoscaler]]
- [[concepts/replicasets]]
- [[concepts/replicationcontroller]]
- [[concepts/vertical-scaling]]
- [[concepts/horizontal-scaling]]
- [[concepts/vertical-pod-autoscaler]]

## Related Entities
- [[entities/kubernetes]]
- [[entities/kubectl]]

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
  - "
> - "