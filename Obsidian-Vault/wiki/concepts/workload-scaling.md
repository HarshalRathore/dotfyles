---
type: concept
title: Workload Scaling
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/kubernetes-autoscaling_59fbf3]]'
tags:
- scaling
aliases:
- Pod Scaling
- Container Scaling
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: Workload Scaling
---
# Workload Scaling

## Definition
Workload scaling is the process of adjusting the number of pods or the resources (CPU, memory) allocated to containers within a specific application workload in Kubernetes. It is a core concept for managing application performance and resource efficiency, distinguished from cluster scaling which modifies the underlying node infrastructure.

## Key Characteristics
- Operates at the application (workload) level, not the cluster level.
- Primarily involves two mechanisms: scaling out/in (adding/removing pods) and scaling up/down (adjusting container resource requests/limits).
- Automated implementation is achieved through the Horizontal Pod Autoscaler (HPA) and Vertical Pod Autoscaler (VPA).
- Manual scaling can be performed using command-line tools like `kubectl`.
- Focuses on optimizing resource utilization and application responsiveness to changing demand.

## Applications
- **Dynamic Load Handling**: Automatically adjusting pod count based on real-time metrics (CPU, memory, custom metrics) to handle traffic spikes or lulls.
- **Resource Optimization**: Using VPA to right-size container resource requests and limits, preventing over-provisioning and improving node utilization.
- **Cost Efficiency**: Scaling down workloads during off-peak hours to reduce resource consumption and cloud costs.
- **Maintaining Application Performance/SLOs**: Ensuring applications have sufficient pods and resources to meet latency and availability requirements under varying load.
- **Simplified Operations**: Providing declarative ways to define scaling policies, reducing manual intervention in workload management.

## Related Concepts
- [[concepts/cluster-scaling]]
- [[concepts/horizontalpodautoscaler]]
- [[concepts/vertical-pod-autoscaler]]

## Related Entities

## Mentions in Source
- **Workload Scaling**: affects pods/containers. — kubernetes-autoscaling_59fbf3
- **Workload Scaling** vs. **Cluster Scaling** — kubernetes-autoscaling_59fbf3