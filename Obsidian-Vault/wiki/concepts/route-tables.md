---
type: concept
title: Route tables
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/pods_c92b62]]'
tags:
- networking
aliases:
- Host routing table
- Kernel routing table
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: Route tables
---
# Route tables

## Definition
In Kubernetes networking, route tables refer to the IP routing tables maintained by the Linux kernel on each node. The CNI plugin configures these tables to enable communication between Pods across different nodes. Each route entry specifies a destination network (typically another node's Pod subnet) and a gateway (the host IP of the destination node). This allows the kernel to forward network traffic from local Pods to Pods on remote nodes.

## Key Characteristics
- **Kernel-Level Data Structure:** They are standard IP routing tables managed by the host operating system's kernel.
- **CNI-Configured:** The specific route entries are programmatically created and managed by the Container Network Interface (CNI) plugin in use (e.g., Flannel, Calico).
- **Destination-Focused:** Routes typically map a remote node's Pod subnet (the destination network) to the IP address of that node's host network interface (the gateway).
- **Foundation for Flat Networking:** They are essential for the Kubernetes flat network model, making Pod IP addresses routable across the entire cluster.
- **Dynamic Updates:** Route tables are dynamically updated by the CNI as nodes join or leave the cluster, maintaining network connectivity.

## Applications
- **Inter-Pod Communication:** Enables a Pod on `worker-node-1` to communicate directly with a Pod on `worker-node-2` using their IP addresses, as if they were on the same local network.
- **Cluster Network Overlay:** Forms the underlay or overlay mechanism for many CNI plugins that aim to provide a unified network space for all Pods.
- **Service Mesh Integration:** Provides the foundational network layer upon which service mesh technologies like Istio or Linkerd can operate for advanced traffic management.
- **Network Policy Enforcement:** While route tables handle routing, they work in conjunction with other kernel features (like iptables or eBPF) to enforce network policies by directing traffic to the appropriate processing points.

## Related Concepts
- Inter-Node Routing
- [[concepts/kubernetes-network-model]]
- [[concepts/network-plugin]]

## Related Entities
- [[entities/calico]]
- [[entities/flannel]]

## Mentions in Source
- "The plugin **populates the host's routing table**: Destination = each node's **Pod subnet**, Gateway = that node's **host IP** on the primary network." — pods_c92b62
- "Flannel can use an etcd-backed key-value store to store subnets and push routes via host routes." — pods_c92b62