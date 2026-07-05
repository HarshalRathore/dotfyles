---
type: concept
title: "Linux namespace types"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/miscellaneous_1e6927]]"
tags:
  - networking
aliases:
  - kernel namespaces
---
# Linux namespace types

## Definition
Linux namespace types refer to the eight categories of namespaces introduced in the Linux kernel to isolate different system resources. These include mount, PID, network, IPC, UTS, user, cgroup, and time namespaces, each serving to separate specific aspects of the operating system. This isolation is the fundamental mechanism that enables containerization technologies like Docker to operate independently and securely.

## Key Characteristics
- **Eight distinct types** (since kernel 5.6): mount, PID, network, IPC, UTS, user, cgroup, and time
- **Resource isolation**: Each namespace type isolates a specific kernel resource, preventing processes in one namespace from affecting others
- **Process-level abstraction**: Namespaces create the illusion of a isolated system for processes within them
- **Hierarchical structure**: Some namespaces (user, cgroup, PID) support hierarchical relationships
- **Kernel-level implementation**: Built directly into the Linux kernel for native performance
- **Composable**: Multiple namespace types can be combined for comprehensive isolation
- **Foundation for containers**: Provides the core isolation mechanism used by Docker, Kubernetes, and other container runtimes

## Applications
- **Containerization**: Primary isolation mechanism for Docker containers, ensuring each container has its own view of the system
- **Kubernetes pods**: Each pod runs within isolated namespaces for security and resource separation
- **Process isolation**: Running untrusted code in sandboxed environments
- **Multi-tenancy**: Providing isolated environments for multiple users or services on a single host
- **Development environments**: Creating reproducible, isolated development setups
- **System resource management**: Controlling visibility and access to system resources like network interfaces and mount points

## Related Concepts
- [[concepts/linux-network-namespace]]

## Related Entities
- [[entities/linux]]

## Mentions in Source
- "Since kernel 5.6 there are **eight** namespaces" — miscellaneous_1e6927
- "Type | What It is | Isolates" — miscellaneous_1e6927