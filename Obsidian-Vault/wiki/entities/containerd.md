---
type: entity
title: "Containerd"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "install-kubernetes-components_c70e92"
  - "manual-notes_10b5c5"
  - "scheduling_f2b3ef"
  - "containerd-cri-etc_fb87d8"
tags:
  - product
aliases:
  - containerd.io
---
## Related Entities
- [[entities/kubeadm]]
- [[entities/kubelet]]
- kubernetes
- [[entities/kubectl]]
- [[entities/containerd]]
- [[entities/docker]]
- [[entities/nerdctl]]
- [[entities/crictl]]
- [[entities/ctr]]
- [[entities/open-container-initiative-oci]]

## Related Concepts
- [[concepts/container-runtime]]
- [[concepts/container-runtime]]
- node configuration
- [[worker-node]]
- [[concepts/container-dns-resolution]]
- OCI runtime spec

## Mentions in Source
> **Source: kubernetes-installation-steps_e573e8**
> - "Installing container runtime (e.g., containerd)"
> - "container runtime must be installed for nodes to run containers."

> **Source: install-kubernetes-components_c70e92**
> - "Containerd is a lightweight, production-grade container runtime that implements the Kubernetes **Container Runtime Interface (CRI)**."
> - "Install containerd via the OS package manager: `sudo apt-get install -y containerd`"

> **Source: manual-notes_10b5c5**
> - "sudo apt-get install -y containerd"
> - "sudo containerd config default | tee /etc/containerd/config.toml"

> **Source: scheduling_f2b3ef**
> - "Containerd (the core runtime under Docker) is now a standalone, CRI-compatible project you can install and use directly."
> - "Containerd splits off as its own CNCF-graduated project, implements the OCI runtime spec, and supports CRI."

> **Source: containerd-cri-etc_fb87d8**
> - "Containerd (the runtime beneath Docker) is now a standalone, CRI-compatible project you can install directly."
> - "Originally part of Docker project; now a graduated CNCF project"
> - "Implements OCI runtime spec; CRI-compatible"
> - "Can be installed standalone if you only need the runtime"