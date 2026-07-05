---
type: entity
title: "Kubernetes"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/introduction_804367]]"
  - "[[sources/install-kubernetes-components_c70e92]]"
  - "[[sources/manual-notes_10b5c5]]"
  - "[[sources/taints-&-tolerations_37a014]]"
  - "[[sources/static-pod_d72e06]]"
  - "[[sources/scheduling_f2b3ef]]"
  - "[[sources/rolling-updates-&-rollbacks_f484ef]]"
  - "[[sources/replication-controller-&-replicaset_285a2a]]"
  - "[[sources/nodeselector-&-nodeaffinity_5d8764]]"
  - "[[sources/containerd-cri-etc_fb87d8]]"
  - "[[sources/init-containers_798910]]"
tags:
  - project
aliases:
  - Kubernetes
---
## Description
Kubernetes is an open-source container orchestration platform for automating deployment, scaling, and management of containerized applications. Originally built specifically to orchestrate [[entities/docker]] containers, the platform had an initial tight coupling where Kubernetes only spoke Docker. To support alternative runtimes and evolve, it introduced the [[concepts/container-runtime]] based on [[entities/open-container-initiative-oci]] standards. A major architectural shift occurred with the removal of 'dockershim' in version v1.24, which severed direct Kubernetes support for the Docker Engine, though Docker images remain fully compatible. The platform now primarily relies on runtimes like [[entities/containerd]], accessed via CRI, and provides tools like [[entities/crictl]] for node-level debugging. It manages pods across [[worker-node-2]] while protecting [[concepts/control-plane-node]] through automatic tainting mechanisms, using [[concepts/replicasets]] to maintain desired pod replicas for self-healing and horizontal scaling. Within pod management, Kubernetes defines the pod specification API to include dedicated sections for [[concepts/init-container]] alongside regular containers, ensuring init containers run to completion before main application containers start and handling pod restarts if an init container fails.

## Related Entities
- [[entities/docker]]
- [[entities/containerd]]
- [[entities/open-container-initiative-oci]]
- [[entities/crictl]]
- [[entities/etcd]]
- [[entities/kubeadm]]
- [[entities/kubelet]]
- [[entities/kubectl]]
- pods

## Related Concepts
- [[concepts/container-runtime]]
- [[dockershim]]
- [[concepts/control-plane-node]]
- [[worker-node]]
- [[kubernetes-api-server]]
- [[concepts/authentication-kubernetes]]
- [[concepts/authorization-kubernetes]]
- [[concepts/network-policies]]
- [[tls-encryption]]
- [[concepts/host-security]]
- [[concepts/serviceaccounts]]
- [[concepts/static-pods]]
- [[concepts/kubernetes-cluster]]
- [[concepts/kubeadm-init]]
- [[concepts/kubernetes-practice]]
- [[concepts/tolerations]]
- [[concepts/taints]]
- [[concepts/replicasets]]
- [[concepts/rollout]]
- [[concepts/replicationcontroller]]
- [[concepts/labels]]
- [[concepts/selectors]]
- [[concepts/deployment]]
- [[concepts/services]]
- [[concepts/nodeselector]]
- [[concepts/node-affinity]]
- [[concepts/init-container]]

## Mentions in Source

> **Source: 🔐-security-in-kubernetes_0a37d1**
> - "Kubernetes is the go-to platform for deploying production applications, making **security** a critical concern."
> - "Kubernetes doesn't manage users directly (except **ServiceAccounts**)."

> **Source: introduction_804367**
> - "Imagine you're part of a team moving your application into the modern cloud-native world."
> - "This journey begins by manually setting up Kubernetes from scratch, starting with one master node and two worker nodes."

> **Source: install-kubernetes-components_c70e92**
> - "These three binaries are fundamental: ... maintained by the Kubernetes project"
> - "It hosts **kubeadm**, **kubelet**, and **kubectl** packages maintained by the Kubernetes project"
> - "The source discusses installing Kubernetes components (containerd, kubeadm, kubelet, kubectl) to set up a cluster."
> - "Kubernetes introduces concepts like Static Pods used for critical control plane components."

> **Source: manual-notes_10b5c5**
> - "Kubernetes is an open-source container orchestration platform for automating deployment, scaling, and management of containerized applications."
> - "This source provides a manual setup guide for a three-node Kubernetes cluster."
> - "The process includes configuring VMs, installing components (containerd, kubelet, kubeadm), opening firewall ports, initializing the cluster, and setting up networking."
> - "The guide emphasizes meeting minimum resource requirements: at least 2 CPUs, 1.5GB RAM, and 10GB disk per node."
> - "Initializing cluster setup process"
> - "Initializing kubeadm"

> **Source: taints-&-tolerations_37a014**
> - "In Kubernetes, nodes are 'persons,' pods are 'bugs'."
> - "Kubernetes auto-taints control-plane (master) nodes with `node-role.kubernetes.io/master:NoSchedule` so no user pods land there by default."

> **Source: static-pod_d72e06**
> - "Static Pods are Pods managed directly by the kubelet on a single node, without the API server or any controllers."
> - "Mirror Pod: On a clustered setup, the kubelet creates a "mirror" Pod in the API server so you can `kubectl get pods`—but that object is **read-only** and suffixed with `-<nodeName>`."

> **Source: scheduling_f2b3ef**
> - "Kubernetes first targeted Docker only."
> - "To enable multiple runtimes, Kubernetes introduced the Container Runtime Interface (CRI) based on OCI specs."

> **Source: rolling-updates-&-rollbacks_f484ef**
> - "Kubernetes is the container orchestration platform that underpins all deployment management described in this source."
> - "When a deployment update occurs, Kubernetes creates a new ReplicaSet, gradually spins up new pods, and terminates old ones."
> - "For rollbacks, Kubernetes kills the new pods and brings back old pods using the previous ReplicaSet."
> - "Kubernetes: **Kills the new pods** / **Brings back the old pods** using the previous ReplicaSet."

> **Source: replication-controller-&-replicaset_285a2a**
> - "Kubernetes uses ReplicationControllers (RC) and their successor ReplicaSets (RS) to ensure a desired number of pod replicas are running at all times."
> - "Kubernetes ensures that state, making management easier."

> **Source: nodeselector-&-nodeaffinity_5d8764**
> - "Kubernetes is an open-source container orchestration platform for automating deployment, scaling, and management of containerized applications."
> - "The source specifically discusses its pod scheduling subsystem, including mechanisms like nodeSelector and node affinity that control which nodes run which pods."
> - "Scheduler filters _only_ nodes where `metadata.labels.size == "large"` before normal resource checks."

> **Source: containerd-cri-etc_fb87d8**
> - "Built specifically to orchestrate Docker containers"
> - "Initial tight coupling: Kubernetes only spoke Docker"
> - "Kubernetes introduced the Container Runtime Interface (CRI) based on Open Container Initiative (OCI) standards."

> **Source: init-containers_798910**
> - "When a POD is first created the initContainer is run, and the process in the initContainer must run to a completion before the real container hosting the application starts."
> - "If any of the initContainers fail to complete, Kubernetes restarts the Pod repeatedly until the Init Container succeeds."