---
type: concept
title: "Bridge network in Docker"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/miscellaneous_1e6927]]"
tags:
  - container
aliases:
  - virtual switch
---
# Bridge network in Docker

## Definition
The bridge network in Docker is the default networking mode that provides container-to-container communication within a single Docker host. It functions by creating a virtual network bridge on the host, which acts like a network switch. Each container connected to this bridge gets its own internal IP address and can communicate with other containers on the same bridge network.

## Key Characteristics
- **Default Network**: It is automatically created by Docker and is the default network a container connects to unless specified otherwise.
- **Virtual Switch**: Acts as a virtual network switch or router on the Docker host, facilitating communication between containers.
- **Isolated Private Network**: Creates an isolated, private network space on the host. Traffic between containers on the same bridge network remains local and does not reach the external network unless explicitly routed (e.g., via port mapping).
- **Internal IP Addressing**: Each container attached to the bridge receives its own internal IP address within the defined subnet.
- **DNS Resolution (User-Defined)**: While the default `bridge` network has limited DNS features, user-defined bridge networks provide automatic DNS resolution for container-to-container communication by name.


## Applications
- **Local Development Environments**: Running multiple related services (like a web server and a database) on a single host that need to communicate with each other securely and efficiently.
- **Testing and Prototyping**: Quickly setting up a small network of containers to test application interactions without complex configuration.
- **Isolating Application Components**: Segregating a set of containers (e.g., a microservice stack) from other containers or services on the same host.
- **Container-to-Container Communication**: Providing a foundational networking layer for applications where containers need to interact within a controlled environment.


## Related Concepts
- [[concepts/user-defined-bridge-network]]
- [[concepts/embedded-dns-server]]

## Related Entities
- [[entities/docker]]


## Mentions in Source
- Docker **by default** connects containers to a **virtual switch** (software network) called a **bridge**. — miscellaneous_1e6927
- You can think of it like a **small virtual LAN (local area network)** **inside** your machine: — miscellaneous_1e6927
- Traffic between containers is **private** and stays inside your machine unless routed. — miscellaneous_1e6927