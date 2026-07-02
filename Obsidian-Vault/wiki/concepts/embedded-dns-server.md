---
type: concept
title: "Embedded DNS server"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "miscellaneous_1e6927"
tags:
  - deployment
aliases:
  - internal DNS server
---
# Embedded DNS server

## Definition
The embedded DNS server is a built-in component of the Docker daemon that runs on user-defined bridge networks, enabling containers to resolve each other's names to IP addresses. It listens on the network's gateway IP and uses iptables rules to intercept DNS queries from containers, which are configured to use a loopback address for DNS. This mechanism ensures seamless name resolution without exposing the DNS server as a separate container.

## Key Characteristics
- Integrated directly within the Docker daemon (`dockerd`) process, not a separate entity.
- Active only on user-defined bridge networks, not on the default bridge network.
- Listens on the gateway IP of the Docker subnet (e.g., `172.20.0.1`).
- Intercepts DNS queries from containers via iptables rules and network namespace manipulation.
- Configures containers to use a loopback address for DNS, making the resolution transparent to the application.

## Applications
- Provides automatic, DNS-based service discovery within a Docker application stack, allowing containers to communicate using hostnames.
- Simplifies networking configuration for multi-container applications by eliminating the need for manual IP address management.
- Enables seamless inter-container communication within a project without exposing DNS infrastructure to the outside world.

## Related Concepts
- [[concepts/user-defined-bridge-network]]
- [[concepts/linux-network-namespace]]

## Related Entities
- [[entities/docker]]

## Mentions in Source
- "Docker runs an embedded DNS server at the subnet’s gateway IP (e.g. `172.20.0.1`)." — miscellaneous_1e6927
- "The embedded DNS server **lives** inside the Docker daemon (the `dockerd` process)." — miscellaneous_1e6927
- "Docker’s embedded DNS isn’t a separate process you can see listening on 172.20.0.1 inside each container—instead, Docker hijacks DNS resolution in the container’s network namespace by:" — miscellaneous_1e6927