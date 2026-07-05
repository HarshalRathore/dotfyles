---
title: "Day-2 Operations"
category: concepts
tags:
  - day-2
  - operations
  - operational-overhead
  - platform
  - enterprise
  - deployment-model
summary: The operational challenges that arise after software is deployed — maintenance, upgrades, monitoring, scaling, and customer support — which self-hosted models impose entirely on the customer.
sources:
  - "AIEF2025 - Building agent fleet architectures your CISO doesn't hate — Lou Bichard, Gitpod - https://www.youtube.com/watch?v=d9rsC6_VLoA"
provenance:
  extracted: 0.60
  inferred: 0.40
  ambiguous: 0.00
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: [[concepts/self-hosted-overhead|Self-Hosted Overhead]]
    type: encompasses
  - target: [[concepts/managed-substrate|Managed Substrate]]
    type: addressed-by
  - target: [[concepts/agent-fleet-architecture|Agent Fleet Architecture]]
    type: constraint-for
---

# Day-2 Operations

**Day-2 operations** (D2O) refer to all the operational work that happens after software is initially deployed: maintenance, upgrades, monitoring, scaling, troubleshooting, and customer support. In self-hosted models, day-2 operations fall entirely on the customer.

## The Problem

In a fully managed SaaS model, the vendor handles day-2 operations. In a self-hosted model, the customer must:

- Set up and configure infrastructure
- Run ongoing maintenance and upgrades
- Monitor and troubleshoot issues
- Scale infrastructure as needed
- Allocate personnel dedicated to platform operations

This creates significant overhead that erodes the product's value proposition.

## Impact on Enterprise Adoption

For regulated enterprises, day-2 operations are a major barrier:

- Requires dedicated infrastructure teams
- Increases total cost of ownership
- Creates friction in adoption and rollout
- Weakens the vendor-customer relationship

## Related Pages

- [[concepts/self-hosted-overhead|Self-Hosted Overhead]] — The specific ROI erosion caused by self-hosted day-2 operations
- [[concepts/managed-substrate|Managed Substrate]] — The model that shares day-2 responsibilities
- [[concepts/agent-fleet-architecture|Agent Fleet Architecture]] — The problem space day-2 operations constrains
