---
type: concept
title: VXLAN
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/pods_c92b62]]'
tags:
- scaling
aliases:
- Virtual eXtensible Local Area Network
- VXLAN
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: VXLAN
---
# VXLAN

## Definition
VXLAN (Virtual Extensible LAN) is a networking standard used for overlay encapsulation, allowing Layer 2 Ethernet frames to be tunneled over Layer 3 networks. It provides a scalable method for creating virtualized Layer 2 overlay networks, commonly used in cloud data centers and container orchestration platforms.

## Key Characteristics
- Encapsulates Layer 2 Ethernet frames within UDP packets for transport over Layer 3 networks.
- Uses a 24-bit VXLAN Network Identifier (VNI), supporting up to 16 million isolated network segments, far exceeding the 4,096 VLAN limit.
- Operates independently of the underlying physical network infrastructure.
- Enables communication between endpoints (e.g., VMs, containers) across different physical hosts or subnets without requiring changes to the physical network.
- Commonly employed as an overlay network technology in Kubernetes CNI plugins for cross-node Pod communication.

## Applications
- **Container Networking in Kubernetes:** Used by CNI plugins like Flannel, Calico, and Weave to encapsulate Pod traffic, enabling seamless cross-node communication without the underlying network needing to know Pod IPs.
- **Data Center Virtualization:** Facilitates multi-tenant network segmentation and mobility of virtual machines (VMs) across physical hosts in cloud environments.
- **Cloud Computing:** Provides scalable network overlay solutions for large-scale, distributed cloud platforms.

## Related Concepts
- [[concepts/overlay-networking]]
- IP-in-IP
- [[concepts/network-plugin]]

## Related Entities
- [[entities/flannel]]
- [[entities/calico]]
- [[entities/weavenet]]
- [[entities/pods]]

## Mentions in Source
- "plugins (Calico, Flannel, Weave) often **encapsulate** Pod traffic in VXLAN/IP-in-IP packets." — pods_c92b62
- "The plugin **populates the host’s routing table** so that `eth0` in the Pod maps to its IP." — pods_c92b62