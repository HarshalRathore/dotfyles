---
title: "AI That Pays: Lessons from Revenue Cycle — Nathan Wan, Ensemble Health"
category: references
tags:
  - talk
  - aief2025
  - healthcare
  - revenue-cycle
  - ai
  - rcm
  - denials
  - prior-auth
summary: "Nathan Wan (Head of AI, Ensemble Health) at AIEF2025 on AI's opportunity in healthcare revenue cycle — claim denials, prior auth, and reducing administrative friction."
sources:
  - "[[sources/watchv=tquusn1qsws]]"
provenance:
  extracted: 0.85
  inferred: 0.15
  ambiguous: 0.0
base_confidence: 0.9
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/nathan-wan|Nathan Wan]]"
    type: related_to
  - target: "[[entities/ensemble-health|Ensemble Health Partners]]"
    type: related_to
---

# AI That Pays: Lessons from Revenue Cycle

**Speaker:** Nathan Wan, Head of AI, Ensemble Health Partners
**Event:** AI Engineer World's Fair 2025
**Video:** https://www.youtube.com/watch?v=TquUsN1QsWs

## TL;DR

Nathan Wan argues that the financial/administrative side of U.S. healthcare — specifically revenue cycle management — is massively under-optimized and "ripe for AI disruption." While most AI-in-healthcare attention focuses on clinical areas (diagnostics, imaging, drug discovery), the billing and claims process consumes a disproportionate share of resources: 40% of hospitals operate at a negative margin due to manual revenue cycle processes, and healthcare administration headcount has grown 30-fold while clinical staff barely doubled over three decades. Most claim denials are technical errors, not medical disagreements, making them preventable with AI.

## Problem & Motivation

- **40% of U.S. hospitals operate at a negative margin**, losing money due to broken revenue cycle processes (delays, denials, rework, lost revenue), not clinical costs. ^[extracted]
- **Healthcare administration costs** represent a large proportion of the 20% of U.S. GDP attributed to healthcare. ^[extracted]
- **Admin headcount grew 30-fold** over three decades while clinical staff barely doubled — the administrative side is growing far faster than the clinical side. ^[extracted]
- **Claim denials create massive friction**: a single example claim was denied and appealed four times, with the provider waiting 200 days for payment. ^[extracted]
- **Payers are also increasing denial rates** using AI, making the problem worse for providers and creating larger backlogs. ^[extracted]

## Key Claims

### Most Denials Are Technical Errors, Not Medical Disagreements

The majority of claim denials are not caused by medical disagreements between providers and payers. Instead, they result from technical errors in registration, missing data, or incorrect coding — errors that could be prevented if the right information were captured correctly the first time. ^[extracted]

### Prior Authorization Is a Major Pain Point

Prior authorization requires providers to get permission from payers before certain procedures. The process is challenging because:
- It's often unclear whether a prior auth is required
- Providers must check payer portals, which may have outdated policies
- Even when requested correctly, denials occur due to policy changes or errors

Wan identifies this as a prime area for AI intervention — using historical data to predict and prevent prior auth errors before they happen. ^[extracted]

### Longitudinal Data Is the Key Advantage

Ensemble's end-to-end RCM positioning gives them visibility across the entire patient financial journey — from eligibility checks through final payment. This longitudinal data allows them to "connect the dots" and identify patterns that prevent errors at the source, rather than managing appeals after denials occur. ^[extracted]

### AI Is Being Used by Both Sides

Both providers AND payers are deploying AI. Payers are using AI to increase the volume of claims they can adjudicate and to identify more issues for denial — making the adversarial dynamic more intense and creating larger backlogs for providers. ^[extracted]

## Key Concepts Discussed

- Revenue Cycle Management (RCM) — the financial process of the patient journey
- Healthcare friction — inefficiencies from communication between payers, providers, and patients
- Claim denials and appeals — a major component of healthcare friction
- Prior authorization — payer-required permission for procedures
- Longitudinal data visibility — end-to-end view across the revenue cycle
- Ambient clinical documentation — mentioned in context of Wan's Google background
- Three stakeholder model: patients, providers, payers

## Open Questions

- What specific AI models or approaches is Ensemble deploying in production for prior auth prediction?
- How do payers' AI denial systems compare to providers' AI prevention systems?
- What regulatory or compliance constraints limit AI adoption in RCM?

## Related Pages

- [[entities/nathan-wan|Nathan Wan]]
- [[entities/ensemble-health|Ensemble Health Partners]]
- [[concepts/revenue-cycle-management|Revenue Cycle Management]]
- [[concepts/healthcare-friction|Healthcare Friction]]
- [[concepts/prior-authentication|Prior Authorization]]
- [[concepts/medical-claim-denials|Medical Claim Denials]]
- [[concepts/healthcare-administration-costs|Healthcare Administration Costs]]
- [[concepts/ambient-clinical-documentation|Ambient Clinical Documentation]]
