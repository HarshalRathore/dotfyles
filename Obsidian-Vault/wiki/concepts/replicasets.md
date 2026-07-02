---
summary: "A ReplicaSet is a Kubernetes controller that ensures a specified number of pod replicas are running at any given time, making it a cornerstone of workload management for scaling and replication..."
type: concept
title: "Replicasets"
created:
  - "2026-06-30"
updated:
  - "2026-06-30"
lifecycle: draft
base_confidence: 0.75
sources:
  - "static-pod_d72e06"
  - "rolling-updates-&-rollbacks_f484ef"
  - "replication-controller-&-replicaset_285a2a"
  - "daemonsets_9f31ec"
---
## Description
A ReplicaSet is a Kubernetes controller that ensures a specified number of pod replicas are running at any given time, making it a cornerstone of workload management for scaling and replication. It evolved from the ReplicationController to support set-based selectors (`matchLabels` and `matchExpressions`) for more flexible pod matching, in addition to the original equality-based selectors. While a ReplicaSet can be used standalone, it is typically managed by a higher-level [[concepts/deployment]], which handles declarative updates, [[concepts/rolling-update-strategy]], and rollbacks. During a rolling update, Kubernetes creates a new ReplicaSet to gradually replace pods from the old one, enabling seamless, zero-downtime deployments. ReplicaSets are primarily used for scaling the count of pod replicas for stateless applications, contrasting with controllers like DaemonSets which target nodes for pod placement rather than scaling counts. They do not directly manage [[concepts/static-pods]]; instead, the kubelet independently maintains static Pods from manifest files on the node, unaffected by the control plane's ReplicaSet logic.

## Related Concepts
- [[concepts/mirror-pod]]
- [[concepts/containerization]]
- [[concepts/service-discovery]]
- [[concepts/rolling-update-strategy]]
- ReplicationController
- [[concepts/labels]]
- [[concepts/selectors]]
- [[concepts/deployment]]
- [[concepts/scaling]]
- [[concepts/daemonsets]]

## Related Entities
- [[entities/kubernetes]]
- [[entities/kubelet]]
- [[entities/pods]]
- [[entities/kubectl]]

## Mentions in Source
> **Source: static-pod_d72e06**
> - "
  - "

> **Source: rolling-updates-&-rollbacks_f484ef**
> - "
  - "
> - "
  - "
> - "
  - "

> **Source: replication-controller-&-replicaset_285a2a**
> - "
  - "
> - "
  - "

> **Source: daemonsets_9f31ec**
> - "
  - "
> - "