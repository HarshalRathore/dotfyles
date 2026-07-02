---
summary: "This guide details the manual process of establishing a Kubernetes cluster on virtual machines. It begins with crucial VM specifications (CPU ≥ 2, RAM ≥ 1.5GB, Disk ≥ 10GB) and recommends using Bri..."
type: source
title: "Setting up Nodes - Summary"
created: "2026-06-30"
updated: "2026-06-30"
lifecycle: draft
base_confidence: 0.7
source_file: ""
tags:
  - Bridged Adapter
  - /etc/hosts
  - swap
  - iptables
  - CRI
  - CNI
  - Bridged Adapter networking
  - overlay
  - br_netfilter
  - "kubernetes-apt-repository-setup"
  - "sysctl-configuration-for-kubernetes"
aliases:
  - Kubernetes Cluster Node Setup Guide
  - Manual Kubernetes VM Setup
contentHash: "1155-88022e7c"
generation_complete: True
---
# Setting up Nodes - Summary

## Source
- Original file: 
- Ingested: 2026-06-30

## Core Content
This guide details the manual process of establishing a Kubernetes cluster on virtual machines. It begins with crucial VM specifications (CPU ≥ 2, RAM ≥ 1.5GB, Disk ≥ 10GB) and recommends using [[concepts/bridged-adapter-networking]] for standalone network presence. The procedure involves disabling [[concepts/swap]], configuring `/etc/hosts` for name resolution, and opening specific [[concepts/iptables]] ports. Installation covers the scheduling_f2b3ef (using [[entities/containerd]]), the Kubernetes package repository setup, and core components: [[entities/kubeadm]], [[entities/kubelet]], and [[entities/kubectl]]. Finally, it outlines cluster initialization with `kubeadm init` and the installation of a pods_c92b62 plugin like [[entities/weavenet]].

## Key Entities
- [[entities/kubernetes]]
- [[entities/kubeadm]]
- [[entities/kubelet]]
- [[entities/kubectl]]
- [[entities/containerd]]
- [[entities/weavenet]]

## Key Concepts
- [[concepts/bridged-adapter]]
- [[concepts/bridged-adapter-networking]]
- [etchosts](concepts/etchosts.md)
- [[concepts/swap]]
- [[concepts/iptables]]
- scheduling_f2b3ef
- pods_c92b62
- [[concepts/overlay]]
- [[br_netfilter]]
- [[kubernetes-apt-repository-setup]]
- [[concepts/sysctl-configuration-for-kubernetes]]

## Main Points
- **VM Prerequisites:** Each node requires at least 2 CPUs, 1.5GB RAM, and 10GB disk space.
- **Network Setup:** Use Bridged Adapter mode and configure `/etc/hosts` for host communication.
- **System Prep:** Swap must be disabled and specific firewall ports opened on master and worker nodes.
- **Component Installation:** Install the containerd runtime, then add the Kubernetes repository to install kubeadm, kubelet, and kubectl with version locking.
- **Cluster Initialization:** Use `kubeadm init` to bootstrap the cluster and install a CNI plugin like WeaveNet for pod networking.