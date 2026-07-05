---
type: concept
title: "ReplicationController"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/replication-controller-&-replicaset_285a2a]]"
tags:
  - deployment
aliases:
  - Replication Controller
---
# ReplicationController

## Definition
A ReplicationController (RC) is a core Kubernetes controller that maintains a stable set of replica Pods running. It guarantees a specified number of identical Pods are always available and operational. If Pods fail, crash, or are deleted, the ReplicationController automatically creates new ones to meet the defined count, providing fundamental self-healing and high-availability capabilities for stateless applications.

## Key Characteristics
- **Desired State Enforcement:** Watches a set of Pods (using a label selector) and creates or terminates Pods to maintain the desired replica count.
- **Self-Healing:** Automatically replaces Pods that fail, are deleted, or exit their process to ensure availability.
- **Equality-Based Selectors:** Uses simple equality-based label selectors (e.g., `key=value`) to identify target Pods, which is a limitation compared to its successor.
- **Foundational Role:** One of the original Kubernetes workload controllers, providing a basic building block for managing application Pods.
- **Legacy Status:** While functional, it is largely superseded by the ReplicaSet, which supports more advanced, set-based label selectors.

## Applications
- Managing simple, stateless application tiers where pod replica count is the primary scaling concern.
- Ensuring basic availability and restart of a defined number of pod instances.
- Understanding the fundamental concepts of Kubernetes controllers, as the ReplicationController is the archetype for later, more advanced controllers like ReplicaSet and Deployment.

## Related Concepts
- [[concepts/replicasets]]
- [[concepts/labels]]
- [[concepts/selectors]]
- [[concepts/deployment]]

## Related Entities
- [[entities/kubernetes]]
- [[entities/pods]]

## Mentions in Source
- "Kubernetes uses ReplicationControllers (RC) and their successor ReplicaSets (RS) to ensure a desired number of pod replicas are running at all times." — replication-controller-&-replicaset_285a2a
- "RC: original controller; supports only equality selectors." — replication-controller-&-replicaset_285a2a