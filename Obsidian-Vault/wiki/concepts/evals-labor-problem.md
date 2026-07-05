---
title: "Evals Labor Problem"
category: concepts
tags:
  - evals
  - evaluation
  - development-cost
  - ai-development
  - labor-intensive
aliases:
  - evals-bottleneck
  - evaluation-overhead
sources:
  - "AIEF2025 - [Full Workshop] Building Metrics that actually work — David Karam, Pi Labs (fmr Google Search) - https://www.youtube.com/watch?v=jxrGodnopHo"
provenance:
  extracted: 0.85
  inferred: 0.15
  ambiguous: 0.00
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/eval-driven-development|Eval-Driven Development]]"
    type: motivates
  - target: "[[concepts/llm-evaluation-framework|LLM Evaluation Framework]]"
    type: problem_that_solves
  - target: "[[concepts/evals-are-not-unit-tests|Evals Are Not Unit Tests]]"
    type: relates_to
---

# Evals Labor Problem

The **evals labor problem** is the phenomenon where evaluation consumes approximately 80% of feature development time in AI projects — far more than traditional software testing ever required.

## The Problem

In traditional software development, testing was optional: some teams tested, some didn't. In the AI world, everyone must do evals. Unlike tests, which have established frameworks and best practices, evals are custom and subjective for each specific use case. There are no reusable best practices — every team must create eval infrastructure from scratch. ^[extracted]

Key characteristics: ^[extracted]

- **Labor intensive** — Setting up evals requires significant manual effort
- **Hard to start** — No established entry points or templates
- **Painful to maintain** — Each case is unique, preventing reuse across projects
- **80% of dev time** — Evaluation dominates the development lifecycle

## Why It's Worse Than Testing

Traditional testing had established patterns (unit tests, integration tests, test frameworks). Evals lack this maturity. Each AI application requires custom evaluation because:

1. AI outputs are stochastic, not deterministic
2. Each use case has different quality criteria
3. There are no industry-standard eval frameworks
4. LLMs are hard at evaluating their own outputs

## Related

- [[concepts/eval-driven-development|Eval-Driven Development]] — Methodology that prioritizes evals early
- [[concepts/llm-evaluation-framework|LLM Evaluation Framework]] — Structured approach to evaluation
- [[concepts/evals-are-not-unit-tests|Evals Are Not Unit Tests]] — Why evals can't use testing patterns
- [[concepts/eval-driven-optimization|Eval-Driven Optimization]] — Using evals to guide development
