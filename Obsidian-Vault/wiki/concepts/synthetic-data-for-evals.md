---
title: Synthetic Data for Evals
category: concepts
tags:
- evaluation
- synthetic-data
- data-centric
- eval-design
aliases:
- synthetic eval data
- artificial eval data
sources:
- 'AIEF2025 - How to run Evals at Scale: Thinking beyond Accuracy or Similarity — Muktesh Mishra, Adobe - https://www.youtube.com/watch?v=coKKKKh8Vns'
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/adaptive-evals|Adaptive Evals]]'
  type: enables
- target: '[[concepts/data-flywheel|Data Flywheel]]'
  type: feeds
- target: '[[concepts/eval-driven-development|Eval-Driven Development]]'
  type: supports
summary: Synthetic Data for Evals
---

# Synthetic Data for Evals

**Synthetic data** is artificially generated data used as the starting point for building eval datasets. The approach: generate ancillary or artificial data, validate the application's output against it, then iteratively refine with real observations. ^[extracted]

## The Synthetic-First Approach

When starting evals from scratch, synthetic data provides a practical entry point:
1. Generate artificial test cases that cover expected application behavior
2. Run the application against these cases
3. Observe real outputs and outcomes
4. Refine and expand the dataset based on observations

## Data-Centric Principles

Muktesh Mishra emphasizes several data-centric principles for eval design: ^[extracted]

- **Label data across dimensions** — Tag data by flow, application prospect, and other relevant categories
- **One dataset is never sufficient** — Maintain separate datasets for different application flows
- **Continuous refinement** — The dataset evolves as the application evolves
- **Observation-driven growth** — Real system outputs inform what new data to generate

## The Iteration Loop

```
Synthetic data → Run evals → Observe outputs → Refine dataset → Repeat
```

This creates a feedback loop where the eval dataset grows in coverage and quality alongside the application itself. ^[inferred]

## Related

- [[concepts/adaptive-evals|Adaptive Evals]] — Different datasets per application type
- [[concepts/data-flywheel|Data Flywheel]] — Continuous improvement loop
- [[concepts/eval-driven-development|Eval-Driven Development]] — Data is the foundation of eval-driven work
