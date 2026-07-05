---
title: "Model Tuning vs Evals"
category: concepts
tags:
  - evals
  - model-training
  - production-ai
  - self-driving-cars
sources:
  - "AIEF2025 - Why should anyone care about Evals? — Manu Goyal, Braintrust - https://www.youtube.com/watch?v=jJ45Yz1lJao"
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/evals-are-not-unit-tests|Evals Are Not Unit Tests]]"
    type: relates_to
  - target: "[[concepts/self-driving-car-evals|Self-Driving Car Evals]]"
    type: illustrated_by
  - target: "[[concepts/eval-driven-development|Eval-Driven Development]]"
    type: motivates
---

# Model Tuning vs Evals

The principle that improving model internals — architecture, loss functions, training data — is necessary but never sufficient for production deployment. Evaluation at the application level is the missing link between model performance and real-world reliability. ^[extracted]

## The Self-Driving Car Lesson

In the self-driving car industry, teams can spend all day tuning the model: changing architecture, adjusting the loss function, improving image classification rates from 98% to 99%. But this never suffices for production. ^[extracted]

The reason: model-level metrics do not capture application-level behavior. A 99% classification rate does not tell you whether the car:

- Avoids pedestrians in unexpected scenarios
- Negotiates complex traffic situations appropriately
- Obeys traffic laws in edge cases
- Handles novel road conditions it was not trained on ^[extracted]

## The Application Gap

Model tuning optimizes for the training objective. Evals measure whether the system works for the real-world application. These are fundamentally different questions: ^[inferred]

| Model Tuning | Evals |
|---|---|
| "Did the model improve on our metric?" | "Does the system work in production?" |
| Optimizes training loss | Measures real-world behavior |
| Controlled, isolated | Contextual, holistic |
| Necessary | Sufficient (with good design) |

## Implications for AI Applications

This lesson transfers directly to LLM applications: improving the model (prompt engineering, fine-tuning, chain-of-thought) is important but insufficient. You need evals that measure application-level outcomes — does the AI agent actually solve the user's problem? ^[extracted]

## Related

- [[concepts/self-driving-car-evals|Self-Driving Car Evals]] — The concrete analogy
- [[concepts/evals-are-not-unit-tests|Evals Are Not Unit Tests]] — Why model metrics are insufficient
- [[concepts/eval-driven-development|Eval-Driven Development]] — The methodology that addresses this gap
- [[concepts/eval-production-metrics|Eval Production Metrics]] — The metrics that matter in production
