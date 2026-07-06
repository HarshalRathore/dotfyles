---
title: Container Network Interface (CNI) - Summary
summary: This source explains the fundamental building blocks of Kubernetes networking, focusing on the [[entities/pods]] as the core deployable unit and the pods_c92b62
tags:
- CNI
- IPAM
- CIDR
- Sidecar pattern
- Init container
- Pause container
- Overlay networking
- Flat network model
- Co-scheduling
- VXLAN
- BGP
- Container Runtime Interface
- Network plugin
- Port conflicts
- Kubernetes network model
- Node subnet
- Intra-node networking
- Inter-node routing
- Route tables
- DaemonSet for network plugins
- Cluster CIDR
- Pod
aliases:
- Kubernetes CNI Specification
- Container Networking Interface
contentHash: 3a9d-ea9405b0
generation_complete: true
category: sources
sources: []
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
created: '2026-07-02T13:38:25.553438+00:00'
updated: '2026-07-02T13:38:25.553438+00:00'
---
# Container Network Interface (CNI) - Summary

## Source
- Original file: 
- Ingested: 2026-06-30

## Core Content
This source explains the fundamental building blocks of Kubernetes networking, focusing on the [[entities/pods]] as the core deployable unit and the pods_c92b62 as the standard for implementing network connectivity. It defines the Pod as a "logical host" that groups related containers, sharing a network namespace, storage, and lifecycle. This abstraction allows for patterns like [[concepts/sidecar-pattern]] and [[concepts/init-container]]. The document details how Kubernetes delegates Pod networking to CNI plugins—external binaries like [[entities/cri-o]], Flannel, and [[entities/calico]]—to enforce a [[concepts/flat-network-model]]. This model requires unique, cluster-wide Pod IPs and direct, routable communication without NAT, solving common issues like [[concepts/port-conflicts]]. CNI plugins handle [[concepts/ipam]] by dividing the [[concepts/cluster-cidr]] into [[concepts/node-subnet]] and manage [[concepts/intra-node-networking]] and [[concepts/inter-node-routing]], often using [[concepts/overlay-networking]] techniques like [[concepts/vxlan]] or [[concepts/bgp]].

## Key Entities
- [[entities/cri-o]]: A lightweight container runtime for Kubernetes, implementing the containerd-cri-etc_fb87d8.
- [[entities/host-local]]: A common [[concepts/ipam]] plugin that manages IP allocation for Pods within a single node.

## Key Concepts
- pods_c92b62: The specification that standardizes how network plugins configure Pod networking.
- [[entities/pods]]: The smallest deployable unit, encapsulating containers that share network, storage, and lifecycle.
- [[concepts/kubernetes-network-model]]: The theoretical foundation requiring a flat, routable Pod network with unique IPs.
- [[concepts/ipam]]: The method for allocating unique Pod IP addresses from a node's subnet.
- [[concepts/overlay-networking]]: A technique used to enable cross-node Pod communication over physical networks.

## Main Points
- Kubernetes uses the pods_c92b62 specification to delegate Pod networking setup to external plugins.
- A [[entities/pods]] is the fundamental unit that groups containers, providing a shared network namespace and a unique IP address.
- The [[concepts/kubernetes-network-model]] mandates direct, NAT-free communication between all Pods using their unique IPs.
- CNI plugins implement this model by handling [[concepts/ipam]], veth pair creation, and routing configuration, often via DaemonSets.
- Implementations like Calico, Flannel, and Weave Net use different strategies (e.g., [[concepts/bgp]], [[concepts/vxlan]]) to achieve the required networking behavior.