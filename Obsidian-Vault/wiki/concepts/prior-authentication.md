---
title: "Prior Authorization"
category: concepts
tags:
  - healthcare
  - prior-auth
  - insurance
  - payers
  - authorization
  - claims
summary: "A payer-required permission process where providers must obtain approval before performing certain procedures. A major source of administrative friction and claim denials."
sources:
  - "[[sources/watchv=tquusn1qsws]]"
provenance:
  extracted: 0.9
  inferred: 0.1
  ambiguous: 0.0
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/revenue-cycle-management|Revenue Cycle Management]]"
    type: related_to
  - target: "[[concepts/healthcare-friction|Healthcare Friction]]"
    type: related_to
  - target: "[[concepts/medical-claim-denials|Medical Claim Denials]]"
    type: related_to
---

# Prior Authorization

Prior authorization (prior auth) is a process in which [[concepts/payers|payers]] (insurance companies, Medicare, Medicaid) require [[concepts/providers|providers]] (hospitals, specialists, doctors) to obtain permission before performing certain medical procedures or treatments. It is a gatekeeping mechanism intended to control costs and ensure medical necessity, but it has become a major source of administrative friction. ^[extracted]

## The Problem

Prior authorization is challenging for several reasons:

- **Unclear requirements** — It is often not clear whether a specific procedure requires prior authorization
- **Portal-based verification** — Providers must check individual payer portals to determine requirements, and policies may have changed since the last check
- **Inconsistent denials** — Even when prior auth is correctly requested, claims may still be denied due to policy changes, incorrect data, or procedural errors
- **No standardized process** — Each payer has different requirements, forms, and timelines

## AI Opportunity

Nathan Wan of [[entities/ensemble-health|Ensemble Health Partners]] identifies prior authorization as a prime area for AI intervention. The key insight is that AI can correct errors before they happen by leveraging historical data:

- **Predictive modeling** — Analyze historical prior auth requests and outcomes to predict whether a given procedure will require authorization and whether it will be approved
- **Pattern recognition** — Identify common reasons for prior auth denials and flag them during the registration/coding phase
- **End-to-end visibility** — Organizations with longitudinal data across the revenue cycle can see the full chain from initial prior auth request through final denial, enabling them to prevent errors at the source

The approach is not to build a "smarter appeal system" but to prevent the errors that cause denials in the first place. ^[extracted]

## Relationship to Claim Denials

Prior auth denials are a subset of the broader [[concepts/medical-claim-denials|claim denial]] problem. Most prior auth issues are technical errors (missing data, incorrect coding, policy mismatches) rather than medical disagreements, making them highly amenable to AI-driven prevention. ^[extracted]

## Related

- [[concepts/revenue-cycle-management|Revenue Cycle Management]]
- [[concepts/healthcare-friction|Healthcare Friction]]
- [[concepts/medical-claim-denials|Medical Claim Denials]]
- [[entities/ensemble-health|Ensemble Health Partners]]
- [[entities/nathan-wan|Nathan Wan]]
