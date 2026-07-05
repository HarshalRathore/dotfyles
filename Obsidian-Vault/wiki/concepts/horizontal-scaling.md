---
type: concept
title: "Horizontal Scaling"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/kubernetes-autoscaling_59fbf3]]"
tags:
  - scaling
aliases:
  - "Scale-Out"
---
# Horizontal Scaling

## Definition
Horizontal scaling (also known as scaling out or scaling in) is the process of adding or removing instances (such as servers, containers, or pods) to distribute and share the workload across a system. It increases or decreases the system's capacity to handle load by changing the number of identical computing resources, rather than modifying the resources of individual instances.

## Key Characteristics
- Involves adding or removing discrete instances (nodes, servers, pods) to a system.
- Distributes load across multiple identical instances to improve performance and availability.
- Contrasts with [[concepts/vertical-scaling]], which increases or decreases the resources (CPU, memory) of a single instance.
- In a Kubernetes context, it primarily refers to changing the number of pod replicas for a workload, often managed by the [[concepts/horizontalpodautoscaler]].
- Ideal for stateless applications where any instance can handle any request.
- Provides a mechanism to handle sudden traffic spikes and variable workloads.

## Applications
- **Handling Traffic Spikes:** Automatically scaling out web server frontends or API services during peak load periods.
- **Improving Application Availability:** Distributing workload across multiple instances to prevent a single point of failure.
- **Microservices Architecture:** Scaling individual services independently based on their specific load requirements.
- **Container Orchestration (Kubernetes):** Adjusting the replica count of Deployments or ReplicaSets to match demand.
- **Batch Processing:** Increasing the number of worker pods or nodes to process large queues of jobs faster.

## Related Concepts
- [[concepts/vertical-scaling]]
- [[concepts/horizontalpodautoscaler]]
- [[concepts/scaling]]
- ReplicaSets

## Related Entities

## Mentions in Source
- "Horizontal Scaling = add/remove **instances** (servers or pods) to share load." — kubernetes-autoscaling_59fbf3
- "Workload Scaling: affects pods/containers." — kubernetes-autoscaling_59fbf3