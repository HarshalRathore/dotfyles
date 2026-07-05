---
title: "Healthcare Friction"
category: concepts
tags:
  - healthcare
  - friction
  - inefficiency
  - administration
  - claims
  - payers
  - providers
summary: "Inefficiencies from communication between payers, providers, and patients. Includes claim denials, appeals, rework, and delays that increase cost without improving outcomes."
sources:
  - "[[sources/watchv=tquusn1qsws]]"
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
  - target: "[[concepts/revenue-cycle-management|Revenue Cycle Management]]"
    type: related_to
  - target: "[[concepts/medical-claim-denials|Medical Claim Denials]]"
    type: related_to
  - target: "[[concepts/healthcare-administration-costs|Healthcare Administration Costs]]"
    type: extends
---

# Healthcare Friction

Healthcare friction refers to the inefficiencies that arise from communication and coordination between payers, providers, and patients in the U.S. healthcare system. These frictions manifest as claim denials, appeals, rework, delays, and administrative overhead — all of which increase cost without improving patient outcomes. ^[extracted]

## Definition

Friction in healthcare is the cost of getting the right information to the right place at the right time. A large amount of healthcare cost is correlated with this friction: the more back-and-forth communication required between stakeholders, the higher the cost, even when the clinical outcome is the same. ^[extracted]

## Key Manifestations

### Claim Denials and Appeals

A single claim may be denied and appealed multiple times (one example cited: denied 4 times, appealed 4 times), requiring the provider to send documentation through multiple interfaces and manual processes. The provider in this case waited 200 days for payment after the procedure. ^[extracted]

### Prior Authorization Delays

Providers must often check payer portals to determine whether a procedure requires prior authorization. Even when they do, denials occur due to policy changes or errors. This creates delays before care is even delivered. ^[extracted]

### Registration and Coding Errors

Technical errors in patient registration, insurance data, or medical coding cause denials that are not medical disagreements but simple data mistakes — the most preventable category of friction. ^[extracted]

## The Payer-Provider Arms Race

Both providers and payers are deploying AI to improve their positions in this adversarial dynamic:
- **Payers** use AI to increase the volume of claims they can adjudicate and identify more denial reasons
- **Providers** use AI to reduce denials and improve appeal success rates

This creates a feedback loop that increases overall system complexity and backlog. ^[extracted]

## AI as a Friction Reducer

The core argument is that AI should shift resources from bureaucracy and friction towards clinical care and other productive activities. Rather than building smarter appeal systems, the focus should be on preventing errors at the source — using longitudinal data and predictive models to catch registration errors, coding mistakes, and prior auth gaps before they cause denials. ^[extracted]

## Related

- [[concepts/revenue-cycle-management|Revenue Cycle Management]]
- [[concepts/medical-claim-denials|Medical Claim Denials]]
- [[concepts/prior-authentication|Prior Authorization]]
- [[concepts/healthcare-administration-costs|Healthcare Administration Costs]]
- [[entities/ensemble-health|Ensemble Health Partners]]
