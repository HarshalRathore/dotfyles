---
summary: "Bridged Adapter connects VMs directly to the physical network, making them appear as independent devices with their own IP addresses."
type: concept
title: "Bridged Adapter"
created:
  - "2026-06-30"
updated:
  - "2026-06-30"
lifecycle: draft
base_confidence: 0.75
sources:
  - "[[sources/manual-notes_10b5c5]]"

---
## Description
Bridged Adapter networking is a virtualization technique that connects virtual machines directly to the physical network. This configuration makes VMs appear as independent devices, allowing them to obtain their own IP addresses from the local network's DHCP server (such as a home router) and participate as separate entities. It is often the recommended and simplest network configuration for Kubernetes nodes in a home lab setup, enabling each node to have its own accessible IP address (e.g., 192.168.1.5) for direct communication and administrative access. This mode facilitates full network connectivity, which is essential for distributed systems and cluster environments where direct host or device-to-device communication is required.

## Related Concepts
- [[concepts/docker-gateway-ip]]
- [[concepts/nat]]
- [[concepts/bridge-network-in-docker]]
- [[concepts/user-defined-bridge-network]]


## Related Entities
- [[entities/linux]]

## Mentions in Source
- "
  - " — manual-notes_10b5c5
- "
  - " — manual-notes_10b5c5


> **Source: manual-notes_10b5c5**
> - "
  - "
> - "