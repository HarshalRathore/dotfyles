---
type: concept
title: Node-bound
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/static-pod_d72e06]]'
tags:
- scheduling
aliases:
- node-specific
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: Node-bound
---
# Node-bound

## Definition
Node-bound is a core characteristic of static Pods, meaning each static Pod manifest is associated with exactly one node. The `kubelet` on that specific node watches its designated manifest directory to ensure the defined Pod is running, and this binding prevents the Pod from migrating to other nodes.

## Key Characteristics
- **Single-Node Association**: A static Pod manifest is tied to a specific node.
- **Kubelet Management**: The `kubelet` on the bound node is solely responsible for creating and maintaining the Pod.
- **No Migration**: The Pod cannot move or reschedule to another node automatically.
- **Node-Specific**: The Pod exists only on the node where its manifest is stored.
- **Foundation of Static Pods**: It is the fundamental mechanism that differentiates static Pods from regular, API-managed Pods.

## Applications
Node-bound is the essential design principle behind running control plane components (like the API server, scheduler, and controller manager) as static Pods. This ensures these critical services are always available on a specific node and are managed directly by the local `kubelet`, independent of the API server's health.

## Related Concepts
- [[concepts/manifest-directory]]
- [[concepts/mirror-pod]]

## Related Entities
- [[entities/kubelet]]
- [[entities/pods]]

## Mentions in Source
- "Node-bound: Each static Pod manifest lives on exactly one node → kubelet watches its manifest directory and ensures the Pod is running." — static-pod_d72e06