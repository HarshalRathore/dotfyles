---
type: concept
title: "Docker Gateway IP"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/miscellaneous_1e6927]]"
tags:
  - container
aliases:
  - container default gateway
  - Docker gateway address
---
# Docker Gateway IP

## Definition
Docker Gateway IP refers to the IP address assigned to the host machine on a Docker bridge network, which serves as the default gateway for all containers attached to that network. Docker automatically assigns the first IP address in the subnet (e.g., 172.20.0.1 for a 172.20.0.0/16 subnet) to the bridge interface on the host. Containers use this gateway IP to reach external networks and the internet. The host is not a 'member' of the Docker bridge network in the traditional sense — it acts as the gateway. The embedded DNS server also listens on this gateway IP address. The gateway IP can be verified using 'ip addr show docker0' on the host machine.

## Key Characteristics
- Assigned automatically by Docker as the first IP in the bridge network's subnet.
- Acts as the default gateway for all containers on that specific bridge network.
- Enables containers to communicate with external networks and the internet via Network Address Translation (NAT).
- Hosts the embedded DNS server for container name resolution on user-defined bridge networks.
- Can be verified on the host machine using network diagnostic commands like `ip addr show docker0`.

## Applications
- Provides the essential networking pathway for containers to access external services and the internet.
- Acts as a critical component in Docker's network isolation and communication model.
- Serves as the listening address for Docker's embedded DNS server, facilitating container-to-container DNS resolution on custom bridge networks.

## Related Concepts
- [[concepts/container-dns-resolution]]
- [[concepts/nat]]

## Related Entities
- [[entities/docker]]

## Mentions in Source
- "Your host isn't a \"member\" of the Docker bridge network; it's the **gateway**. Docker automatically assigns the first IP in the subnet (e.g. `172.20.0.1`) to the bridge interface on the host." — miscellaneous_1e6927
- "**172.20.0.1** is the host's IP **on** that docker bridge. Containers use that as their default gateway to reach \"the outside.\"" — miscellaneous_1e6927