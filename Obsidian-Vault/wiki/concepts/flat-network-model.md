---
type: concept
title: "Flat Network Model"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "pods_c92b62"
tags:
  - networking
aliases:
  - Flat addressing
  - Kubernetes Flat Network
---
# Flat Network Model

## Definition
The flat network model is a foundational networking paradigm in Kubernetes that assigns every Pod a unique, routable IP address within the cluster. This creates a uniform, non-translated address space, allowing Pods to communicate directly with each other, regardless of which node they are scheduled on.

## Key Characteristics
- **Unique Cluster-Wide Pod IPs:** Each Pod receives a globally unique IP address within the cluster network.
- **Direct Same-Node Connectivity:** Pods running on the same node can communicate via their unique IP addresses.
- **Direct Cross-Node Connectivity:** Pods on different nodes can communicate via their IP addresses as if they were on the same physical network.
- **No Network Address Translation (NAT):** Communication between Pods occurs without any NAT, preserving source and destination IPs.
- **Eliminates Port Conflicts:** Services do not need to manage host port mappings to avoid conflicts, as each Pod has its own IP.
- **Simplified Service Discovery:** Provides a predictable and stable network identity for every Pod.

## Applications
- **Kubernetes Pod Networking:** This model is the mandatory network foundation for all Kubernetes clusters.
- **Service Mesh Implementations:** Underpins the networking layer for service meshes like Istio by providing direct, IP-based Pod communication.
- **CNI Plugin Deployment:** Implemented by Container Network Interface (CNI) plugins (e.g., Flannel, Calico, Weave Net) which configure the network to fulfill the model's requirements.

## Related Concepts
- [[concepts/network-plugin]]
- IPAM
- Pod networking
- [[concepts/overlay-networking]]

## Related Entities
- [[entities/flannel]]
- [[entities/calico]]
- [[entities/weavenet]]
- [[entities/pods]]

## Mentions in Source
- "Kubernetes’ network model mandates (no exceptions): 1. **Unique Pod IPs cluster-wide**; 2. **Pod-to-Pod connectivity** on the **same node** via Pod IPs; 3. **Pod-to-Pod connectivity** across **different nodes** via Pod IPs; 4. **No NAT** between Pods (flat address space)." — pods_c92b62