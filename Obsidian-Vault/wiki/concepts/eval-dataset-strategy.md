---
title: Eval Dataset Strategy
category: concepts
tags:
- evals
- dataset
- production-ai
- data-collection
- test-design
relationships:
- target: '[[concepts/application-layer-evals]]'
  type: implements
- target: '[[concepts/online-evals]]'
  type: extends
- target: '[[concepts/eval-ingredients-task-dataset-score]]'
  type: implements
sources:
- 'https://www.youtube.com/watch?v=mc55hdwlq4o'
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.7
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-05
summary: Eval Dataset Strategy
---

# Eval Dataset Strategy

An eval dataset strategy is the practice of building a test dataset that accurately represents the domain boundaries and difficulty spectrum of your application's real user queries. ^[extracted] The basketball court metaphor: your data points are positions on the court, with distance from the basket representing query difficulty. ^[extracted]

## Understanding Your Court

The most important step in building evals is understanding your court — the boundaries of your app's domain. ^[extracted] You need to know:
- Where the boundaries are (what queries are in-bounds vs out-of-bounds)
- Where your system succeeds (blue = shot made)
- Where your system fails (red = shot missed)

## Data Collection Methods

Several methods for collecting real user queries to populate your eval dataset: ^[extracted]

1. **Thumbs up / thumbs down data** — Noisy but can be good signal for where your app is struggling
2. **Random log sampling** — Read through random samples in your observability logs (e.g., 100 samples per week) to understand user behavior
3. **Community forums** — Users report issues with LLM behavior directly
4. **Social media (X/Twitter)** — Can be noisy but surfaces real user frustration

There is no shortcut — you must do the work to understand what your court looks like. ^[extracted]

## Out-of-Bounds Trap

A common mistake is spending time building evals for data your users don't care about. Out-of-bounds queries (e.g., "how many syllables are in caret" for a fruit letter counter) should be excluded from your eval dataset. ^[extracted] Don't try to be productive by making many evals that aren't applicable to your app. ^[inferred]

## Distribution Matters

A good eval dataset should not have a concentrated set of points. You want test cases distributed across the entire court — easy queries near the basket and hard queries far away. ^[extracted] When your dataset is well-distributed, you can clearly see which areas need prioritization (e.g., "the bottom right corner is where many users are struggling"). ^[extracted]

## Related

- [[concepts/application-layer-evals|Application-Layer Evals]] — The broader evaluation paradigm
- [[concepts/loop-automated-eval-optimization|Loop — Automated Eval Optimization Agent]] — automated dataset optimization
- [[concepts/synthetic-eval-generation|Synthetic Eval Generation]] — LLM-generated test cases for eval datasets
- [[references/aief2025-the-future-of-evals-ankur-goyal-braintrust|The Future of Evals — AIEF2025 Talk]] — Ankur Goyal's talk on automated evals
