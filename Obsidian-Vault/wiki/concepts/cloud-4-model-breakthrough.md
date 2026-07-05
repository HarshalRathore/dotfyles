---
title: "Cloud 4 Model Breakthrough"
category: concepts
tags:
  - cloud-4
  - frontier-models
  - eval-capability
  - model-benchmarking
  - braintrust
relationships:
  - target: "[[concepts/loop-automated-eval-optimization]]"
    type: enables
  - target: "[[concepts/model-data-application-harmony]]"
    type: related_to
  - target: "[[concepts/synthetic-eval-generation]]"
    type: related_to
sources:
  - "[[sources/watchv=mc55hdwlq4o]]"
summary: "Cloud 4 is a frontier model identified by Braintrust as a breakthrough for eval-related tasks — performing nearly 6x better than its predecessor at improving prompts, datasets, and scorers."
provenance:
  extracted: 0.88
  inferred: 0.10
  ambiguous: 0.02
base_confidence: 0.65
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Cloud 4 Model Breakthrough

**Cloud 4** is a frontier model that [[entities/braintrust|Braintrust]] identifies as a breakthrough for evaluation-related tasks. It performs **almost six times better** than the previous leading model at improving prompts, datasets, and scorers. ^[extracted]

## Context: Quarterly Model Evaluation

Braintrust has run quarterly evaluations on frontier models for the past two years, specifically measuring how well models can: ^[extracted]

1. **Improve prompts** — Generate better system prompts for a given task
2. **Improve datasets** — Create better evaluation test cases
3. **Improve scorers** — Design better evaluation scoring functions

Until very recently, models "weren't very good" at these tasks. ^[extracted] Cloud 4 represents "a real breakthrough moment." ^[extracted]

## The 6x Improvement

The 6x improvement figure is significant because it crosses a threshold where frontier models become **practically useful** for eval optimization rather than just theoretically capable. ^[inferred] Below this threshold, model-generated improvements are too noisy to be reliable. Above it, they become a force multiplier for eval engineers.

## Why This Matters for Loop

Cloud 4 is the model that powers [[concepts/loop-automated-eval-optimization|Loop]], Braintrust's automated eval optimization agent. Without this capability leap, Loop would not be viable — the agent needs models that can meaningfully improve prompts, datasets, and scorers to close the automated eval loop. ^[inferred]

## Model Selection in Loop

While Loop defaults to Cloud 4, users can select any model — OpenAI, Gemini, or custom LLMs. ^[extracted] The implication is that the 6x improvement is relative to the model Cloud 4 replaced, and other models may have different capability profiles for different optimization tasks. ^[inferred]

## Related

- [[concepts/loop-automated-eval-optimization|Loop — Automated Eval Optimization Agent]] — the product powered by Cloud 4
- [[concepts/synthetic-eval-generation|Synthetic Eval Generation]] — using capable LLMs for eval tasks
- [[concepts/model-data-application-harmony|Model-Data-Application Harmony]] — model capability as one pillar of AI systems
- [[references/aief2025-the-future-of-evals-ankur-goyal-braintrust|The Future of Evals — AIEF2025 Talk]] — where Cloud 4 was introduced
