---
title: "Evals in CI"
category: concepts
tags:
  - evals
  - ci-cd
  - continuous-evaluation
  - regression-testing
  - production-ai
relationships:
  - target: "[[concepts/application-layer-evals]]"
    type: implements
  - target: "[[concepts/eval-ingredients-task-dataset-score]]"
    type: extends
  - target: "[[concepts/online-evals]]"
    type: related_to
sources:
  - "[[sources/watchv=l8ooyedi_ls]]"
summary: "Integrating AI application evals into CI/CD pipelines to detect regressions, measure improvement, and visualize how code changes affect the entire test dataset."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.70
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Evals in CI

Evals in CI is the practice of integrating AI application evaluation into continuous integration pipelines. ^[extracted] It enables teams to detect regressions, measure improvement, and visualize how code changes affect the entire test dataset before deployment. ^[inferred]

## The Problem It Solves

When a colleague makes a PR that changes a prompt or system behavior, you need to know how it performs across the entire "court" of test cases. ^[extracted] Visualizing this: did the change flip more tiles from red (fail) to blue (pass), or did it fix one part but break another? ^[extracted]

## How It Works

1. **Run evals on PR** — Execute the full task across all dataset entries when a PR is opened or updated
2. **Generate reports** — Braintrust and similar tools produce eval reports showing improvements and regressions ^[extracted]
3. **Visualize the court** — Map results to the basketball court metaphor to see which areas improved and which regressed
4. **Gate or inform** — Use results to block merges on regressions or inform the reviewer of trade-offs

## The Practice Analogy

Evals in CI treat your test suite like basketball practice — it should be as similar as possible to the real game. ^[extracted] Running evals daily or on a schedule gives you a good sense of where you're failing and whether regressions occurred. ^[extracted]

## Benefits

- **Systematic improvement** — "Improvement without measurement is limited and imprecise" ^[extracted]
- **Regression detection** — Catch regressions before they reach production
- **Model switching** — When switching models, see how a different "player" performs in your practice
- **Support reduction** — Evals take care of support ops by catching issues early ^[extracted]

## Related

- [[concepts/application-layer-evals|Application-Layer Evals]] — The broader evaluation paradigm
- [[concepts/eval-ingredients-task-dataset-score|Eval Ingredients: Task, Dataset, Score]] — CI evals use the same three ingredients
- [[concepts/online-evals|Online Evals]] — CI evals are the offline counterpart to online scoring
- [[entities/braintrust|Braintrust]] — Platform that supports CI eval integration
