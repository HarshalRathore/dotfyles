---
type: concept
title: "Network plugin"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "pods_c92b62"
tags:
  - deployment
aliases:
  - "Network add-on"
  - Pod networking plugin
---
# Network plugin

## Definition
A network plugin in Kubernetes is a software component that implements the Container Networking Interface (CNI) specification to handle Pod networking. These plugins are responsible for configuring network connectivity for Pods, including IP address allocation, virtual Ethernet (veth) pair creation between the host and Pod network namespace, and route configuration on the node.

## Key Characteristics
- **CNI Specification Compliance**: Must adhere to the standard CNI specification to be invoked by the kubelet.
- **DaemonSet Deployment**: Typically deployed and maintained as a DaemonSet, ensuring one instance runs on every eligible node in the cluster.
- **Core Responsibilities**: Manages IP allocation, veth pair creation, and host route configuration for Pods.
- **Kubelet Integration**: Invoked by the kubelet during Pod creation, receiving network namespace information and the desired Pod CIDR.
- **Critical for Flat Networking**: Essential for fulfilling Kubernetes' model of a flat network where every Pod can communicate directly with every other Pod across nodes.

## Applications
- **Provisioning Pod-to-Pod Networking**: Provides the underlying network connectivity required for Pods to communicate across nodes in a Kubernetes cluster.
- **Cluster Add-ons**: Often installed as a fundamental add-on during Kubernetes cluster setup to establish the networking layer.
- **Network Policy Enforcement**: Some plugins (e.g., Calico) extend functionality to enforce network policies that control traffic flow between Pods.
- **Overlay Network Creation**: Can create overlay networks (like Flannel's VXLAN or Weave's mesh) to tunnel Pod traffic across different physical networks.

## Related Concepts
- [[concepts/network-plugin]]
- DaemonSet
- [[concepts/overlay-networking]]

## Related Entities
- [[entities/calico]]
- [[entities/flannel]]
- [[entities/weavenet]]

## Mentions in Source
- "Kubernetes delegates Pod networking to **CNI plugins**—external binaries conforming to the CNI spec." — pods_c92b62
- "At Pod creation, kubelet invokes CNI binaries, passing network namespace info and desired Pod CIDR." — pods_c92b62