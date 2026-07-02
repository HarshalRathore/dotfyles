---
type: concept
title: "Cluster Autoscaler"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "kubernetes-autoscaling_59fbf3"
tags:
  - scaling
aliases:
  - K8s Cluster Autoscaler
  - Kubernetes Cluster Autoscaler
---
# Cluster Autoscaler

## Definition
Cluster Autoscaler is a Kubernetes component that automatically adjusts the number of worker nodes in a cluster based on resource demands. It scales the node pool up when there are unschedulable pods due to insufficient resources, and scales down when nodes are underutilized, optimizing resource usage and cost efficiency.

## Key Characteristics
- Automates the horizontal scaling of cluster infrastructure (nodes), not workloads (pods)
- Adds new nodes when pods cannot be scheduled due to insufficient CPU, memory, or other resources
- Removes underutilized nodes when their resource usage falls below a configured threshold
- Integrates with cloud provider APIs (AWS, GCP, Azure) to provision or terminate virtual machines
- Operates as a control loop that continuously monitors pod scheduling and node utilization
- Complements workload-level autoscalers (HPA, VPA) to provide full cluster autoscaling capability
- Requires proper configuration of node groups, resource requests, and scaling policies


## Applications
- **Cost optimization**: Automatically scales down infrastructure during low-demand periods to reduce cloud expenditure
- **High availability**: Automatically scales up to ensure sufficient capacity for application workloads during traffic spikes
- **Dynamic workload management**: Handles batch processing jobs or variable workloads without manual intervention
- **Cluster maintenance**: Facilitates node upgrades by automatically draining and replacing nodes
- **Resource efficiency**: Maintains optimal cluster size by removing idle resources


## Related Concepts
- Horizontal Pod Autoscaler
- Vertical Pod Autoscaler
- [[worker-node]]


## Related Entities
- [[entities/worker-node-1]]
- [[entities/worker-node-2]]
- [[entities/metrics-server]]

## Mentions in Source
- "Automated**: use built-in autoscalers (HPA, VPA) or Cluster Autoscaler for nodes." — kubernetes-autoscaling_59fbf3
- "**Cluster Scaling**: affects nodes (servers)." — kubernetes-autoscaling_59fbf3