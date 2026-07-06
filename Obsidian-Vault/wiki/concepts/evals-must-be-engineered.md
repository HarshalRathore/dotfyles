---
title: "Evals Must Be Engineered"
category: concepts
tags:
  - evals
  - engineering
  - dataset-design
  - scorer-design
  - production-ai
  - braintrust
  - aief2025
sources:
  - "AIEF2025 - Five hard earned lessons about Evals — Ankur Goyal, Braintrust - https://www.youtube.com/watch?v=a4BV0gGmXgA"
summary: >-
  "Evals are an engineering problem: no dataset aligns perfectly with reality, datasets must be continuously reconciled with production experience, and scorers are product-specific specs.
provenance:
  extracted: 0.90
  inferred: 0.10
  ambiguous: 0.00
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/scorers-as-specs|Scorers as Specs]]"
    type: relates_to
  - target: "[[concepts/eval-driven-development|Eval-Driven Development]]"
    type: extends
  - target: "[[concepts/eval-dataset-strategy|Eval Dataset Strategy]]"
    type: relates_to
---

# Evals Must Be Engineered

Great evals don't come for free with synthetic datasets and generic LLM-as-judge scores. They must be actively engineered as a core part of the product. ^[extracted]

## No Dataset Perfectly Aligns with Reality

There is no dataset that is perfectly aligned with reality. In the rare cases where one exists — solving competition math problems, for example — the use cases already work and there's nothing to do. ^[extracted]

For most real-world use cases, any dataset created ahead of time will not represent what users are actually experiencing. ^[extracted] This means eval datasets are inherently incomplete and must evolve. ^[inferred]

## Continuous Reconciliation

The best datasets are those you can continuously reconcile as you experience what actually happens in production. This requires significant engineering investment — not just a one-time curation effort. ^[extracted]

Doing this reconciliation well is an engineering discipline: capturing production failures, adding them to datasets, re-running evals, and iterating. See [[concepts/online-evals|Online Evals]] for the production-feedback loop that enables this. ^[inferred]

## Scorers Are Not Off-the-Shelf

The same engineering mindset applies to scorers. Every sufficiently advanced company writes its own scoring functions and modifies them constantly. Generic or open-source scorers are specs for someone else's project, not yours. ^[extracted]

See [[concepts/scorers-as-specs|Scorers as Specs]] for the deeper treatment of why scorers require product-specific investment. ^[inferred]

## Related

- [[concepts/scorers-as-specs|Scorers as Specs]] — Why scorers are product-specific contracts
- [[concepts/eval-driven-development|Eval-Driven Development]] — The methodology that demands engineered evals
- [[concepts/online-evals|Online Evals]] — Production feedback loop for continuous reconciliation
- [[concepts/eval-dataset-strategy|Eval Dataset Strategy]] — Building and maintaining eval datasets
