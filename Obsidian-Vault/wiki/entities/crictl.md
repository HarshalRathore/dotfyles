---
type: entity
title: "Crictl"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/containerd-cri-etc_fb87d8]]"
tags:
  - product
aliases:
  - CRI debug tool
---
## Related Entities
- Kubernetes
- [[entities/containerd]]
- [[entities/kubelet]]
- [[entities/kubectl]]
- [[entities/nerdctl]]
- [[entities/ctr]]

## Related Concepts
- [[concepts/container-runtime]]

## Mentions in Source
- **Source: scheduling_f2b3ef**
  - "crictl (generic CRI debug CLI) — "
  - "Kubernetes community tool that speaks CRI to any compliant runtime. — "
  - "Kubernetes node troubleshooting → use `crictl` to inspect pods, images, logs — "
- **Source: containerd-cri-etc_fb87d8**
  - "`crictl` – Kubernetes-side CRI client for debugging any OCI-compliant runtime"
  - "Kubernetes community tool for interacting with any CRI runtime"
  - "Purpose: debugging/inspecting runtimes from the kubelet’s perspective"
  - "`crictl` is not for creating production containers, as the kubelet will remove any unmanaged containers it finds."
  - "It provides commands to pull images, list pods, view logs, and execute commands (e.g., `crictl pull`, `crictl ps`, `crictl logs`)."