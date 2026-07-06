---
title: Managed Substrate
category: concepts
tags:
- managed-substrate
- deployment-model
- multi-tenant
- self-hosted
- hybrid
- enterprise
summary: A deployment model where customer-owned infrastructure holds the workload (source code, data, integrations) but the vendor manages the service layer — combining data sovereignty with operational co...
sources:
- AIEF2025 - Building agent fleet architectures your CISO doesn't hate — Lou Bichard, Gitpod - https://www.youtube.com/watch?v=d9rsC6_VLoA
provenance:
  extracted: 0.85
  inferred: 0.15
  ambiguous: 0.0
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target:
  - - concepts/self-hosted-overhead|Self-Hosted Overhead
  type: addresses
- target:
  - - concepts/data-sovereignty|Data Sovereignty
  type: satisfies
- target:
  - - concepts/agent-fleet-architecture|Agent Fleet Architecture
  type: intermediate-step
- target:
  - - concepts/compute-abuse|Compute Abuse
  type: mitigates
---

# Managed Substrate

A **managed substrate** is a deployment model that sits between fully managed SaaS and fully self-hosted. The customer owns and operates the infrastructure (holding source code, data, and integrations), while the vendor manages and operates the service layer on top of it.

## How It Works

- **Customer infrastructure**: The workload runs on the customer's cloud or on-prem infrastructure. Data never leaves their environment.
- **Vendor management**: The vendor operates the service — handling upgrades, monitoring, scaling, and maintenance.
- **Telemetry**: Small pieces of operational telemetry data flow to the vendor for service management purposes.
- **Compliance**: Ticks the data sovereignty box for regulated industries because the data physically resides on customer infrastructure.

## Trade-offs

**Advantages over pure self-hosted:**
- Reduced operational burden on the customer — they don't need a dedicated team to manage infrastructure.
- Vendor maintains a relationship with end users, enabling better adoption support.
- Data sovereignty satisfied for regulated customers.

**Limitations:**
- Still built on complex infrastructure (Kubernetes in Gitpod's case) with high fixed costs.
- Multiple clusters required, increasing complexity and cost.
- Not a complete solution — Gitpod moved beyond this to a first-principles architecture.

## Related Pages

- [[concepts/agent-fleet-architecture|Agent Fleet Architecture]]
- [[concepts/self-hosted-overhead|Self-Hosted Overhead]]
- [[concepts/data-sovereignty|Data Sovereignty]]
- [[entities/gitpod|Gitpod]]
