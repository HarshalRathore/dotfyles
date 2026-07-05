---
title: "Two-Circle Eval Model"
category: concepts
tags:
  - evals
  - iteration
  - feedback-loop
  - continuous-improvement
  - aief2025
aliases:
  - two circle model
  - eval improvement loop
  - eval tuning loop
summary: "A two-circle model for AI improvement: the left circle (improve the system through evals) and the right circle (tune the evals themselves). The right circle is often forgotten but essential."
sources:
  - "AIEF2025 - Engineering Better Evals: Scalable LLM Evaluation Pipelines That Work — Dat Ngo, Aman Khan, Arize - https://www.youtube.com/watch?v=spvXj9tnWAQ"
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/continuous-eval-loops|Continuous Eval Loops]]"
    type: extends
  - target: "[[concepts/ai-iteration-loop|AI Iteration Loop]]"
    type: relates_to
  - target: "[[concepts/golden-datasets|Golden Datasets]]"
    type: uses
  - target: "[[concepts/llm-evaluation-framework|LLM Evaluation Framework]]"
    type: frames
---

# Two-Circle Eval Model

The **two-circle eval model** describes two interconnected feedback loops in AI system development. Most teams only use the left circle; the right circle — tuning evals themselves — is critical but often forgotten. ^[extracted]

## Left Circle: Improve the System

The familiar AI improvement loop that most teams practice:

1. **Collect data** — Observability, traces, user interactions
2. **Run evals** — Discern signal from the massive data
3. **Collect signal** — Identify what went right and what went wrong
4. **Annotate** — Create or update golden datasets
5. **Update** — Change prompts, models, or agent orchestration

This circle represents the core activity of AI engineering: using evals to make the system better. ^[extracted]

## Right Circle: Tune the Evals

The often-overlooked loop for keeping evals accurate:

1. **Run evals on the system**
2. **Notice evals are not perfect** — First-run evals always have gaps
3. **Tune evals over time** — Adjust eval definitions, thresholds, and methods
4. **The signal collection method adjusts** as the application improves

The key insight: "the way you collect signal actually adjusts as your application also gets better." ^[extracted] Evals are living artifacts that require continuous maintenance.

## Why the Right Circle Matters

- First-run evals are never perfect — they miss edge cases and new failure modes
- As the system improves, new failure patterns emerge that existing evals don't catch
- Evals that worked at v1 may be obsolete at v10
- Without the right circle, eval quality degrades over time even as the system improves

## Relationship to Other Concepts

The two-circle model is closely related to [[concepts/continuous-eval-loops|Continuous Eval Loops]] (simulation → evaluation → iteration → regression testing → monitoring) but adds the explicit distinction between improving the system and improving the evals themselves. ^[inferred]

## Sources

- AIEF2025 - Engineering Better Evals: Scalable LLM Evaluation Pipelines That Work — Dat Ngo, Aman Khan, Arize - https://www.youtube.com/watch?v=spvXj9tnWAQ
