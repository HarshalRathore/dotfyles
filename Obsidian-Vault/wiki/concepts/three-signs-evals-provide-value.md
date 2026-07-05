---
title: "Three Signs Evals Provide Value"
category: concepts
tags:
  - evals
  - evaluation
  - metrics
  - value
  - production-ai
  - braintrust
  - aief2025
sources:
  - "AIEF2025 - Five hard earned lessons about Evals — Ankur Goyal, Braintrust - https://www.youtube.com/watch?v=a4BV0gGmXgA"
summary: "Three indicators that evals are providing real organizational value: 24-hour model integration, user complaint → eval pipeline, and using evals to play offense on use cases before shipping.
provenance:
  extracted: 0.95
  inferred: 0.05
  ambiguous: 0.00
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/eval-driven-development|Eval-Driven Development]]"
    type: relates_to
  - target: "[[concepts/evals-are-not-unit-tests|Evals Are Not Unit Tests]]"
    type: extends
  - target: "[[concepts/evals-play-offense|Evals Play Offense]]"
    type: implements
---

# Three Signs Evals Provide Value

Ankur Goyal of [[entities/braintrust|Braintrust]] identifies three concrete signs that evals are providing real organizational value, rather than being a bureaucratic exercise. ^[extracted]

## Sign 1: 24-Hour Model Integration

When a new model releases, your evals should prepare you to launch a product update incorporating it within 24 hours. [[entities/sarah-sachs|Sarah Sachs]] from [[entities/notion|Notion]] demonstrated this: for every recent model release, Notion incorporates the new model within 24 hours. This is a strong indicator that evals are well-engineered and the model-switching pipeline is automated. ^[extracted]

If you cannot do this, it means your eval infrastructure has gaps — likely manual steps, brittle datasets, or scorers tied to specific models. ^[inferred]

## Sign 2: User Complaint → Eval Pipeline

When a user complains about something, there should be a clear and straightforward path to add that complaint into your evals. This enables incorporating real user feedback into evaluation, catching regressions on actual user problems rather than synthetic edge cases. ^[extracted]

Without this path, valuable user signal is lost into the ether. With it, evals continuously reflect the real problems users face. ^[inferred]

## Sign 3: Playing Offense with Evals

Evals should be used to play offense — understanding which use cases you can solve and how well before shipping, not just to catch regressions like unit tests. ^[extracted] Before launching a new product, you should have a good idea of how well it might work based on what your evals say. ^[extracted]

This reframes evals from a defensive quality gate to a strategic product discovery tool. See [[concepts/evals-play-offense|Evals Play Offense]] for the deeper treatment. ^[inferred]

## Related

- [[concepts/eval-driven-development|Eval-Driven Development]] — The methodology these signs serve
- [[concepts/evals-are-not-unit-tests|Evals Are Not Unit Tests]] — Why evals need a different paradigm
- [[concepts/evals-play-offense|Evals Play Offense]] — Using evals for strategic discovery
- [[concepts/evals-must-be-engineered|Evals Must Be Engineered]] — The engineering investment these signs require
