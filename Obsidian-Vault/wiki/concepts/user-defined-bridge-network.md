---
type: concept
title: "User-defined bridge network"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "miscellaneous_1e6927"
tags:
  - container
aliases:
  - Docker bridge network
---
# User-defined bridge network

## Definition
A user-defined bridge network is a custom virtual network created by a user in Docker that connects containers and supports automatic DNS resolution. It is superior to the default bridge network because it provides an embedded DNS server, allowing containers to communicate by name rather than only by IP address. The network is isolated and operates within the host machine, with the gateway IP serving as the DNS endpoint for internal queries.

## Key Characteristics
- Created explicitly by the user (e.g., via `docker network create` or defined in a Compose file).
- Provides an embedded DNS server for container name resolution.
- Allows containers on the same network to discover and communicate with each other by container name or service name.
- Offers better network isolation and configuration flexibility compared to the default bridge network.
- Operates within the host's networking stack, with a dedicated subnet and gateway IP.

## Applications
- **Containerized Application Deployment:** Used in Docker Compose and other orchestration tools to define custom networks for multi-container applications.
- **Service Discovery:** Enables containers to find each other by name without hardcoding IP addresses, simplifying application configuration.
- **Development and Testing Environments:** Provides isolated networks for different projects or components on a single host.
- **Microservices Architectures:** Facilitates communication between microservices running in separate containers.

## Related Concepts
- [[concepts/embedded-dns-server]]
- [[concepts/bridge-network-in-docker]]

## Related Entities
- [[entities/docker]]
- [[entities/docker-compose]]

## Mentions in Source
- "When you use a **user-defined bridge network** like in your Compose file (`k8s_net`), Docker runs an embedded DNS server at the subnet’s gateway IP (e.g. `172.20.0.1`)." — miscellaneous_1e6927
- "When you create a **user-defined bridge network**, Docker **automatically starts a tiny internal DNS server** to help containers find each other **by name** instead of IP." — miscellaneous_1e6927