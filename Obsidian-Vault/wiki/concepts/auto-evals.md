---
title: AutoEvals
category: concepts
tags:
- auto-evals
- scorers
- open-source
- braintrust
- evaluation
- aief2025
sources:
- AIEF2025 - Five hard earned lessons about Evals — Ankur Goyal, Braintrust - https://www.youtube.com/watch?v=a4BV0gGmXgA
summary: Braintrust's open-source library for automated evaluation scoring. Powerful but intentionally flexible, because every advanced company needs to write and modify custom scoring functions.
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
base_confidence: 0.42
lifecycle: draft
lifecycle_changed: '2026-07-06'
tier: supporting
created: '2026-07-04'
updated: '2026-07-04'
---

# AutoEvals

AutoEvals is [[entities/braintrust|Braintrust]]'s powerful open-source library for automated evaluation scoring. ^[extracted]

## Design Philosophy

AutoEvals is intentionally open and flexible — not opinionated or rigid. This is by design: every company that Braintrust works with that is sufficiently advanced is writing their own scoring functions and modifying them constantly. ^[extracted]

The library provides a strong foundation, but the expectation is that teams will customize and extend it heavily for their specific needs. ^[inferred]

## Relation to Scorers as Specs

AutoEvals embodies the principle that [[concepts/scorers-as-specs|scorers are specs for your product]]. The library gives you starting points, but the scoring functions you ship are your product's specification, not a generic one. ^[inferred]

## Related

- [[concepts/scorers-as-specs|Scorers as Specs]] — Why scorers require product-specific investment
- [[entities/braintrust|Braintrust]] — The platform
- [[concepts/llm-as-judge|LLM as Judge]] — The evaluation method AutoEvals supports
