---
type: concept
title: BGP
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/pods_c92b62]]'
tags:
- networking
aliases:
- BGP
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: BGP
---
# BGP

## Definition
BGP (Border Gateway Protocol) is a standardized exterior gateway protocol designed to exchange routing and reachability information between autonomous systems (AS) on the Internet. It is the protocol that makes the Internet work by enabling each AS to learn the network paths to reach destinations in other autonomous systems.

## Key Characteristics
- **Path-vector protocol:** BGP makes routing decisions based on the entire AS-path to a destination, allowing for policy-based routing.
- **External gateway protocol (EGP):** Primarily used for routing between independent administrative domains (autonomous systems), in contrast to internal gateway protocols (IGPs) used within a single AS.
- **Uses TCP for reliable transport:** BGP sessions run over TCP (port 179), ensuring reliable, ordered delivery of routing updates.
- **Supports CIDR:** Classless Inter-Domain Routing allows for efficient allocation of IP address blocks and route aggregation.
- **Incremental and triggered updates:** BGP sends only the changes in routing information when the routing table changes, conserving bandwidth.
- **Path attributes:** BGP uses a rich set of path attributes (e.g., AS_PATH, NEXT_HOP, LOCAL_PREF) that influence route selection and policy enforcement.
- **Peer groups and route reflectors:** These mechanisms are used to scale BGP in large networks by reducing the number of required peering sessions.


## Applications
- **Internet backbone routing:** BGP is the fundamental protocol that connects the global Internet, enabling different ISPs and large organizations to exchange routing information.
- **Kubernetes networking with Calico:** In Kubernetes, Calico leverages BGP to build a scalable, efficient routing mesh between nodes. It uses BGP peering to propagate routes for Pod subnets directly, allowing for pod-to-pod communication across nodes without the overhead of encapsulation (overlay networks). This approach is optimal in clusters where Pod IP addresses are routable on the underlying network.
- **Enterprise network policy:** Large enterprises use BGP for multi-homing (connecting to multiple ISPs) and implementing sophisticated traffic engineering policies.
- **Data center fabrics:** BGP (specifically eBGP) is increasingly used as the routing protocol within modern data center networks due to its scalability and policy control.


## Related Concepts
- Overlay networking
- [[concepts/inter-node-routing]]
- [[concepts/network-plugin]]


## Related Entities
- [[entities/calico]]


## Mentions in Source
- "**Calico** uses BGP peering or an etcd datastore for route propagation." — [[entities/pods]]
- "Calico BGP route reflectors." — [[entities/pods]]