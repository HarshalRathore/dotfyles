---
type: entity
title: "Kubelet"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/install-kubernetes-components_c70e92]]"
  - "[[sources/manual-notes_10b5c5]]"
  - "[[sources/static-pod_d72e06]]"
  - "[[sources/main-kubernetes-components_82b036]]"
tags:
  - product
aliases:
  - Node Agent
---
## Description
The **kubelet** is the primary node agent that runs on every node in a Kubernetes cluster. It ensures the containers described in PodSpecs are running and healthy as defined. Acting on instructions from the control plane, it manages pod scheduling and resource allocation on its node, communicates with the configured container runtime to start or stop containers, and reports the node's status back to the API server.

## Related Entities
- Kubernetes
- [[entities/kubeadm]]
- [[entities/kubectl]]
- [[entities/containerd]]
- [[entities/worker-node-2]]
- [[entities/worker-node-1]]
- pods

## Related Concepts
- [[concepts/intra-node-networking]]
- [[concepts/network-port-configuration]]
- [[worker-node]]
- [[concepts/static-pods]]
- [[concepts/mirror-pod]]
- [[concepts/bootstrapping]]
- [[concepts/control-plane-node]]

## Mentions in Source
- "kubelet’s HTTPS read-only API"
- "Kubernetes requires swap to be disabled so that the kubelet can accurately track available memory"
- **kubelet**: Node agent—launches pods, watches manifests.
- Initially, **kubelet** will show **`activating`** or **`waiting`** – this is expected until `kubeadm init` runs on the master.
- "kubelet is the primary node agent that runs on each node in a Kubernetes cluster"
- "sudo apt-get install -y kubelet kubeadm kubectl"
- "sudo systemctl enable --now kubelet"
- "responsible for communicating with the container runtime to manage pod workloads"
- "version locking applied with `sudo apt-mark hold`"
- Static Pods are Pods managed directly by the kubelet on a single node, without the API server or any controllers.
- Scans the directory **periodically**; creates, updates, or deletes Pods to match the files. (Kubernetes)

> **Source: main-kubernetes-components_82b036**
> - "**Kubelet**: Manages pod scheduling and resource allocation."