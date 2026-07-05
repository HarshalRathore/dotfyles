---
title: Sorish
category: entities
tags: [person, engineer, luma-ai, scheduling, ml-infrastructure]
summary: Luma AI engineer who implemented the SLA-based fair scheduling system in "a couple hours" on a weekend, preventing work starvation across user tiers.
sources:
  - "[[sources/watchv=ey4o9m6aswi]]"
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[luma-ai]]"
    type: related_to
  - target: "[[sla-based-scheduling]]"
    type: related_to
  - target: "[[keegan-mccallum]]"
    type: related_to
---

Sorish is an engineer at Luma AI who played a key role in solving the work starvation problem in Dream Machine's queue-based scheduling system.

## SLA-Based Scheduling Implementation

After Luma's team designed the SLA-based fair scheduling system (which ranks jobs by percentage of SLA consumed rather than absolute priority), Sorish implemented the entire system "on a weekend in a couple hours." This rapid implementation was critical to resolving the work starvation issue where lower-tier users were waiting 7-9 hours for their jobs to be processed.

The system Sorish implemented:
- Ranks jobs by the percentage of their SLA consumed
- An API job at 50% of SLA ranks equally with a light job at 50% of SLA
- Produces "intuitive fair scheduling behaviors" in practice

Sorish is also mentioned by Keegan McCallum as one of the engineers affected by the "least enjoyable part of working at Luma" — managing the queues.

## Recognition

Keegan gave a public shout-out to Sorish during his AIEF2025 presentation, acknowledging the weekend contribution that solved a critical infrastructure problem.
