---
summary: The Container Runtime Interface (CRI) is the fundamental plugin API that enables Kubernetes to support multiple container runtimes by defining a standard communication protocol between the kube...
type: concept
title: "Container Runtime"
created:
  - "2026-06-30"
updated:
  - "2026-06-30"
lifecycle: draft
base_confidence: 0.75
sources:
  - "[[sources/kubernetes-installation-steps_e573e8]]"
  - "[[sources/install-kubernetes-components_c70e92]]"
  - "[[sources/manual-notes_10b5c5]]"
  - "[[sources/scheduling_f2b3ef]]"
  - "[[sources/pods_c92b62]]"
  - "[[sources/main-kubernetes-components_82b036]]"
  - "[[sources/containerd-cri-etc_fb87d8]]"

---
## Description
The Container Runtime Interface (CRI) is the fundamental plugin API that enables Kubernetes to support multiple container runtimes by defining a standard communication protocol between the kubelet and the runtime. It was introduced because Kubernetes outgrew its initial tight coupling with Docker, allowing users to employ alternative runtimes like [[entities/containerd]] or [[entities/cri-o]]. CRI is built upon the standards defined by the [[entities/open-container-initiative-oci]], specifically the OCI Runtime Spec. This abstraction layer is what made the removal of the 'dockershim' possible, as CRI-native runtimes integrate directly without a compatibility shim. Because Kubernetes operates at the Pod level, you can transparently swap out the underlying container runtime while your Pod specs remain unchanged. The setup process for a CRI implementation involves specific system preparations, such as loading kernel modules and configuring `sysctl` parameters for bridge networking.

## Related Concepts
- [[concepts/container-runtime]]
- [[concepts/containerization]]
- node-components
- [[concepts/prerequisites-verification]]
- [[concepts/network-plugin]]
- pods
- dockershim

## Related Entities
- [[entities/kubernetes]]
- [[entities/kubeadm]]
- [[entities/containerd]]
- [[entities/kubelet]]
- [[entities/docker]]
- [[entities/open-container-initiative-oci]]
- [[entities/cri-o]]
- [[entities/pods]]
- [[entities/worker-node-1]]
- [[entities/worker-node-2]]
- [[entities/runc]]

## Mentions in Source
> **Source: kubernetes-installation-steps_e573e8**
> - Installing container runtime (e.g., containerd)
> - container runtime must be installed for nodes to run containers.

> **Source: install-kubernetes-components_c70e92**
> - Containerd is a lightweight, production-grade container runtime that implements the Kubernetes **Container Runtime Interface (CRI)**.
> - CRI-native: No shim required (Docker shim removed in v1.22).

> **Source: manual-notes_10b5c5**
> - ## Installing CRI (Container Runtime Interface):-
> - Try to follow the official docs but here are the commands that were followed, this is same for both master and worker nodes

> **Source: scheduling_f2b3ef**
> - To enable multiple runtimes, Kubernetes introduced the Container Runtime Interface (CRI) based on OCI specs.
> - Docker itself doesn't implement CRI, so Kubernetes used a temporary "
  - " until removing it in v1.24.

> **Source: pods_c92b62**
> - Kubernetes delegates Pod networking to **CNI plugins**—external binaries conforming to the CNI spec, much like CRI for runtimes.
> - Because Kubernetes operates at the **Pod level**, you can swap out the underlying container runtime (Docker, containerd, CRI-O) transparently—your Pod specs remain unchanged.

> **Source: main-kubernetes-components_82b036**
> - **Container Runtime** (e.g., Docker, Containerd): Provides the environment to run containers.

> **Source: containerd-cri-etc_fb87d8**
> - "
  - "
> - "