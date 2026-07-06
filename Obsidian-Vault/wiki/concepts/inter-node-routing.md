---
type: concept
title: Inter-node routing
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/pods_c92b62]]'
tags:
- networking
aliases:
- Pod routing across nodes
- Inter-node routing
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: Inter-node routing
---
# Inter-node routing

## Definition
Inter-node routing is the mechanism in Kubernetes that enables Pods running on different nodes in a cluster to communicate directly with each other using their assigned Pod IP addresses. It is a fundamental networking function managed by the Container Network Interface (CNI) plugin, ensuring that network traffic destined for a Pod IP on another node is correctly routed across the cluster's network fabric.

## Key Characteristics
- Enables direct Pod-to-Pod communication across different nodes using Pod IP addresses.
- Relies on network routes configured on each node's host operating system by the CNI plugin.
- Typically uses the destination node's host IP as the next-hop gateway for traffic destined for its Pod subnet.
- In multi-network or untrusted cloud environments, it often employs overlay encapsulation techniques (like VXLAN or IP-in-IP) to tunnel traffic.
- Transparent to applications running within Pods; the routing details are abstracted by the Kubernetes network model.
- Manages the routing table to ensure each node knows how to reach the Pod subnets of all other nodes in the cluster.

## Applications
- **Multi-Node Cluster Communication**: Essential for services and microservices distributed across a cluster to interact seamlessly.
- **Service Mesh Foundations**: Provides the underlying network connectivity that service meshes rely on for inter-service communication.
- **Stateful Application Clustering**: Enables distributed databases or storage systems to form clusters across multiple nodes.
- **Cloud-Native Application Deployment**: Facilitates the deployment of scalable, resilient applications on cloud infrastructure (AWS, GCP, Azure) where nodes are distributed across physical or virtual machines.
- **Hybrid and Multi-Cloud Networking**: When using overlay networks, allows Pod communication across nodes that may span different underlying network subnets or cloud providers.

## Related Concepts
- [[concepts/overlay-networking]]
- [[concepts/vxlan]]
- [[concepts/route-tables]]
- [[concepts/kubernetes-network-model]]

## Related Entities
- [[entities/calico]]
- [[entities/flannel]]
- [[entities/weavenet]]

## Mentions in Source
- The plugin **populates the host's routing table**: Destination = each node's **Pod subnet**, Gateway = that node's **host IP** on the primary network. — pods_c92b62
- In cloud or untrusted networks, plugins (Calico, Flannel, Weave) often **encapsulate** Pod traffic in VXLAN/IP-in-IP packets so underlying IP fabric need not know Pod IPs. — pods_c92b62