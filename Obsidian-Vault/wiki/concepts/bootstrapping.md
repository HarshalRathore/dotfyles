---
type: concept
title: "Bootstrapping"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "install-kubernetes-components_c70e92"
tags:
  - deployment
aliases:
  - kubeadm Bootstrapping
  - Bootstrapping a Cluster
---
# Bootstrapping

## Definition
Bootstrapping refers to the process of initializing a Kubernetes control plane and joining worker nodes to form a functional, operational cluster. It establishes the cluster's initial state, enabling subsequent workload deployment and management via the API server.

## Key Characteristics
- It is a critical phase that follows the installation of node components (like kubelet and container runtime).
- The process is typically initiated on the master/control-plane node using `kubeadm init`.
- Worker nodes are integrated into the cluster using `kubeadm join` commands provided after initialization.
- Bootstrapping establishes the core control plane components (API server, etcd, scheduler, controller-manager) and sets up cluster networking.
- It transitions a set of configured nodes into a cohesive, API-driven orchestration system.


## Applications
Bootstrapping is the essential procedure for setting up any self-managed Kubernetes cluster. It is used to create new clusters from scratch on-premises or on cloud infrastructure (like AWS EC2 instances). This process is fundamental for administrators who need full control over the Kubernetes environment and is a core skill for achieving self-managed Kubernetes.

## Related Concepts
- [[concepts/control-plane-node]]
- [[worker-node]]
- kubernetes-api-server
- kubernetes-cluster
- infrastructure-provisioning
- [[concepts/container-runtime]]


## Related Entities
- [[entities/kubeadm]]
- [[entities/kubectl]]
- [[entities/kubernetes]]
- [[entities/kubelet]]
- [[entities/containerd]]


## Mentions in Source
- "These steps ensure that each node can run containers and participate in cluster bootstrapping and management." — install-kubernetes-components_c70e92
- "Next, you will: 1. **Initialize** the control plane on the master with: `sudo kubeadm init ...`" — install-kubernetes-components_c70e92