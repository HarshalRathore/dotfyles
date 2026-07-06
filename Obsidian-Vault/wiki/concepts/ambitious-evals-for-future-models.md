---
title: Ambitious Evals for Future Models
category: concepts
tags:
- evals
- model-evaluation
- product-strategy
- production-ai
- braintrust
- aief2025
sources:
- AIEF2025 - Five hard earned lessons about Evals — Ankur Goyal, Braintrust - https://www.youtube.com/watch?v=a4BV0gGmXgA
summary: Build evals ambitious enough that they're not viable today. When a new model releases, plug it in and see if previously-infeasible use cases become viable.
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

# Ambitious Evals for Future Models

Every time a new model comes out, everything might change. You need to engineer your product, team, and mindset so that when a new model changes everything for you, you can jump on that opportunity and ship something that wasn't possible before. ^[extracted]

## Build Evals Ahead of Capability

Create evals that are very ambitious and likely not viable with today's models. Construct them so that when a new model comes out, you can just plug it in and try it. ^[extracted]

This is the opposite of reactive evaluation — it's building the evaluation infrastructure for capability you expect to arrive, not just measuring what exists today. ^[inferred]

## The Cloud 4 Sonnet Example

Braintrust had an eval for a feature that tracked model capability over time: ^[extracted]

- **GPT 4.0** was the best model — the feature scored ~10%, not viable for users
- **GPT 4.1** did a little better
- **3.5 Sonnet** was much better
- **4 Sonnet** was remarkably better — the feature crossed from non-viable to viable

Cloud 4 Sonnet released two weeks before Braintrust shipped the first version of this feature. They were able to ship because they had the eval ready, had been tracking the threshold, and saw the model cross it. ^[extracted]

## Model-Agnostic Evaluation

Use a [[concepts/braintrust-proxy|Braintrust Proxy]] (or similar tool) so you don't need to change any code to work across model providers. ^[extracted] When Google launches a new Gemini, you can test it with a few keystrokes. ^[extracted]

## Related

- [[concepts/evals-play-offense|Evals Play Offense]] — The strategic practice this enables
- [[concepts/model-picking|Model Picking]] — Evaluating and switching between models
- [[concepts/braintrust-proxy|Braintrust Proxy]] — Model-agnostic evaluation infrastructure
- [[concepts/three-signs-evals-provide-value|Three Signs Evals Provide Value]] — 24-hour model integration is the first sign
