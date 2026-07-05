---
title: "Self-Driving Car Evals"
category: concepts
tags:
  - evals
  - self-driving-cars
  - analogy
  - production-ai
  - safety
sources:
  - "AIEF2025 - Why should anyone care about Evals? — Manu Goyal, Braintrust - https://www.youtube.com/watch?v=jJ45Yz1lJao"
provenance:
  extracted: 0.90
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/model-tuning-vs-evals|Model Tuning vs Evals]]"
    type: illustrates
  - target: "[[concepts/evals-are-not-unit-tests|Evals Are Not Unit Tests]]"
    type: supports
  - target: "[[concepts/longtail-scenarios|Longtail Scenarios]]"
    type: relates_to
---

# Self-Driving Car Evals

The self-driving car industry provides a powerful analogy for why evals are essential in AI: model-level improvements (image classification accuracy, loss reduction) never substitute for application-level evaluation (does the car actually drive safely?). ^[extracted]

## The Analogy

[[entities/manu-goyal|Manu Goyal]] drew on his experience in self-driving cars to illustrate a principle that applies to all AI systems: ^[extracted]

> "You can spend all day tuning the model, changing the architecture, adjusting the loss function... but it's never going to be enough for you to actually ship it to production."

The gap between model metrics and real-world behavior is the gap that evals bridge. In self-driving cars, the evals ask: does the car avoid pedestrians? Negotiate traffic? Obey the law? In LLM applications, the evals ask: does the AI solve the user's problem? Produce safe, correct, useful outputs? ^[extracted]

## Why This Analogy Works

Self-driving cars and LLM applications share a critical property: **the training objective is never the same as the deployment objective**. A model can optimize its training loss while failing catastrophically in deployment — if the evals don't measure the right things. ^[inferred]

## Related

- [[concepts/model-tuning-vs-evals|Model Tuning vs Evals]] — The principle the analogy illustrates
- [[concepts/evals-are-not-unit-tests|Evals Are Not Unit Tests]] — Why model metrics are insufficient
- [[concepts/longtail-scenarios|Longtail Scenarios]] — The edge cases evals must cover
- [[concepts/probabilistic-software|Probabilistic Software]] — The fundamental challenge evals address
