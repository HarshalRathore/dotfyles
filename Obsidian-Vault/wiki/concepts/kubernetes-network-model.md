---
type: concept
title: Kubernetes Network Model
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/pods_c92b62]]'
tags:
- networking
aliases:
- Flat network model
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: Kubernetes Network Model
---
# Kubernetes Network Model

## Definition
The Kubernetes network model is a fundamental design principle that defines how networking operates within a Kubernetes cluster. It establishes a set of non-negotiable rules for Pod communication, mandating a flat, routable IP address space that enables direct connectivity without network address translation (NAT) or complex port mappings.

## Key Characteristics
- **Unique Cluster-Wide IP for Every Pod**: Each Pod is assigned a unique IP address that is valid across the entire cluster.
- **Direct Pod-to-Pod Communication**: Pods can communicate with each other directly via their IPs, regardless of whether they are on the same node or different nodes.
- **No NAT Between Pods**: There is no network address translation applied to traffic between Pods, creating a consistent and predictable network environment.
- **Flat Address Space**: The model provides a single, flat IP network for all Pods, abstracting away the underlying host network infrastructure.

## Applications
The primary application of this model is to simplify communication between microservices in a Kubernetes cluster. By ensuring that any Pod can reach any other Pod using a standard IP address, it removes the need for:
- Manual port mapping and management.
- Service discovery based on dynamic host IPs.
- Complex network configurations for cross-node communication.

The model allows developers to treat the network as a predictable, uniform substrate, enabling services to communicate reliably regardless of their scheduling location on cluster nodes. The actual implementation of this model is delegated to Container Network Interface (CNI) plugins.

## Related Concepts
- [[concepts/flat-network-model]]
- [[concepts/network-plugin]]
- [[concepts/pod-network]]
- [[concepts/overlay-networking]]
- [[concepts/network-plugin]]

## Related Entities
- [[entities/kubernetes]]
- [[entities/flannel]]
- [[entities/calico]]
- [[entities/weavenet]]

## Mentions in Source
- "Kubernetes' network model mandates (no exceptions): 1. **Unique Pod IPs cluster-wide** 2. **Pod-to-Pod connectivity** on the **same node** via Pod IPs 3. **Pod-to-Pod connectivity** across **different nodes** via Pod IPs 4. **No NAT** between Pods (flat address space)." — pods_c92b62
- "This flat model avoids port conflicts and manual port mappings ubiquitous in Docker's default bridge mode." — pods_c92b62