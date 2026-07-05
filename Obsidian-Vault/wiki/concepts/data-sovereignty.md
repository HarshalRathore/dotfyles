---
title: "Data Sovereignty"
category: concepts
tags:
  - data-sovereignty
  - data-residency
  - regulated-industries
  - enterprise
  - compliance
  - security
summary: The principle that customer data must remain under the customer's control — physically residing on their infrastructure and not being accessible to or processed by the vendor's systems.
sources:
  - "AIEF2025 - Building agent fleet architectures your CISO doesn't hate — Lou Bichard, Gitpod - https://www.youtube.com/watch?v=d9rsC6_VLoA"
provenance:
  extracted: 0.65
  inferred: 0.35
  ambiguous: 0.00
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: [[concepts/managed-substrate|Managed Substrate]]
    type: satisfies
  - target: [[concepts/ciso-approval|CISO Approval]]
    type: required-for
  - target: [[concepts/secure-dev-environment|Secure Dev Environment]]
    type: core-principle
  - target: [[concepts/agent-fleet-architecture|Agent Fleet Architecture]]
    type: constraint-for
---

# Data Sovereignty

**Data sovereignty** is the principle that customer data must remain under the customer's control — physically residing on their infrastructure and not being accessible to or processed by the vendor's systems. For regulated industries, data sovereignty is not optional; it is a prerequisite for deployment.

## Key Dimensions

- **Physical residency**: Data stays on customer-owned infrastructure (their cloud account, their data centers).
- **Access control**: The vendor cannot access customer data without explicit authorization.
- **Integration isolation**: Customer integrations (APIs, databases, services) run within the customer's environment.
- **Source code protection**: Proprietary code never leaves the customer's control.

## Role in Architecture Decisions

Data sovereignty is the primary driver pushing platforms away from managed multi-tenant SaaS toward self-hosted or managed substrate models. It is the "tick the box" requirement that regulated customers — banks, pharmaceuticals, healthcare — must satisfy before considering any AI or platform tool.

## Related Pages

- [[concepts/managed-substrate|Managed Substrate]] — The model that satisfies data sovereignty while reducing overhead
- [[concepts/ciso-approval|CISO Approval]] — Data sovereignty is a prerequisite for CISO approval
- [[concepts/secure-dev-environment|Secure Dev Environment]] — Built on data sovereignty principles
- [[concepts/agent-fleet-architecture|Agent Fleet Architecture]] — Data sovereignty constrains agent deployment models
