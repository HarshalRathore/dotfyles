---
type: concept
title: "Overlay networking"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "pods_c92b62"
tags:
  - networking
aliases:
  - Network overlay
  - Overlay network
---
# Overlay networking

## Definition
Overlay networking is a method used by CNI plugins to create virtual network layers on top of physical or cloud infrastructure. It enables Pod traffic to traverse untrusted or non-routable networks by encapsulating packets, allowing Pods on different nodes to communicate directly while maintaining a flat IP addressing scheme.

## Key Characteristics
- Encapsulates Pod traffic within outer packets (e.g., VXLAN, IP-in-IP) to traverse the underlying network.
- Abstracts the physical or cloud network, requiring the IP fabric to be unaware of individual Pod IP addresses.
- Enables cross-node communication in environments where Pod subnets are not natively routable.
- Preserves the flat Pod IP model from the perspective of the cluster network.
- Typically implemented and managed by CNI plugins.

## Applications
- Multi-node Kubernetes clusters deployed in cloud environments where native Pod networking is restricted.
- Clusters spanning multiple network segments or untrusted infrastructure.
- Environments requiring network isolation between Pods and the host network.
- Solutions where the underlying network cannot be modified to route Pod CIDRs directly.

## Related Concepts
- [[concepts/vxlan]] (Virtual Extensible LAN)
- [[concepts/network-plugin]] (Container Network Interface)
- [[concepts/inter-node-routing]]

## Related Entities
- [[entities/calico]]
- [[entities/flannel]]
- [[entities/weavenet]]

## Mentions in Source
- In cloud or untrusted networks, plugins (Calico, Flannel, Weave) often **encapsulate** Pod traffic in VXLAN/IP-in-IP packets so underlying IP fabric need not know Pod IPs. — pods_c92b62
- The plugin **populates the host’s routing table**: Destination = each node’s **Pod subnet**; Gateway = that node’s **host IP** on the primary network. — pods_c92b62