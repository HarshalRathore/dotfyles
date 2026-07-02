---
type: concept
title: Container DNS Resolution
created:
  - 2026-06-30
updated: "2026-07-02"
sources:
  - miscellaneous_1e6927
tags:
  - term
  - networking
aliases:
  - container-to-container DNS
---
# Container DNS Resolution

## Definition

Container DNS Resolution is the mechanism by which Docker containers discover and communicate with each other by hostname rather than IP address on a user-defined bridge network. When a user-defined bridge network is created, Docker automatically starts an embedded DNS server that listens at the bridge's gateway IP and answers DNS queries for container service names and container names. Each container's `/etc/resolv.conf` is configured with a special loopback nameserver (`127.0.0.11`), and Docker uses iptables rules within each container's network namespace to transparently redirect DNS queries to the embedded DNS server in the Docker daemon.

## Key Characteristics

- **Scope limited to user-defined bridge networks:** This capability is exclusive to user-defined bridge networks and is not available on the default Docker bridge.
- **Embedded DNS server:** Docker automatically provisions an internal DNS server at the network's gateway IP (e.g., `172.20.0.1`) for every user-defined bridge network.
- **Transparent DNS redirection via iptables:** Containers are unaware of the redirection; Docker manipulates iptables rules inside each container's network namespace to intercept DNS queries destined for `127.0.0.11` and forward them to the embedded DNS server.
- **Automatic service and container name registration:** Containers automatically register their service names and container names as DNS A-records when they join the network.
- **No manual DNS configuration required:** Containers can resolve each other by name (e.g., `ping worker1`) without any user-configured DNS entries or hostname settings.
- **Uses loopback nameserver (`127.0.0.11`):** Each container's `/etc/resolv.conf` points to the special loopback address `127.0.0.11` rather than a traditional external DNS server.

## Applications

- **Container-to-container communication in Docker Compose:** Services defined in a Compose file can reference each other by service name (e.g., `web`, `db`) on a user-defined network, eliminating the need to track dynamic IP addresses.
- **Microservice discovery within Docker:** In multi-container application stacks, services use DNS names to locate dependencies (databases, caches, message brokers) without static IP configuration.
- **Simplified networking for development environments:** Developers can stand up interconnected containerized applications with zero DNS configuration, reducing setup friction.
- **DNS-based load balancing and round-robin resolution:** When multiple containers share the same service name, the embedded DNS server can return multiple A-records, enabling client-side load balancing.

## Related Concepts

- [[concepts/embedded-dns-server]]
- [[concepts/user-defined-bridge-network]]
- [[concepts/bridge-network-in-docker]]
- [[concepts/docker-gateway-ip]]
- [[concepts/iptables]]
- [[concepts/nat]]

## Related Entities

- [[entities/docker]]
- [[entities/docker-compose]]
- [[entities/linux]]

## Mentions in Source

- "When you use a **user-defined bridge network** like in your Compose file (`k8s_net`), Docker runs an embedded DNS server at the subnet's gateway IP (e.g. `172.20.0.1`). Containers automatically register their **service names** and **container_names** as DNS A-records." — miscellaneous_1e6927