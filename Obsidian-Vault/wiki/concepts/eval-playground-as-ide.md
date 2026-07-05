---
title: "Eval Playground as IDE"
category: concepts
tags:
  - evals
  - playground
  - experimentation
  - braintrust
  - development-tools
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
  - target: "[[concepts/eval-playground-experiment-workflow|Eval Playground vs Experiments Workflow]]"
    type: implements
  - target: "[[concepts/evals-laboratory|Evals as Laboratory]]"
    type: enables
  - target: "[[concepts/eval-driven-development|Eval-Driven Development]]"
    type: supports
---

# Eval Playground as IDE

The eval playground is the interactive development environment for AI evaluation — where you tweak prompts, experiment with models, and test changes against datasets before committing them to production. It is the primary interface for the [[concepts/evals-laboratory|evals as laboratory]] workflow. ^[extracted]

## The Playground Function

The playground enables rapid, interactive evaluation: ^[extracted]

- **Prompt tweaking** — Modify prompts and immediately see the impact on eval scores
- **Model experimentation** — Try different models and compare their performance
- **Dataset testing** — Run changes against curated test sets to measure improvement
- **Scorer iteration** — Adjust scoring functions and see how they change evaluation outcomes

This is the "experiment" stage of the AI iteration loop, made fast and interactive. ^[inferred]

## Connection to the Data Flywheel

The playground is the entry point for the data flywheel: changes made in the playground are validated through evals, deployed to production, monitored through online metrics, and the production signal feeds back into playground experiments. ^[extracted]

## Related

- [[concepts/eval-playground-experiment-workflow|Eval Playground vs Experiments Workflow]] — The two-mode pattern
- [[concepts/evals-laboratory|Evals as Laboratory]] — The workflow the playground enables
- [[concepts/eval-driven-development|Eval-Driven Development]] — The methodology the playground supports
- [[concepts/data-flywheel|Data Flywheel]] — The loop the playground feeds into
