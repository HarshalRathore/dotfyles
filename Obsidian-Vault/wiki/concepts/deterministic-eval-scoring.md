---
title: "Deterministic Eval Scoring"
category: concepts
tags:
  - evals
  - scoring
  - test-design
  - debugging
relationships:
  - target: "[[concepts/eval-ingredients-task-dataset-score]]"
    type: implements
  - target: "[[concepts/application-layer-evals]]"
    type: extends
  - target: "[[concepts/online-evals]]"
    type: related_to
sources:
  - "https://www.youtube.com/watch?v=l8ooyedi_ls"
summary: "Principle that eval scores should lean toward deterministic pass/fail rather than complex scoring functions, because simpler scores are easier to debug, share, and distribute across teams."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.70
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-05
---

# Deterministic Eval Scoring

Deterministic eval scoring is the principle that evaluation scores should lean toward deterministic pass/fail rather than complex, multi-dimensional scoring functions. ^[extracted] The rationale: when debugging, you get a ton of input and logs — simpler scores make it easier to figure out what's going wrong. ^[extracted]

## Why Simplicity Matters

- **Debugging clarity** — Complex scores obscure the root cause of failures
- **Team sharing** — Over-engineered scores are hard for teammates to understand
- **Distribution** — Simple scores distribute better across teams and platforms
- **CI integration** — Pass/fail scores integrate cleanly into CI/CD pipelines ^[extracted]

## The Key Question

When designing a score, ask: "When I'm looking at the data, what am I looking for to see if this failed?" ^[extracted] Write the code that answers that question directly. For v0, this means checking if the generated code didn't work. For writing tasks, this might mean checking for specific linguistic patterns. ^[extracted]

## When Human Review Is Needed

Some cases are so hard to write code for that you may need human review to get the correct signal. This is acceptable — the important thing is to build your core and collect signal, even if it requires human effort. ^[extracted] If you do the correct practice, it will pay off in the long run. ^[extracted]

## Scoring Hacks

A practical trick for making scoring easier: add a small prompt modification to force structured output. For example, ask the model to "output your final answer in these answer tags." This makes string matching trivial for scoring, even though you wouldn't want this in production. ^[extracted]

## Related

- [[concepts/eval-ingredients-task-dataset-score|Eval Ingredients: Task, Dataset, Score]] — Score is one of three eval ingredients
- [[concepts/application-layer-evals|Application-Layer Evals]] — Where deterministic scoring applies
- [[concepts/online-evals|Online Evals]] — Online scoring rules benefit from deterministic scores
