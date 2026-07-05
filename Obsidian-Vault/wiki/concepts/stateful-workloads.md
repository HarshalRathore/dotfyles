---
type: concept
title: "Stateful Workloads"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/kubernetes-autoscaling_59fbf3]]"
tags:
  - deployment
aliases:
  - Persistent Workloads
---
# Stateful Workloads

## Definition
Stateful workloads are applications that maintain persistent, unique state and require stable network identities and persistent storage. Unlike stateless applications, their operation depends on data that must survive restarts, rescheduling, or scaling events.

## Key Characteristics
- **Persistent State:** Maintain data that must be preserved across pod restarts or rescheduling.
- **Stable Network Identity:** Require a unique, predictable network address (e.g., a stable DNS name) for each instance.
- **Ordered Deployment/Scaling:** Often managed via constructs like StatefulSets, which provide ordered and graceful deployment and scaling.
- **Resource Sensitivity:** Frequently long-running or compute-intensive, requiring careful right-sizing of resources without disruptive horizontal scaling.

## Applications
- **Databases:** Relational databases (e.g., PostgreSQL, MySQL) and NoSQL databases (e.g., Cassandra, MongoDB) where each instance holds unique data.
- **JVM Applications:** Java applications that use in-memory caches or maintain local state.
- **Machine Learning Workloads:** Training jobs that maintain model state or use large local datasets.
- **Distributed Systems:** Any application requiring stable peer-to-peer communication or consistent storage (e.g., ZooKeeper, etcd).

## Related Concepts
- [[concepts/vertical-pod-autoscaler]] (VPA) – Ideal for right-sizing resources in stateful workloads without disruption.
- [[concepts/statefulsets]] – Kubernetes object for managing stateful applications with stable network identities and persistent storage.
- [[concepts/horizontalpodautoscaler]] (HPA) – Less suitable for stateful workloads due to the challenges of scaling state.

## Related Entities

## Mentions in Source
- "Ideal for **stateful or heavy-compute** workloads (databases, JVM, ML)." — kubernetes-autoscaling_59fbf3
- "**Resource tuning** (stateful/long-running): use **VPA**." — kubernetes-autoscaling_59fbf3