---
type: "concept"
title: "Scheduler"
created: [datetime.date(2026, 6, 30)]
updated: [datetime.date(2026, 6, 30)]
sources: ['static-pod_d72e06', 'resource-requests-&-limits_4bd978', 'main-kubernetes-components_82b036']
tags:
  - control-plane
  - scheduling
---
## Description
The scheduler is a central decision-maker in the Kubernetes control plane that watches the API server for Pods with an empty `nodeName` field. It filters Nodes based on resource availability and constraints like node selectors, affinities, and taints/tolerations, then ranks the feasible Nodes to select the most optimal one. It uses resource requests from pods to filter and rank nodes, ensuring optimal placement for performance and stability; each container's `resources.requests` tells the scheduler what minimum CPU/memory it needs, and nodes lacking these requested resources are filtered out, leaving pods in a `Pending` state if none qualify. This selection process ensures efficient resource utilization and workload distribution across the cluster. While essential for distributing standard Pods, it has no effect on static Pods, which bypass the entire scheduling process and are managed directly by the kubelet. It is typically deployed as a static Pod on control-plane nodes during cluster bootstrapping.

## Related Concepts
- [[concepts/controller-manager]]
- kubernetes-api-server
- [[concepts/static-pods]]
- [[concepts/kubeadm-init]]
- [[concepts/replicasets]]
- [[concepts/daemonsets]]
- 
- 
- [[concepts/taints]]
- [[concepts/node-affinity]]

## Related Entities
- [[entities/kubeadm]]
- [[entities/kubelet]]
- [[entities/kubernetes]]
- pods

## Mentions in Source

> **Source: bootstrapping-control-place_e4e0df**
> - A self-signed Certificate Authority (CA) plus individual certs for each component (API Server, etcd, controller-manager, scheduler) are created and placed in `/etc/kubernetes/pki`.

> **Source: static-pod_d72e06**
> - the kube-scheduler and ReplicaSets/DaemonSets do not affect static Pods

> **Source: resource-requests-&-limits_4bd978**
> - Each container's `resources.requests` tells the **kube-scheduler** what minimum CPU/memory it needs.

> **Source: main-kubernetes-components_82b036**
> - Control plane component that watches for newly created [Pods](https://kubernetes.io/docs/concepts/workloads/pods/) with no assigned [node](https://kubernetes.io/docs/concepts/architecture/nodes/), and selects a node for them to run on.