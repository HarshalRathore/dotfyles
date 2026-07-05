---
type: concept
title: "kubeadm init"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/install-kubernetes-components_c70e92]]"
tags:
  - deployment
aliases:
  - kubeadm initialize
  - control plane initialization
---
# kubeadm init

## Definition
`kubeadm init` is the primary command used to initialize and bootstrap the control plane of a new Kubernetes cluster on the master node. It automates the setup of core control plane components, configures networking, and prepares the cluster for worker nodes to join.

## Key Characteristics
- **First Bootstrap Step:** It is executed on the designated master/control-plane node after installing necessary packages like `kubeadm`, `kubelet`, and a container runtime.
- **Component Deployment:** It sets up the API server, controller-manager, scheduler, and etcd as [[concepts/static-pods]] on the control plane node.
- **Configuration Generation:** It creates essential cluster configuration files and credentials in `/etc/kubernetes/`.
- **Networking Setup:** It configures basic networking, often requiring a pod network CIDR (e.g., with Flannel or Calico).
- **Cluster Join Provision:** It outputs a `kubeadm join` command with a token and CA certificate hash, which is required for worker nodes to securely join the cluster.

## Applications
The primary application is for bootstrapping a [[concepts/self-reconciling]] cluster. It is the foundational step when building a cluster from scratch, automating the complex process of component configuration and secure inter-component communication. It is commonly used in on-premises deployments, bare-metal servers, and custom cloud setups where a managed service is not used.

## Related Concepts
- [[concepts/control-plane-node]]
- [[concepts/static-pods]]
- [[concepts/self-managed-kubernetes]]
- [[concepts/kubernetes-cluster]]
- [[worker-node]]
- [[concepts/container-runtime]]
- [[concepts/prerequisites-verification]]

## Related Entities
- [[entities/kubeadm]]
- [[entities/kubelet]]
- [[entities/etcd]]
- [[entities/kubernetes]]
- [[entities/containerd]]
- [[entities/flannel]]
- [[entities/calico]]

## Mentions in Source
- "Initialize the control plane on the master with: `sudo kubeadm init --pod-network-cidr=<CIDR> --apiserver-advertise-address=<MASTER-IP>`" — install-kubernetes-components_c70e92