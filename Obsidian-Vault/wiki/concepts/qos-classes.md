---
type: concept
title: "QoS classes"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/kubernetes-installation-steps_e573e8]]"
tags:
  - deployment
aliases:
  - Kubernetes QoS
---
# QoS classes

## Definition
Quality of Service (QoS) classes in Kubernetes are a classification system that categorizes pods based on their CPU and memory resource requests and limits. This classification determines a pod's scheduling priority and the policies applied to it during resource contention or node pressure, directly impacting the cluster's stability and performance predictability.

## Key Characteristics
- **Three-Tiered System:** Pods are classified into one of three classes: `Guaranteed`, `Burstable`, or `BestEffort`, with strict hierarchical ordering.
- **Resource Specification Dependent:** A pod's QoS class is automatically determined by the presence and values of its resource `requests` and `limits` in its container specifications.
- **Eviction Priority:** Under memory pressure, the kubelet evicts pods starting from the lowest priority class (`BestEffort`), proceeding upwards to protect higher-priority workloads.
- **Scheduling Influence:** While not a direct scheduling constraint, QoS classes influence pod stability, making higher-QoS pods less likely to be terminated to free resources.
- **Depends on Swap Being Disabled:** Accurate enforcement and tracking of memory QoS classes by the kubelet requires the node's swap space to be completely disabled.

## Applications
- **Prioritizing Critical Workloads:** System-critical components (e.g., control plane processes) are configured as `Guaranteed` to ensure they are not evicted under memory pressure, maintaining cluster stability.
- **Managing Resource Efficiency:** `BestEffort` pods are ideal for batch jobs or non-critical, stateless services that can tolerate being terminated. This allows the cluster to utilize spare resources without risking critical applications.
- **Stabilizing Production Services:** Production applications are often set to `Burstable`, guaranteeing a baseline resource level while allowing for temporary scaling during peak loads.
- **Improving Predictability:** By classifying workloads, administrators can design resource allocation strategies that prevent single applications from monopolizing node resources, leading to more predictable cluster behavior.

## Related Concepts
- [[concepts/disable-swap]]
- [[concepts/container-runtime]]

## Related Entities
- [[entities/kubelet]]
- [[entities/kubernetes]]

## Mentions in Source
- "Kubernetes requires swap to be disabled so that the kubelet can accurately track available memory and enforce QoS classes without interference from the host’s swap mechanism." — kubernetes-installation-steps_e573e8