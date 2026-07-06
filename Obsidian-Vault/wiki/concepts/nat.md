---
type: concept
title: NAT
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/miscellaneous_1e6927]]'
tags:
- networking
aliases:
- Docker NAT
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: NAT
---
# NAT

## Definition
NAT (Network Address Translation) is a networking technique used by Docker to intercept and redirect network packets between container network namespaces and the host. In Docker's embedded DNS mechanism, NAT is used to transparently redirect DNS queries from the container's loopback address (127.0.0.11:53) to the Docker daemon's DNS service on the host's bridge IP.

## Key Characteristics
- Implemented via `iptables` rules within each container's network namespace.
- Used by Docker to make containers "believe" they are communicating with a local loopback address (127.0.0.11) for DNS, while the actual resolution is performed by the Docker daemon's DNS service.
- Operates by transparently redirecting and intercepting packets at the network layer.
- The packet flow involves redirection from the container's loopback, through NAT/iptables rules, to the Docker daemon's DNS service on the host's bridge network, and then back.

## Applications
- **Transparent DNS Resolution in Docker:** The primary application is to allow containers to resolve DNS names without modifying their internal DNS configuration. Containers send DNS queries to the expected loopback address (127.0.0.11:53), which NAT rules transparently redirect to the Docker daemon's embedded DNS server.
- **Network Isolation and Integration:** NAT is a fundamental technique for enabling communication between isolated network namespaces (like containers) and the host network or external networks, providing a controlled gateway for traffic.

## Related Concepts
- [[concepts/container-dns-resolution]]
- [[concepts/linux-network-namespace]]
- [[concepts/embedded-dns-server]]
- [[concepts/iptables]]
- [[concepts/docker-gateway-ip]]

## Related Entities
- [[entities/docker]]
- [[entities/linux]]

## Mentions in Source
- "Even though the container "thinks" it's talking to 127.0.0.11, behind the scenes the packet is NAT'd over to the Docker-managed DNS service." — miscellaneous_1e6927
- "docker-proxy/NAT → [Docker daemon's DNS] listening on host's bridge IP (172.20.0.1:53)" — miscellaneous_1e6927
- "reply packet (back through NAT/iptables)" — miscellaneous_1e6927