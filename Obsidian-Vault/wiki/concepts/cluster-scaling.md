---
type: concept
title: Cluster Scaling
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/kubernetes-autoscaling_59fbf3]]'
tags:
- scaling
aliases:
- Infrastructure Scaling
- Cluster Scaling
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: Cluster Scaling
---
# Cluster Scaling

## Definition
Cluster scaling refers to the process of adjusting the number of worker nodes (servers) that comprise the computational infrastructure of a Kubernetes cluster. This is distinct from workload scaling, which focuses on adjusting the number of pods running applications within the cluster. Cluster scaling manages the underlying node pool to ensure the cluster has sufficient resources to run scheduled workloads.

## Key Characteristics
- Affects the node layer (servers) of the Kubernetes infrastructure, not the pod (workload) layer.
- Can be performed manually, such as by adding or removing virtual machines from the node pool.
- Is automated by the Cluster Autoscaler, which adjusts the node count based on pending pods and resource utilization.
- Addresses infrastructure-level constraints, such as insufficient CPU, memory, or inability to schedule pods due to lack of nodes.
- A separate operational concern from Horizontal Pod Autoscaler (HPA) or Vertical Pod Autoscaler (VPA), which handle workload scaling.

## Applications
- Dynamically expanding cluster capacity to handle predictable or unpredictable spikes in application demand.
- Optimizing cloud infrastructure costs by scaling down underutilized nodes during off-peak hours.
- Automating infrastructure management in cloud environments, reducing the need for manual intervention.
- Ensuring high availability and reliability by maintaining enough nodes to run all critical workloads and absorb failures.

## Related Concepts
- [[concepts/workload-scaling]]
- [[concepts/cluster-autoscaler]]
- [[concepts/horizontalpodautoscaler]]
- [[concepts/vertical-pod-autoscaler]]
- 

## Related Entities
- [[entities/worker-node-1]]
- [[entities/worker-node-2]]
- [[entities/metrics-server]]

## Mentions in Source
- **Cluster Scaling**: affects nodes (servers). — kubernetes-autoscaling_59fbf3
- **Workload Scaling** vs. **Cluster Scaling** — kubernetes-autoscaling_59fbf3