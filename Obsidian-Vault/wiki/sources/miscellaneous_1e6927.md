---
summary: "This source provides a technical deep dive into the networking mechanisms used by Docker containers. It explains how a **user-defined bridge network**, such as one created via "
tags:
  - "User-defined bridge network"
  - Embedded DNS server
  - Bridge network in Docker
  - Linux network namespace
  - Linux namespace types
  - Container DNS Resolution
  - Docker Gateway IP
  - iptables
  - NAT
  - veth pair
aliases:
  - Docker Networking Internals
  - Docker Name Resolution
contentHash: "1987-840ab118"
generation_complete: True
---
# Docker Networking, DNS, and Network Namespaces - Summary

## Source
- Original file: 
- Ingested: 2026-06-30

## Core Content
This source provides a technical deep dive into the networking mechanisms used by Docker containers. It explains how a **user-defined bridge network**, such as one created via [[concepts/user-defined-bridge-network]] in [[entities/docker-compose]], automatically provisions an [[concepts/embedded-dns-server]]. This server, running within the [[entities/docker]] daemon at the network's [[concepts/docker-gateway-ip]], allows containers to resolve each other by service name or hostname. The document details the underlying Linux mechanisms that enable this, including [[concepts/linux-network-namespace]] isolation, the use of [[concepts/iptables]] rules to perform [[concepts/nat]] and redirect DNS queries from a loopback address to the host's bridge IP, and the role of [[concepts/veth-pair]] devices in connecting container namespaces to the host bridge.

## Key Entities
- [[entities/docker]]
- [[entities/docker-compose]]
- [[entities/linux]]

## Key Concepts
- [[concepts/user-defined-bridge-network]]
- [[concepts/embedded-dns-server]]
- [[concepts/container-dns-resolution]]
- [[concepts/docker-gateway-ip]]
- [[concepts/linux-network-namespace]]
- [[concepts/linux-namespace-types]]
- [[concepts/iptables]]
- [[concepts/nat]]
- [[concepts/veth-pair]]

## Main Points
- **Automatic Name Resolution:** On a user-defined bridge network, Docker starts an embedded DNS server that lets containers ping each other by name (e.g., `ping worker1`) without manual configuration.
- **Gateway IP Role:** The host machine acts as the network gateway, assigned the first IP in the subnet (e.g., 172.20.0.1), which also hosts the DNS service.
- **Transparent DNS Redirection:** Docker configures `iptables` rules within each container's network namespace to intercept DNS queries to `127.0.0.11:53` and NAT them to the actual DNS process on the host bridge.
- **Isolation via Namespaces:** Container networking is isolated using the Linux kernel's network namespace feature, one of eight namespace types fundamental to containerization.
- **Default vs. User-Defined:** This automatic DNS resolution feature is exclusive to user-defined networks, not the default Docker bridge.