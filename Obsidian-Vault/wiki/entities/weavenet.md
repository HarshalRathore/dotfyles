---
type: entity
title: "WeaveNet"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/manual-notes_10b5c5]]"
tags:
  - product
aliases:
  - weaveNet
  - Weave CNI
---
# WeaveNet

## Basic Information
- Type: product
- Source: manual-notes_10b5c5

## Description
WeaveNet is a Container Networking Interface (CNI) plugin that provides networking capabilities for pods in Kubernetes clusters. It creates an overlay network that allows pods to communicate across different nodes in the cluster. WeaveNet handles IP address management (IPAM), network policy enforcement, and encryption for pod-to-pod traffic. It is recommended as the CNI to install after cluster initialization using tools like [[entities/kubeadm]]. WeaveNet is developed by Weaveworks, the company behind the [[entities/weaveworks’-sock-shop]] demo application. Alternative CNI options include [[entities/flannel]] and [[entities/calico]].

## Related Entities
- [[entities/flannel]]
- [[entities/calico]]
- kubernetes
- pods
- [[entities/kubeadm]]
- [[entities/weaveworks’-sock-shop]]

## Related Concepts
- [[concepts/pod-network]]
- [[concepts/overlay]]
- [[concepts/veth-pair]]
- [[concepts/nat]]

## Mentions in Source
- "The tutorial is saying install weaveNet" — manual-notes_10b5c5
- "Installing some CNI (Container Networking Interface) :-" — manual-notes_10b5c5