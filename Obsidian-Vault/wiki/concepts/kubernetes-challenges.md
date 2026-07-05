---
title: "Kubernetes Challenges"
category: concepts
tags:
  - kubernetes
  - infrastructure
  - complexity
  - fixed-cost
  - platform
  - enterprise
summary: The operational and economic challenges of running Kubernetes for workloads it wasn't designed for — high fixed costs, complexity, and vendor lock-in that make it a poor fit for certain deployment models.
sources:
  - "AIEF2025 - Building agent fleet architectures your CISO doesn't hate — Lou Bichard, Gitpod - https://www.youtube.com/watch?v=d9rsC6_VLoA"
provenance:
  extracted: 0.70
  inferred: 0.30
  ambiguous: 0.00
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: [[concepts/agent-fleet-architecture|Agent Fleet Architecture]]
    type: motivates
  - target: [[concepts/first-principles-design|First-Principles Design]]
    type: motivates
  - target: [[concepts/managed-substrate|Managed Substrate]]
    type: limitation-of
---

# Kubernetes Challenges

**Kubernetes challenges** refer to the operational and economic difficulties of running Kubernetes for workloads it was not originally designed to serve. Gitpod's experience illustrates how a platform that starts on Kubernetes can find it increasingly misaligned with its needs over time.

## Key Challenges

1. **Not designed for this workload**: Kubernetes was built for container orchestration at cloud scale, not for managing ephemeral developer environments. The mismatch creates friction.

2. **High fixed cost**: Running multiple Kubernetes clusters carries a significant fixed cost — infrastructure, personnel, and tooling that must be maintained regardless of usage patterns.

3. **Complexity**: Even when managed by the vendor, Kubernetes introduces complexity in setup, configuration, and maintenance that compounds across customer deployments.

4. **Vendor lock-in**: Doubling down on a single cloud provider (AWS, in Gitpod's case) to reduce variance creates dependency on that provider's Kubernetes implementation.

## The Turning Point

Gitpod's decision to move away from Kubernetes represents a shift to **first-principles design** — building an architecture from the ground up based on actual customer requirements rather than cloud-native conventions. This new architecture now powers their AI agent fleet.

## Related Pages

- [[concepts/agent-fleet-architecture|Agent Fleet Architecture]]
- [[concepts/first-principles-design|First-Principles Design]]
- [[concepts/managed-substrate|Managed Substrate]]
- [[entities/gitpod|Gitpod]]
