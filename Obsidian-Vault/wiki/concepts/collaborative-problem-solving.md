---
title: "Collaborative Problem-Solving"
category: concepts
tags:
  - teamwork
  - parallel-development
  - engineering-culture
  - rapid-delivery
aliases:
  - collaborative-problem-solving
sources:
  - "AIEF2025 - #define AI Engineer - Greg Brockman, OpenAI (ft. Jensen Huang) - https://www.youtube.com/watch?v=avWhreBUYF0"
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.65
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/stripe|Stripe]]"
    type: exemplified-by
  - target: "[[entities/greg-brockman|Greg Brockman]]"
    type: practiced-by
---

# Collaborative Problem-Solving

Collaborative problem-solving in high-velocity engineering contexts involves dividing work by direction rather than by component — having team members attack a problem from opposite ends simultaneously, with each person owning a distinct verification perspective. ^[extracted]

## The Wells Fargo Protocol

The most cited example comes from [[entities/stripe|Stripe]]'s Wells Fargo payment backend integration. The team of three used a "college problem set" approach: ^[extracted]

1. **Greg Brockman** — implemented everything (the builder)
2. **John Collison** — tested from the top of the test script downward (reporting what was broken)
3. **Dara** — tested from the bottom of the test script upward

This bidirectional testing strategy meant that any failure would be caught regardless of where it occurred in the integration, and the team could identify and fix issues in parallel rather than sequentially. ^[inferred]

## Key Characteristics

- **Directional division** — work is split by verification direction, not by feature area
- **Shared urgency** — all three people treated the problem as a single shared deadline
- **Real-time feedback** — constant communication about what was broken
- **No handoff** — no waiting for one person to finish before another starts

This pattern is particularly effective for integration work where the problem space is well-defined but the solution space is large. ^[inferred]

## Related

- [[entities/stripe|Stripe]] — Exemplified this approach
- [[entities/greg-brockman|Greg Brockman]] — Led the collaborative effort
- [[entities/patrick-collison|Patrick Collison]] — Part of the customer-obsessed culture
- [[concepts/customer-obsession|Customer Obsession]] — The motivation behind the speed

## Sources

- AIEF2025 - #define AI Engineer - Greg Brockman, OpenAI (ft. Jensen Huang) - https://www.youtube.com/watch?v=avWhreBUYF0
