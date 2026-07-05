---
title: "Self-Hosted Overhead"
category: concepts
tags:
  - self-hosted
  - day-2
  - operational-overhead
  - roi
  - enterprise
  - deployment-model
summary: The day-2 operational burden that self-hosted software creates for customers — setup complexity, maintenance costs, and weak vendor-customer relationships that erode ROI for both parties.
sources:
  - "AIEF2025 - Building agent fleet architectures your CISO doesn't hate — Lou Bichard, Gitpod - https://www.youtube.com/watch?v=d9rsC6_VLoA"
provenance:
  extracted: 0.80
  inferred: 0.20
  ambiguous: 0.00
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: [[concepts/managed-substrate|Managed Substrate]]
    type: motivates
  - target: [[concepts/day-2-operations|Day-2 Operations]]
    type: related_to
  - target: [[concepts/agent-fleet-architecture|Agent Fleet Architecture]]
    type: problem-for
---

# Self-Hosted Overhead

**Self-hosted overhead** refers to the day-2 operational burden that self-hosted software creates — the ongoing costs of setup, maintenance, and operation that erode the value proposition for both vendor and customer.

## Dimensions of Overhead

1. **Setup complexity**: Self-hosted products require customers to install and configure infrastructure, often across multiple cloud providers with different Kubernetes flavors and configurations.

2. **Maintenance burden**: Running self-hosted infrastructure typically requires dedicated personnel — two, three, or even entire teams allocated to managing the software's infrastructure.

3. **ROI erosion**: When customers must allocate significant resources to operate the product, the benefit they receive is diminished. The vendor also loses revenue as the product becomes harder to sell.

4. **Weak vendor-customer relationship**: Without the vendor's operational involvement, adoption and rollout can fail. The vendor has no visibility into how the product is actually being used or what problems customers face.

## The Vendor's Perspective

Self-hosted models create a business problem: "Having a very difficult product to set up and run is effectively eroding your ROI." If the product is hard to operate, fewer enterprises will buy it, and those that do will churn faster.

## Related Pages

- [[concepts/managed-substrate|Managed Substrate]] — The intermediate model that addresses self-hosted overhead
- [[concepts/day-2-operations|Day-2 Operations]] — The broader category of post-deployment operational challenges
- [[concepts/agent-fleet-architecture|Agent Fleet Architecture]] — The problem space that self-hosted overhead creates
