---
summary: "Self-reconciling is the automatic state maintenance for static Pods managed directly by a node's kubelet. It ensures the Pod's runtime state matches its manifest specification through automatic..."
type: concept
title: "Self Reconciling"
created:
  - "2026-06-30"
updated:
  - "2026-06-30"
lifecycle: draft
base_confidence: 0.75
sources:
  - "[[sources/static-pod_d72e06]]"
  - "[[sources/replication-controller-&-replicaset_285a2a]]"

---
## Description
Self-reconciling is the automatic state maintenance for static Pods managed directly by a node's kubelet. It ensures the Pod's runtime state matches its manifest specification through automatic recovery, synchronization, and cleanup actions. This node-level reconciliation contrasts with the self-healing mechanism employed by control-plane components like ReplicationControllers and ReplicaSets. Self-healing ensures application resilience by having a controller monitor and replace failed Pods to maintain a specified number of healthy replicas, thus providing high availability. Both concepts are fundamental to Kubernetes' design for fault tolerance, with self-reconciling handling node-specific system components and self-healing managing distributed application workloads.

## Related Concepts
- [[concepts/static-pods]]
- [[concepts/manifest-directory]]
- [[concepts/mirror-pod]]
- replication-controller|ReplicationController]]
- [[concepts/replicasets]]
- [[concepts/high-availability]]

## Related Entities
- [[entities/kubelet]]
- [[entities/kubernetes]]
- [[entities/pods]]

## Mentions in Source
> **Source: static-pod_d72e06**
> - "
  - "

> **Source: replication-controller-&-replicaset_285a2a**
> - "