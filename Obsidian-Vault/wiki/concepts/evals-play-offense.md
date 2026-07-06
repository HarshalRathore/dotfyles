---
title: Evals Play Offense
category: concepts
tags:
- evals
- strategy
- product-discovery
- production-ai
- braintrust
- aief2025
sources:
- AIEF2025 - Five hard earned lessons about Evals — Ankur Goyal, Braintrust - https://www.youtube.com/watch?v=a4BV0gGmXgA
- AIEF2025 - Evals 101 — Doug Guthrie, Braintrust - https://www.youtube.com/watch?v=bk0TmxoZlUY
summary: Evals should play offense — understanding which use cases you can solve before shipping, not just catch regressions like unit tests. They enable strategic product discovery and model-picking.
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
base_confidence: 0.42
lifecycle: draft
lifecycle_changed: '2026-07-04'
tier: supporting
created: '2026-07-04'
updated: '2026-07-04'
---

# Evals Play Offense

Evals should be used to play offense — understanding which use cases you can solve and how well before you actually ship things, not just to catch regressions like unit tests. ^[extracted]

## Offense vs Defense

Traditional evals play defense: they catch regressions, verify that new code doesn't break existing functionality, and ensure quality thresholds are met. ^[extracted]

Playing offense with evals means:

- **Before shipping**: Running evals to predict how well a new product or feature might perform
- **Strategic discovery**: Using evals to identify which use cases are viable today and which will be viable with the next model
- **Investment guidance**: Directing engineering effort toward use cases where evals show a path to viability

## Ambitious Evals

The key insight: create evals that are very ambitious and likely not viable with today's models. Construct them so that when a new model comes out, you can plug it in and immediately see if the previously-infeasible use case is now viable. ^[extracted]

See [[concepts/ambitious-evals-for-future-models|Ambitious Evals for Future Models]] for the deeper treatment of this practice. ^[inferred]

## Related

- [[concepts/three-signs-evals-provide-value|Three Signs Evals Provide Value]] — Offense is the third sign
- [[concepts/evals-are-not-unit-tests|Evals Are Not Unit Tests]] — The defense-only mindset this contrasts with
- [[concepts/ambitious-evals-for-future-models|Ambitious Evals for Future Models]] — Building evals for future capability
- [[concepts/system-level-optimization|System-Level Optimization]] — Optimizing the whole system to cross viability thresholds
