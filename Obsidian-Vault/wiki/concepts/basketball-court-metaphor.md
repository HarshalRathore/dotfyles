---
title: Basketball Court Metaphor
category: concepts
tags:
- evals
- visualization
- dataset-strategy
- metaphor
- production-ai
relationships:
- target: '[[concepts/application-layer-evals]]'
  type: implements
- target: '[[concepts/eval-dataset-strategy]]'
  type: implements
- target: '[[concepts/eval-ingredients-task-dataset-score]]'
  type: related_to
sources:
- 'https://www.youtube.com/watch?v=l8ooyedi_ls'
summary: 'A visualization metaphor for evals: the basketball court where data points are positions (user queries), distance from the basket represents difficulty, blue means shot made, red means shot missed,...'
provenance:
  extracted: 0.9
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
tier: supporting
created: 2026-07-05
updated: 2026-07-05
---

# Basketball Court Metaphor

The basketball court metaphor is a visualization framework for thinking about AI evaluation datasets. Introduced by [[entities/ido-pesok|Ido Pesok]] (Vercel) at AIEF2025, it maps eval concepts onto a basketball court to make dataset strategy intuitive. ^[extracted]

## The Metaphor

| Element | Basketball | Eval Concept |
|---|---|---|
| **The basket** | Golden circle | Correct answer |
| **Data points** | Positions on the court | User queries to test |
| **Distance from basket** | Farther = harder | Query difficulty |
| **Blue** | Shot made | Correct answer |
| **Red** | Shot missed | Incorrect answer |
| **Out of bounds** | Shot goes in but outside court | Queries outside app's domain |

## Key Insights

1. **Understand your court** — The most important step in building evals is knowing where your boundaries are and where your system succeeds vs fails. ^[extracted]
2. **Don't concentrate points** — A good eval dataset distributes test cases across the entire court, not just near the basket. ^[extracted]
3. **Out-of-bounds trap** — Don't spend time building evals for queries your users don't care about. ^[extracted]
4. **Prioritization visibility** — When the court is well-mapped, you can clearly see which areas need work (e.g., "the bottom right corner is where many users are struggling"). ^[extracted]

## Connection to Eval Ingredients

The metaphor maps directly onto the three eval ingredients: ^[extracted]

- **Data** = The point on the court (user queries)
- **Task** = The shot (how you shoot the ball — system prompt, RAG, preprocessing)
- **Score** = Did it go in the basket (pass/fail check)

## Sources

- [[entities/ido-pesok|Ido Pesok]] — AIEF2025 talk "Evals Are Not Unit Tests"
