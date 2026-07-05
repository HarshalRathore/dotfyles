---
summary: "A Deployment manages a set of ReplicaSets, which in turn manage the Pods. This higher-level abstraction provides powerful features for application lifecycle management, including declarative up..."
type: concept
title: "Deployment"
created:
  - "2026-06-30"
updated:
  - "2026-06-30"
lifecycle: draft
base_confidence: 0.75
sources:
  - "[[sources/rolling-updates-&-rollbacks_f484ef]]"
  - "[[sources/replication-controller-&-replicaset_285a2a]]"
  - "[[sources/main-kubernetes-components_82b036]]"
tags:
---
## Description
A Deployment manages a set of ReplicaSets, which in turn manage the Pods. This higher-level abstraction provides powerful features for application lifecycle management, including declarative updates, automatic scaling, and rollback capabilities. Deployments serve as a blueprint for scaling applications, ensuring a specified number of pod replicas are running at all times. They work seamlessly with [[concepts/services]] to load balance traffic across replicas, making them fundamental for managing stateless applications and achieving high availability. Deployments are the primary and recommended tool for managing stateless applications, encapsulating the complexities of underlying ReplicaSet and Pod management. They ensure high availability and enable smooth, zero-downtime updates through strategies like **Rolling Updates**. By using a Deployment, you simplify application deployment, scaling, and management, aligning with Kubernetes best practices.

## Related Concepts
- [[concepts/revision-history]]
- [[concepts/rollback]]
- replicaset
- [[concepts/replicationcontroller]]
- [[concepts/rolling-update-strategy]]
- replicas
- [[concepts/services]]

## Related Entities
- [[entities/kubectl]]
- [[entities/pods]]
- [[entities/kubernetes]]

## Mentions in Source
> **Source: rolling-updates-&-rollbacks_f484ef**
- "
  - "
- "
  - "
- "
  - "

> **Source: replication-controller-&-replicaset_285a2a**
- "
  - "
- "
  - "

> **Source: main-kubernetes-components_82b036**
- "
  - "
- "