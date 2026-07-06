---
type: entity
title: Docker
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/scheduling_f2b3ef]]'
- '[[sources/containerd-cri-etc_fb87d8]]'
tags:
- product
aliases:
- docker daemon
- Docker
category: entities
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: Docker
---
## Description
Docker is a pioneering platform for developing, shipping, and running applications inside lightweight, portable containers. Introduced in 2013 with a simple user experience for container creation, it quickly became the dominant container platform and was the original all-in-one system whose architecture bundles the CLI, API, image build tools, and the low-level runtime (containerd). Kubernetes initially targeted Docker exclusively, and while Docker itself does not implement the Container Runtime Interface (CRI), its underlying container images conform to the OCI Image Spec, ensuring compatibility. The platform manages network configuration and DNS redirection transparently, often through iptables rules on the host system.

## Related Entities
- [[entities/linux]]
- Docker Compose
- [[entities/containerd]]
- Kubernetes
- [[entities/open-container-initiative-oci]]

## Related Concepts
- [[concepts/user-defined-bridge-network]]
- [[concepts/embedded-dns-server]]
- [[concepts/bridge-network-in-docker]]
- [[concepts/dockershim]]
- [[concepts/container-runtime]]

## Mentions in Source
- Docker runs an embedded DNS server at the subnet’s gateway IP (e.g. `172.20.0.1`). — miscellaneous_1e6927
- Docker automatically assigns the first IP in the subnet (e.g. `172.20.0.1`) to the bridge interface on the host: — miscellaneous_1e6927
- Docker by default connects containers to a virtual switch (software network) called a bridge. — miscellaneous_1e6927
> **Source: scheduling_f2b3ef**
> - Docker was the original all-in-one container platform; Kubernetes first targeted Docker only.
> - Docker itself doesn’t implement CRI, so Kubernetes used a temporary “dockershim” until removing it in v1.24.
> **Source: containerd-cri-etc_fb87d8**
> - Docker (2013) introduced a simple UX for containers; quickly became dominant — [[entities/containerd]]
> - Kubernetes first integrated with Docker directly. — [[entities/containerd]]