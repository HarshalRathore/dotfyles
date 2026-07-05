---
type: concept
title: "low-level container runtime"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/containerd-cri-etc_fb87d8]]"
tags:
  - container
aliases:
  - OCI runtime
---
# low-level container runtime

## Definition
A low-level container runtime is a specialized software component that directly interacts with the host operating system's kernel to create and manage the execution environment for containers. It is responsible for the low-level operations of configuring kernel features like namespaces and cgroups, and it must implement the OCI Runtime Specification to ensure interoperability.

## Key Characteristics
- Directly interfaces with the Linux (or other OS) kernel primitives.
- Implements the Open Container Initiative (OCI) runtime specification.
- Responsible for the lifecycle operations (create, start, stop, delete) of a container.
- Typically invoked by a higher-level orchestrator or runtime (like containerd) rather than being used directly by end-users.
- Examples include runC and crun.

## Applications
- Used as the foundational execution engine within container orchestration platforms like Kubernetes.
- Manages the actual process creation and resource isolation for containers after being instructed by a high-level runtime.
- Ensures standardization and compatibility across different container management systems through OCI compliance.

## Related Concepts
- [[concepts/high-level-container-runtime]]
- [[concepts/oci-specs]]

## Related Entities
- [[entities/runc]]
- crun|crun]]
- [[entities/containerd]]

## Mentions in Source
- "Uses runC as low-level runtime, managed by containerd daemon" — containerd-cri-etc_fb87d8