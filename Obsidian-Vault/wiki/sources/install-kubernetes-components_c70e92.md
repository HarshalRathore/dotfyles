---
summary: "This source details the essential setup phase for building a Kubernetes cluster from scratch: installing the node-level software. The process has two core parts. First, a CRI-compliant container ru..."
type: source
title: "Installing Kubernetes Components and Static Pods - Summary"
created: "2026-06-30"
updated: "2026-06-30"
lifecycle: draft
base_confidence: 0.7
source_file: ""
tags:
  - container runtime
  - kubeadm
  - kubelet
  - kubectl
  - containerd
  - version locking
  - static pods
  - control plane
  - sysctl configuration
aliases:
  - Kubernetes Component Installation Guide
  - Installing k8s Components on Nodes
contentHash: "auto-fill-mr0vx781"
generation_complete: True
---
source_file: ""
tags: [container runtime, kubeadm, kubelet, kubectl, containerd, version locking, static pods, control plane, sysctl configuration]
aliases: ["Kubernetes Component Installation Guide", "Installing k8s Components on Nodes"]
contentHash: "auto-fill-mr0vqvkf"





# Installing Kubernetes Components and Static Pods - Summary

## Source
- Original file: 
- Ingested: 2026-06-30

## Core Content
This source details the essential setup phase for building a [[concepts/bootstrapping]] cluster from scratch: installing the node-level software. The process has two core parts. First, a [[concepts/container-runtime-interface-cri]]-compliant container runtime, specifically [[entities/containerd]], is installed on every node. This involves loading required kernel modules like [[concepts/overlay]] and [[br_netfilter]], along with necessary [[concepts/sysctl-configuration-for-kubernetes]]. Second, the core Kubernetes command-line tools—[[entities/kubeadm]], [[entities/kubelet]], and [[entities/kubectl]]—are installed from the official [[kubernetes-apt-repository-setup]]. The source emphasizes using [[concepts/version-locking]] for stability. It concludes by introducing [[concepts/static-pods]], explaining their role in bootstrapping critical [[concepts/control-plane]] components directly managed by the kubelet.

## Key Entities
- [[entities/containerd]]
- [[entities/kubeadm]]
- [[entities/kubelet]]
- [[entities/kubectl]]
- [[entities/kubernetes]]

## Key Concepts
- [[concepts/container-runtime-interface-cri]]
- [[concepts/static-pods]]
- [[concepts/bootstrapping]]
- [[concepts/control-plane]]
- [[concepts/overlay]]
- [[br_netfilter]]

## Main Points
- The installation of a container runtime and Kubernetes tools is a prerequisite for [[concepts/bootstrapping]].
- [[entities/containerd]] is installed first, requiring kernel module and sysctl prerequisites.
- [[entities/kubeadm]], [[entities/kubelet]], and [[entities/kubectl]] are installed from the official repository and version-locked.
- [[concepts/static-pods]] are used to manage core [[concepts/control-plane]] components directly by the kubelet.