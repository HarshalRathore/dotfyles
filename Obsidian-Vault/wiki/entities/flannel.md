---
type: entity
title: "Flannel"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "install-kubernetes-components_c70e92"
tags:
  - product
aliases:
  - Flannel (CNI)
  - Flannel CNI Plugin
---
# Flannel

## Basic Information
- Type: product
- Source: install-kubernetes-components_c70e92

## Description
Flannel is a simple overlay network designed to fulfill the networking requirements of a [[concepts/kubernetes-cluster]] cluster. It is a common choice for implementing the [[concepts/pod-network]] add-on, enabling seamless pod-to-pod communication across different nodes in the cluster. Flannel manages an IP address subnet for each node and creates a lightweight virtual network on top of the physical infrastructure. It is frequently compared to and used alongside alternatives like [[entities/calico]] when setting up cluster networking. By providing this network layer, Flannel ensures that pods can reliably discover and communicate with each other, regardless of the underlying host they are scheduled on.

## Related Entities
- Kubernetes
- [[entities/containerd]]
- [[entities/kubeadm]]
- [[entities/calico]]
- Pods

## Related Concepts
- [[concepts/pod-network]]
- [[concepts/kubernetes-cluster]]
- [[concepts/self-reconciling]]
- [[concepts/container-runtime]]

## Mentions in Source
- "(We’ll cover Pod network add-ons like Calico or Flannel later.)" — install-kubernetes-components_c70e92