---
title: "Wells Fargo"
category: entities
tags:
  - company
  - banking
  - payments
  - financial-services
aliases:
  - Wells Fargo
sources:
  - "AIEF2025 - #define AI Engineer - Greg Brockman, OpenAI (ft. Jensen Huang) - https://www.youtube.com/watch?v=avWhreBUYF0"
provenance:
  extracted: 0.95
  inferred: 0.03
  ambiguous: 0.02
base_confidence: 0.90
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: peripheral
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/stripe|Stripe]]"
    type: integrates-with
---

# Wells Fargo

Wells Fargo is a major American bank that served as the payment backend provider for [[entities/stripe|Stripe]] in its early days. ^[extracted]

The bank claimed that the technical integration with Stripe would take nine months — a timeline that led Stripe's team to complete the entire integration in 24 hours instead, treating it like a college problem set. ^[extracted] During the certification call, the integration initially failed, and the Wells Fargo representative said "I'll see you next week" — following the standard pattern for their other customers who send errors to their dev team. ^[extracted] The team rescheduled two hours later and passed on the second attempt. ^[extracted]

This episode is cited by [[entities/greg-brockman|Greg Brockman]] as an example of how startups should question inherited constraints and unnecessary overhead from organizations that are no longer applicable to their circumstances. ^[extracted]

## Related

- [[entities/stripe|Stripe]] — Early payment backend integration partner
- [[entities/greg-brockman|Greg Brockman]] — Cited in context of Stripe's engineering philosophy

## Sources

- AIEF2025 - #define AI Engineer - Greg Brockman, OpenAI (ft. Jensen Huang) - https://www.youtube.com/watch?v=avWhreBUYF0
