---
summary: The Pod Network provides a flat, routable network for all Pods in the cluster, allowing direct communication regardless of the underlying node infrastructure. It is implemented and managed by a...
type: concept
title: Pod Network
created:
- '2026-06-30'
updated:
- '2026-06-30'
lifecycle: draft
base_confidence: 0.75
sources:
- '[[sources/install-kubernetes-components_c70e92]]'
- '[[sources/manual-notes_10b5c5]]'
- '[[sources/pods_c92b62]]'
category: concepts
tags: []
tier: supporting
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
---
## Description
The Pod Network provides a flat, routable network for all Pods in the cluster, allowing direct communication regardless of the underlying node infrastructure. It is implemented and managed by a specific CNI plugin—such as Calico, Flannel, or WeaveNet—which handles IP address assignment, network setup, and enforces connectivity rules. Kubernetes delegates this entire networking function to CNI plugins, which are external binaries conforming to the CNI specification. At Pod creation, the kubelet invokes these CNI binaries, passing network namespace information and the desired Pod CIDR to set up veth pairs and assign IPs, ensuring interoperability between different networking solutions. This logical overlay network is fundamental for the operation of distributed applications, enabling core Kubernetes features like service discovery and load balancing. The network range is specified during control plane initialization, and the chosen CNI plugin is installed afterward to create and manage the actual network fabric.

## Related Concepts
- [[concepts/network-plugin]]
- kubernetes-cluster
- [[concepts/control-plane-node]]
- [[concepts/kubeadm-init]]
- [[concepts/network-plugin]]
- network-policies
- [[concepts/overlay-networking]]

## Related Entities
- [[entities/kubeadm]]
- [[entities/pods]]
- [[entities/calico]]
- [[entities/flannel]]
- [[entities/kubernetes]]
- [[entities/weavenet]]
- [[entities/kubelet]]

## Mentions in Source
> **Source: install-kubernetes-components_c70e92**
> - "
  - "
> - "
  - "

> **Source: manual-notes_10b5c5**
> - "
  - "
> - "
  - "

> **Source: pods_c92b62**
> - "
  - "
> - "