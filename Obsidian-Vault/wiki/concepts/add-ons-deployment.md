---
type: concept
title: "add-ons deployment"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "bootstrapping-control-place_e4e0df"
tags:
  - deployment
aliases:
  - "core add-ons"
  - "add-ons"
---
# add-ons deployment

## Definition
Add-ons deployment refers to the process of installing essential cluster services after the control plane is initialized. In a kubeadm-managed cluster, critical add-ons are deployed as regular Kubernetes Pods in the `kube-system` namespace to provide fundamental cluster functionality.

## Key Characteristics
- Represents post-initialization deployment of core services, not part of the initial control plane setup.
- Deployed as standard Kubernetes Pods within the `kube-system` namespace.
- Managed and orchestrated by the kubeadm tool.
- Essential for basic cluster networking, service discovery, and operational functionality.
- Typically deployed automatically following a successful `kubeadm init` command.


## Applications
- **Cluster Bootstrapping:** Provides the minimum viable set of services required for a functioning Kubernetes cluster.
- **Networking:** Deploys `kube-proxy` to manage network rules (iptables/ipvs) on each node, enabling service communication.
- **Service Discovery:** Deploys CoreDNS to provide internal DNS resolution, allowing Pods to discover Services by name.
- **Operational Readiness:** Ensures the cluster is in a ready state for workload scheduling and management after control plane initialization.


## Related Concepts
- [[concepts/kubeadm-init]]
- kube-proxy
- [[concepts/pod-network]]
- [[concepts/bootstrapping]]
- [[concepts/kubernetes-cluster]]


## Related Entities
- [[entities/kubeadm]]
- [[entities/coredns]]
- [[entities/kubelet]]
- [[entities/kubernetes]]
- [[entities/pods]]


## Mentions in Source
- "Immediately after, kubeadm deploys two critical add-ons as regular Kubernetes Pods in `kube-system`: kube-proxy on every node (via a DaemonSet)." — bootstrapping-control-place_e4e0df
- "CoreDNS for in-cluster name resolution." — bootstrapping-control-place_e4e0df