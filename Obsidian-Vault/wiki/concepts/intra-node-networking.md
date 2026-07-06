---
type: concept
title: Intra-node Networking
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/pods_c92b62]]'
tags:
- networking
aliases:
- Within-node networking
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: Intra-node Networking
---
# Intra-node Networking

## Definition
Intra-node networking in Kubernetes refers to the communication path between Pods running on the same node. This is handled locally by the container runtime and CNI plugin without involving external network infrastructure. Typically, the CNI plugin creates a network bridge (or uses an overlay device) on the node, and each Pod is connected to this bridge via a virtual Ethernet (veth) pair. Pods on the same node can communicate directly through this bridge using their Pod IP addresses. This local communication is efficient and does not leave the host machine, providing low-latency connectivity for co-located services.

## Key Characteristics
- **Local Communication:** Traffic between Pods on the same node is confined to the host machine and does not traverse physical network hardware or external routers.
- **CNI Plugin Implementation:** The connectivity is established and managed by the node's configured Container Network Interface (CNI) plugin.
- **Bridge & veth Pair Model:** A common implementation involves a network bridge (e.g., `cni0` for Flannel) on the host, with each Pod connected via one end of a [[concepts/veth-pair]] placed in the Pod's network namespace.
- **Low Latency & High Bandwidth:** Communication is direct and efficient, avoiding the overhead of cross-node traffic.
- **Transparent to Pods:** Pods communicate using standard IP addresses, unaware that their traffic is being handled locally on the node.

## Applications
- **Microservices Communication:** Services within a Kubernetes cluster, such as a web frontend and a backend API, are frequently scheduled on the same node for performance, making intra-node networking their primary communication path.
- **Sidecar Patterns:** Service meshes like Istio or Linkerd rely heavily on efficient intra-node communication between the application container and its sidecar proxy.
- **Co-located Databases and Applications:** StatefulSets running a database pod often have their application pods scheduled on the same node to minimize latency.
- **Local Debugging and Monitoring:** Tools and agents running in a DaemonSet interact with other local pods using intra-node paths.

## Related Concepts
- [[concepts/veth-pair]]
- [[concepts/bridge-network-in-docker]]
- linux-network-namespace

## Related Entities
- [[entities/calico]]
- [[entities/flannel]]

## Mentions in Source
- "On each node, the CNI plugin: 1. **Creates a bridge** (or uses an overlay device) 2. **Attaches each Pod** via a **veth** pair: one end in the Pod's netns, the other on the bridge." — pods_c92b62
- "3. **Sets up routes** so that `eth0` in the Pod maps to its IP." — pods_c92b62