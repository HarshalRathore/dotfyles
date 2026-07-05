---
title: Tailscale
category: entities
tags: [networking, vpn, mesh-network, remote-access, ml-infrastructure]
summary: WireGuard-based mesh VPN used by Luma AI to connect heterogeneous GPU clusters across cloud providers into a unified compute pool for Dream Machine inference.
sources:
  - "[[sources/watchv=ey4o9m6aswi]]"
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[distributed-inference]]"
    type: uses
  - target: "[[decoupled-architecture]]"
    type: related_to
  - target: "[[gpu-scaling]]"
    type: related_to
---

Tailscale is a WireGuard-based mesh VPN service that creates secure, private networks between machines across different locations and cloud providers. It provides automatic NAT traversal, zero-config networking, and end-to-end encryption.

## Role in Luma AI's Infrastructure

Luma AI uses Tailscale as the network connectivity layer that connects their heterogeneous GPU clusters into a unified compute pool. During the Dream Machine launch crisis, Tailscale enabled:

- **Cross-provider connectivity**: GPU workers on any cloud provider or VM could connect to the shared Redis queue and SeaweedFS storage without complex network configuration.
- **Rapid scaling**: Any machine with PyTorch could become a GPU worker by simply running a command and connecting via Tailscale — no specialized provisioning or VPC peering required.
- **Training cluster repurposing**: The training cluster's GPUs could be repurposed for inference by connecting them to the existing network via Tailscale.

This eliminated the need for complex networking setups (VPC peering, VPN tunnels, firewall rules) that would have been required to connect GPUs across multiple cloud providers.

## Relationship to Other Infrastructure

Tailscale works alongside [[entities/redis|Redis] (queue layer) and [[entities/seaweedfs|SeaweedFS]] (storage layer) to form the three pillars of Luma's multi-provider GPU infrastructure. The combination enables the architectural property that "any GPU anywhere with Redis and storage access can join the pool."
