---
title: Vasu
category: entities
tags: [person, engineer, luma-ai, queue-management, ml-infrastructure]
summary: Luma AI engineer affected by queue management challenges in Dream Machine's inference serving architecture.
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
  - target: "[[luma-ai]]"
    type: related_to
  - target: "[[sorish]]"
    type: related_to
  - target: "[[keegan-mccallum]]"
    type: related_to
---

Vasu is an engineer at Luma AI who works on the infrastructure team. He is mentioned by Keegan McCallum during his AIEF2025 presentation as one of the engineers affected by the challenges of managing Dream Machine's queue-based scheduling system.

Keegan noted that "managing these queues is everybody's least favorite task" at Luma, and specifically named Sorish and Vasu as engineers who deal with this daily. The queue management challenges include:

- Back pressure across multiple GPU clusters
- Work starvation across user tiers
- Dispatch limitation tuning
- SLA-based scheduling enforcement

Vasu's role highlights that queue management is a pervasive operational challenge across Luma's infrastructure team, not just a one-time problem.
