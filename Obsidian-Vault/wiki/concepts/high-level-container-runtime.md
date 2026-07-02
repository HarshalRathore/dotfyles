---
type: concept
title: "high-level container runtime"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "containerd-cri-etc_fb87d8"
tags:
  - container
aliases:
  - "high-level runtime"
---
# high-level container runtime

## Definition
A high-level container runtime is a container runtime that provides an API for building, pulling, and managing container images and containers. It often manages multiple containers and provides higher-level features like image distribution and storage. High-level runtimes typically delegate the actual container execution to a low-level runtime that interacts with the operating system kernel.

## Key Characteristics
- Provides a comprehensive API for container and image lifecycle management
- Handles building, pulling, and distributing container images
- Manages multiple containers simultaneously
- Offers features such as image storage, versioning, and distribution
- Delegates low-level container execution tasks (e.g., namespaces, cgroups) to a specialized low-level runtime
- Abstracts direct kernel interaction from the user and orchestration systems

## Applications
- Container orchestration platforms (e.g., Kubernetes) use high-level runtimes as the interface for managing containerized workloads
- Development workflows requiring container image creation and management
- Enterprise environments needing centralized image distribution and storage
- CI/CD pipelines building and deploying container images
- Cloud-native application deployment and lifecycle management

## Related Concepts
- [[concepts/low-level-container-runtime]]
- [[concepts/container-runtime]]

## Related Entities
- [[entities/containerd]]
- [[entities/cri-o]]
- [[entities/docker]]

## Mentions in Source
- "Docker architecture: CLI, API, build tools, volume/auth/security support" — containerd-cri-etc_fb87d8
- "Containerd: Originally part of Docker project; now a graduated CNCF project" — containerd-cri-etc_fb87d8