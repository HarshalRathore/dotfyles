---
type: concept
title: veth pair
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/miscellaneous_1e6927]]'
tags:
- networking
aliases:
- veth device
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: veth pair
---
# veth pair

## Definition
A veth pair (virtual ethernet pair) is a Linux networking construct that creates a virtual network cable connecting two network namespaces. In container networking, veth pairs connect each container's network namespace to the host bridge network, enabling isolated containers to communicate with the host and other containers.

## Key Characteristics
- Creates a virtual point-to-point Ethernet link between two network namespaces
- Appears as a pair of interfaces: one end resides in the container's namespace (typically `veth0`), and the other end is attached to a bridge on the host (typically `vethXXXXX`)
- Allows network traffic to flow between the container and the host as if connected by a physical Ethernet cable
- Fundamental to implementing container network isolation while maintaining connectivity
- Visible inside a container's network namespace when inspected with `ip a`

## Applications
- **Container Networking**: Core mechanism used by Docker to connect containers to the default bridge network and user-defined networks
- **Network Isolation**: Provides isolated network interfaces for each container while allowing controlled communication through the host bridge
- **Network Inspection**: Enables developers and administrators to examine container network configurations using standard Linux tools like `ip` and `nsenter`
- **Kubernetes Pod Networking**: Underlying technology for connecting pod network namespaces to the cluster network via CNI plugins

## Related Concepts
- [[concepts/linux-network-namespace]]
- [[concepts/docker-gateway-ip]]
- [[concepts/bridge-network-in-docker]]
- [[concepts/user-defined-bridge-network]]

## Related Entities
- [[entities/docker]]
- [[entities/linux]]

## Mentions in Source
- "sudo nsenter -t <PID> -n\nip a        # see only container's veth0, lo" — miscellaneous_1e6927
- "A network namespace is a separate instance of the Linux network stack (interfaces, routing table, iptables)." — miscellaneous_1e6927