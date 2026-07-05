---
summary: "Desired State in Kubernetes refers to the user-defined configuration and specifications that dictate how the cluster and its workloads should behave. Controllers within the control plane operat..."
type: concept
title: "Desired State"
created:
  - "2026-06-30"
updated:
  - "2026-06-30"
lifecycle: draft
base_confidence: 0.75
sources:
  - "[[sources/replication-controller-&-replicaset_285a2a]]"
  - "[[sources/main-kubernetes-components_82b036]]"

---
## Description
Desired State in Kubernetes refers to the user-defined configuration and specifications that dictate how the cluster and its workloads should behave. Controllers within the control plane operate on a control loop to continuously reconcile the actual, current state of the cluster with this declared desired state, making automatic adjustments as needed. This concept is the foundation of Kubernetes' declarative model, where users specify *what* they want rather than detailing *how* to achieve it. It abstracts away operational complexity, enabling automated scaling, deployments, and self-healing based on the user's intent.

## Related Concepts
- [[concepts/replicasets]]
- [[concepts/replicationcontroller]]
- [[concepts/desired-state]]

## Related Entities
- [[entities/kubernetes]]

## Mentions in Source
> **Source: replication-controller-&-replicaset_285a2a**
> - "
  - "

> **Source: main-kubernetes-components_82b036**
> - "
  - "
> - "