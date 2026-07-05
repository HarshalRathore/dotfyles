---
title: "Why should anyone care about Evals? — Manu Goyal, Braintrust"
category: references
tags:
  - evals
  - aief2025
  - braintrust
  - production-ai
  - iteration-speed
  - self-driving-cars
sources:
  - "AIEF2025 - Why should anyone care about Evals? — Manu Goyal, Braintrust - https://www.youtube.com/watch?v=jJ45Yz1lJao"
provenance:
  extracted: 0.90
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/evals-are-not-unit-tests|Evals Are Not Unit Tests]]"
    type: relates_to
  - target: "[[concepts/eval-driven-development|Eval-Driven Development]]"
    type: illustrates
  - target: "[[concepts/data-flywheel|Data Flywheel]]"
    type: illustrates
  - target: "[[concepts/ai-iteration-loop|AI Iteration Loop]]"
    type: supports
---

# Why should anyone care about Evals? — Manu Goyal, Braintrust

Talk by [[entities/manu-goyal|Manu Goyal]] at the AI Engineer World's Fair 2025, explaining why evals matter for building production AI systems. ^[extracted]

## Key Arguments

Manu frames evals through a personal narrative and a concrete analogy from the self-driving car industry: ^[extracted]

**Evals are not just unit tests.** They are a laboratory that lets you run experiments and complete 90% of the product iteration loop before going to production. This means shipping more quickly and more confidently. ^[extracted]

**Model tuning alone is insufficient.** In self-driving cars, you can spend all day tuning the model — changing architecture, adjusting the loss function — but it's never enough to ship to production. You need evals to contextualize the model and understand if it actually works in the real world: does it avoid pedestrians, negotiate traffic, obey the law? ^[extracted]

**The offline-to-online metric bridge.** If you apply the same metrics from offline evals to online production data, you get data-driven signal about which examples in production are most useful for the next iteration cycle. This closes the feedback loop. ^[extracted]

**Evals enable the data flywheel.** The talk positions evals as the key mechanism for building a data flywheel — connecting prompt tweaking, playground experimentation, data logging, and observability into a continuous improvement loop. ^[extracted]

## Core Message

> "The key to industry transformation, the key to success... it's evals, evals, evals." ^[extracted]

Manu's thesis: evals are the foundational practice that enables rapid, confident AI development — not an afterthought but the primary engine of iteration speed.

## Related

- [[concepts/evals-are-not-unit-tests|Evals Are Not Unit Tests]] — Why evals require a different paradigm from unit tests
- [[concepts/eval-driven-development|Eval-Driven Development]] — Evals as the primary driver of development
- [[concepts/data-flywheel|Data Flywheel]] — The continuous improvement loop evals enable
- [[concepts/ai-iteration-loop|AI Iteration Loop]] — The operational cycle evals accelerate
- [[entities/braintrust|Braintrust]] — The platform Manu works on for building evals

## Sources

- AIEF2025 - Why should anyone care about Evals? — Manu Goyal, Braintrust - https://www.youtube.com/watch?v=jJ45Yz1lJao
