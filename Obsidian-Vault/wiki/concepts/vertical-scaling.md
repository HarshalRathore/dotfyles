---
type: concept
title: Vertical Scaling
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/kubernetes-autoscaling_59fbf3]]'
tags:
- scaling
aliases:
- scaling down
- scale up/down
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: Vertical Scaling
---
# Vertical Scaling

## Definition
Vertical scaling is a method of adjusting the resources (such as CPU and memory) allocated to an individual server or container within a computing environment. In the context of container orchestration like Kubernetes, it involves modifying the resource requests and limits defined in a pod's specification.

## Key Characteristics
- Targets a **single** server or pod for resource modification, rather than adding or removing instances.
- Involves increasing ("scaling up") or decreasing ("scaling down") allocated resources like CPU and memory.
- Within Kubernetes, it typically requires deleting and recreating the pod for the new resource settings to take effect.
- Represents the default scaling behavior in Kubernetes, often contrasted with horizontal scaling.
- Emerging features like In-Place Pod Vertical Scaling aim to enable resource adjustments without pod restarts, reducing downtime.

## Applications
- **Performance Tuning:** Adjusting resources for a specific application that has varying performance needs.
- **Cost Optimization:** Reducing resource allocation for underutilized services to save costs.
- **Workload Adaptation:** Scaling resources up to handle temporary increases in computational demand for a specific service, such as during a batch processing job.
- **Kubernetes Pod Management:** Modifying pod specifications to meet changing application requirements as defined by developers or operators.

## Related Concepts
- [[concepts/horizontal-scaling]]
- [[concepts/in-place-pod-vertical-scaling]]
- [[concepts/resource-requests]]
- [[concepts/resource-limits]]

## Related Entities
None.

## Mentions in Source
- "Vertical Scaling = increase/decrease resources (CPU, memory) on **existing** server/pod." — kubernetes-autoscaling_59fbf3
- "Default Behavior: changing CPU/memory requires **pod deletion + recreation**." — kubernetes-autoscaling_59fbf3