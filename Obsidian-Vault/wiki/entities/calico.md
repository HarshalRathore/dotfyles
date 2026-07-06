---
type: entity
title: Calico
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/install-kubernetes-components_c70e92]]'
tags:
- product
aliases:
- Calico CNI
category: entities
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: Calico
---
# Calico

## Basic Information
- Type: product
- Source: install-kubernetes-components_c70e92

## Description
Calico is an open-source networking and network security solution designed for cloud-native environments. It is primarily used as a network add-on for container orchestration platforms like Kubernetes, providing robust network policy enforcement, IP address management (IPAM), and data-plane connectivity. The solution supports multiple networking models, including overlay networks (like VXLAN) and direct (BGP) routing, offering flexibility for different deployment requirements. As a critical component for cluster communication, it is often installed after the [[concepts/control-plane-node]] is initialized to establish a functional [[concepts/pod-network]]. Calico integrates with various container runtimes, including [[entities/containerd]], to manage network connectivity for pods and services.

## Related Entities
- kubernetes
- [[entities/containerd]]
- [[entities/kubeadm]]

## Related Concepts
- [[concepts/pod-network]]
- [[concepts/control-plane-node]]

## Mentions in Source
- "(We’ll cover Pod network add-ons like Calico or Flannel later.)" — install-kubernetes-components_c70e92