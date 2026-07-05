---
type: entity
title: "Kubeadm"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/install-kubernetes-components_c70e92]]"
  - "[[sources/how-tls-certificates-work-in-kubernetes-and-manual-cluster-setup_e2b507]]"
  - "[[sources/manual-notes_10b5c5]]"
  - "[[sources/admission-controllers_7667fc]]"
tags:
  - product
aliases:
  - kubeadm tool
---
## Related Entities
- Kubernetes
- [[entities/kubelet]]
- [[entities/kubectl]]
- [[entities/containerd]]
- [[entities/etcd]]
- pods

## Related Concepts
- [[concepts/kubeadm-init]]
- [[concepts/network-port-configuration]]
- [[concepts/bootstrapping]]
- [[concepts/kubeadm-init]]
- [[concepts/kubeadm-join]]
- [[concepts/control-plane-node]]
- [[concepts/tls-certificates]]
- [[concepts/certificate-generation]]
- [[concepts/kubeconfig]]
- [[concepts/high-availability-control-plane]]
- [[kubernetes-apt-repository-setup]]
- [[kubernetes-api-server]]

## Mentions in Source
> **Source: kubernetes-installation-steps_e573e8**
> - Installing kubeadm
> - Bootstrapping the cluster with `kubeadm init`

> **Source: install-kubernetes-components_c70e92**
> - **kubeadm**: Bootstraps the control plane (runs once on master).
> - Next, you will: 1. **Initialize** the control plane on the master with: `sudo kubeadm init --pod-network-cidr=<CIDR> --apiserver-advertise-address=<MASTER-IP>`

> **Source: how-tls-certificates-work-in-kubernetes-and-manual-cluster-setup_e2b507**
> - **kubeadm** is a command-line tool designed to simplify this process.
> - It automates the generation of certificates, configuration of components, and the bootstrapping of the cluster.
> - With a single command, kubeadm sets up a functional cluster, reducing the risk of configuration mistakes.

> **Source: manual-notes_10b5c5**
> - run this command to start the process `sudo kubeadm init` and to revert it `sudo kubeadm reset`
> - sudo apt-get install -y kubelet kubeadm kubectl

> **Source: admission-controllers_7667fc**
> - "On kubeadm clusters, edit the `kube-apiserver` manifest under `/etc/kubernetes/manifests`."
> - "**kubeadm init** and **kubeadm join** are key commands for cluster bootstrapping."
> - kubeadm is a tool provided by the Kubernetes project for bootstrapping Kubernetes clusters. It automates the process of setting up a production-ready Kubernetes cluster with minimal configuration. In the context of admission controllers, kubeadm clusters can have their admission controller configuration modified by editing the kube-apiserver manifest under /etc/kubernetes/manifests. kubeadm simplifies the deployment and management of Kubernetes control plane components.