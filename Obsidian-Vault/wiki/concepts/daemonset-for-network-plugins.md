---
type: concept
title: "DaemonSet for network plugins"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "pods_c92b62"
tags:
  - deployment
aliases:
  - Network plugin DaemonSet
---
# DaemonSet for network plugins

## Definition
A DaemonSet for network plugins is a Kubernetes workload pattern that ensures a single instance of a network agent (Pod) is deployed and runs on every node within the cluster. It is the standard deployment mechanism for Container Network Interface (CNI) plugins, which use these agents to manage node-level network configuration, route management, and overlay networking.

## Key Characteristics
- **Node Affinity:** Guarantees a network Pod is scheduled and executed on every node (including control plane nodes, if configured).
- **Lifecycle Management:** Automatically starts new Pods on newly joined nodes and terminates Pods from nodes that are removed from the cluster.
- **Per-Node Networking Agent:** The Pod on each node runs the necessary binaries and configuration to set up network interfaces (like veth pairs), manage routes, and maintain local network state.
- **Cluster-Wide Consistency:** Provides uniform network behavior and configuration across all nodes in the cluster.
- **Dynamic Adaptation:** Enables the cluster network to dynamically adapt as nodes are added or removed, maintaining connectivity.

## Applications
- **Core CNI Plugin Deployment:** This is the primary method for deploying the core agent of most CNI plugins, such as [[entities/calico]], [[entities/flannel]], and [[entities/weavenet]].
- **Overlay Network Setup:** Running agents on each node to create and manage virtual network overlays (e.g., VXLAN meshes).
- **Route Propagation:** The agent on each node can participate in routing protocols (like BGP for Calico) or gossip protocols (for Weave Net) to distribute routing information.
- **Network Policy Enforcement:** Some CNI plugins use DaemonSet-deployed agents to apply and enforce network policies at the node level.
- **Node Network Configuration:** Automating the configuration of host-level network settings required for the cluster network to function.

## Related Concepts
- [[concepts/daemonsets]]
- [[concepts/network-plugin]]
- [[concepts/overlay-networking]]

## Related Entities
- [[entities/calico]]
- [[entities/flannel]]
- [[entities/weavenet]]

## Mentions in Source
- "CNI plugins deploy a control plane component as a **DaemonSet**: **Weave Net** runs one Pod per node, shares Pod IP mappings via gossip, builds efficient overlay meshes." — pods_c92b62
- "**Calico** uses BGP peering or an etcd datastore for route propagation." — pods_c92b62