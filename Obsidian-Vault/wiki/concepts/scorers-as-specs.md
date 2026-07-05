---
title: "Scorers as Specs"
category: concepts
tags:
  - evals
  - scorers
  - specs
  - product-design
  - production-ai
  - braintrust
  - aief2025
sources:
  - "AIEF2025 - Five hard earned lessons about Evals — Ankur Goyal, Braintrust - https://www.youtube.com/watch?v=a4BV0gGmXgA"
  - "AIEF2025 - Evals 101 — Doug Guthrie, Braintrust - https://www.youtube.com/watch?v=bk0TmxoZlUY"
summary: "Scoring functions are specifications for your AI application — they define what good looks like for your specific product. Using generic scorers means using someone else's spec, not yours.
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
  - target: "[[concepts/evals-must-be-engineered|Evals Must Be Engineered]]"
    type: relates_to
  - target: "[[concepts/llm-as-judge|LLM as Judge]]"
    type: implements
  - target: "[[concepts/task-specific-evals|Task-Specific Evals]]"
    type: extends
---

# Scorers as Specs

Scoring functions in AI evaluation should be thought of as specifications or PRDs for your AI application. ^[extracted] This reframing justifies the investment in building custom scorers rather than using off-the-shelf solutions. ^[inferred]

## The Spec Analogy

If a scorer is a spec for your product, then:

1. **It justifies investment** — You wouldn't use a generic spec for your product, so you shouldn't use a generic scorer either
2. **It clarifies ownership** — The product team defines what good looks like; the scorer encodes that definition
3. **It explains constant modification** — As your product evolves, your spec evolves, and so should your scorers

## Generic Scorers = Someone Else's Spec

Using an open-source or generic scorer means you're evaluating your product against someone else's specification. ^[extracted] This is a fundamental misalignment: the scorer measures the wrong thing for your users. ^[inferred]

## AutoEvals: Open but Flexible

[[entities/braintrust|Braintrust]] provides [[concepts/auto-evals|AutoEvals]], a powerful open-source library for out-of-the-box scoring. But it's designed to be open and flexible precisely because every advanced company needs to write and modify their own scoring functions. ^[extracted]

## Related

- [[concepts/evals-must-be-engineered|Evals Must Be Engineered]] — The engineering investment required
- [[concepts/llm-as-judge|LLM as Judge]] — Automated scoring method
- [[concepts/task-specific-evals|Task-Specific Evals]] — Why metrics must be product-specific
- [[concepts/auto-evals|AutoEvals]] — Braintrust's open-source scoring library
