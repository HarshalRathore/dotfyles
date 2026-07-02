---
type: entity
title: "Pods"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "rolling-updates-&-rollbacks_f484ef"
  - "replication-controller-&-replicaset_285a2a"
  - "pods_c92b62"
  - "init-containers_798910"
tags:
  - term
aliases:
  - pod
  - pods
---
## Related Entities
- [[entities/worker-node-1]]
- [[entities/worker-node-2]]
- [[entities/ec2]]
- [[entities/ubuntu-server]]
- [[entities/kubelet]]
- kubernetes
- pods
- [[entities/docker]]
- [[entities/containerd]]
- [[entities/kubeadm]]
- [[entities/cri-o]]

## Related Concepts
- [[concepts/container-runtime]]
- [[worker-node]]
- [[concepts/rolling-update-strategy]]
- [[concepts/recreate-strategy]]
- [[concepts/replicasets]]
- [[concepts/replicationcontroller]]
- [[concepts/labels]]
- [[concepts/selectors]]
- [[concepts/pod-network]]
- [[concepts/sidecar-pattern]]
- [[concepts/init-container]]
- [[concepts/pause-container]]
- [[concepts/veth-pair]]
- [[concepts/linux-network-namespace]]
- [[concepts/resource-limits]]
- [[concepts/resource-requests]]
- [[concepts/multi-container-pod]]
- [[concepts/deployment]]

## Mentions in Source
> **Source: introduction_804367**
> - "Worker Nodes: The arms and legs — these run your actual applications (pods/containers)."
> - "They all will run Ubuntu Server OS..."

> **Source: rolling-updates-&-rollbacks_f484ef**
> - "All old Pods are deleted first, then new ones are created."
> - "One old Pod down → One new Pod up (in a loop)."
> - "Gradually spins up new pods & terminates old ones (rolling style)."

> **Source: replication-controller-&-replicaset_285a2a**
> - "RCs/RSs watch Pods via labels and selectors, recreating failed Pods and enabling horizontal scaling."
> - "With multiple replicas, services can distribute traffic evenly, improving performance and fault tolerance."

> **Source: pods_c92b62**
> - "A **Pod** in Kubernetes is more than just a *container*. It's the smallest deployable unit—a ***\"logical host\"***—that can encapsulate one or more containers sharing the same network, storage, and life-cycle settings."

> **Source: init-containers_798910**
> - "In a multi-container pod, each container is expected to run a process that stays alive as long as the POD's lifecycle."
> - "When a POD is first created the initContainer is run, and the process in the initContainer must run to a completion before the real container hosting the application starts."