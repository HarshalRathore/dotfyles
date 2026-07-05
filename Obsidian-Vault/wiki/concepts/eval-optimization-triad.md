---
title: "Eval Optimization Triad"
category: concepts
tags:
  - evals
  - optimization
  - prompts
  - datasets
  - scorers
  - braintrust
relationships:
  - target: "[[concepts/eval-ingredients-task-dataset-score]]"
    type: extends
  - target: "[[concepts/loop-automated-eval-optimization]]"
    type: implements
  - target: "[[concepts/model-data-application-harmony]]"
    type: related_to
sources:
  - "[[sources/watchv=mc55hdwlq4o]]"
  - "[[sources/watchv=omgpvw8tbhc]]"
summary: "The principle that eval quality depends on the interdependent optimization of three components — prompts, datasets, and scorers — where optimizing all three together yields better results than optimizing any single component in isolation."
provenance:
  extracted: 0.80
  inferred: 0.17
  ambiguous: 0.03
base_confidence: 0.70
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Eval Optimization Triad

The **Eval Optimization Triad** is the principle that evaluation quality depends on the interdependent optimization of three components: **prompts**, **datasets**, and **scorers**. ^[extracted] Optimizing all three together yields better results than optimizing any single component in isolation. ^[inferred]

## The Three Components

| Component | Description | Eval Ingredient |
|-----------|-------------|-----------------|
| **Prompts** | System prompts and prompt templates that define the task | Task |
| **Datasets** | Evaluation test cases that represent the domain | Dataset |
| **Scorers** | Scoring functions that grade output quality | Score |

This maps directly to [[concepts/eval-ingredients-task-dataset-score|Task, Dataset, Score]] — the three required ingredients for any AI evaluation. ^[extracted]

## Why All Three Must Be Optimized Together

The key insight from [[entities/ankur-goyal|Ankur Goyal]]'s AIEF2025 talk is that these components are **interdependent**: ^[extracted]

- A better prompt may expose weaknesses in the dataset (new failure modes appear)
- A better dataset may reveal that the scorer doesn't capture the right dimensions of quality
- A better scorer may show that the prompt is actually fine but the dataset is biased
- Improving one component in isolation yields diminishing returns

This is why [[concepts/loop-automated-eval-optimization|Loop]] optimizes all three simultaneously rather than sequentially. ^[inferred]

## Tang's Parallel: The Two Hard Problems of Fuzz Testing

[[entities/leonard-tang|Leonard Tang]] (Haize Labs) articulated a parallel triad in the context of fuzz testing: ^[extracted]

> "Easy to describe, actually really difficult to execute in practice. Both sides of the equation in terms of scoring the output and also generating the input stimuli are quite difficult technically."

In fuzz testing, the two hard problems are:
1. **Generating good stimuli** — creating inputs likely to trigger failures
2. **Scoring outputs** — translating subjective criteria into quantitative metrics

These map to the triad: stimuli generation ≈ dataset optimization, scoring ≈ scorer optimization. The prompt (task definition) is the third axis that connects both. ^[inferred]

## Manual vs Automated Optimization

Currently, most teams optimize these components **manually** — an engineer tweaks a prompt, runs evals, looks at a dashboard, and iterates. ^[extracted] The Eval Optimization Triad principle suggests that automated systems that can optimize all three components together (like Loop) will outperform human-led optimization that typically focuses on one component at a time. ^[inferred]

## Related

- [[concepts/eval-ingredients-task-dataset-score|Eval Ingredients: Task, Dataset, Score]] — the three ingredients the triad optimizes
- [[concepts/loop-automated-eval-optimization|Loop — Automated Eval Optimization Agent]] — the product that implements the triad
- [[concepts/model-data-application-harmony|Model-Data-Application Harmony]] — related principle of interdependent optimization
- [[concepts/fuzz-testing-ai|Fuzz Testing in AI]] — Tang's parallel two-problem framing
- [[references/aief2025-the-future-of-evals-ankur-goyal-braintrust|The Future of Evals — AIEF2025 Talk]] — where the triad concept was articulated
