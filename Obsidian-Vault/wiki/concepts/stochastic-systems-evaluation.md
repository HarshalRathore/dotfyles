---
title: Stochastic Systems Evaluation
category: concepts
tags:
- evals
- stochastic
- search
- non-deterministic
- evaluation-methodology
aliases:
- evaluating-stochastic-systems
sources:
- AIEF2025 - [Full Workshop] Building Metrics that actually work — David Karam, Pi Labs (fmr Google Search) - https://www.youtube.com/watch?v=jxrGodnopHo
provenance:
  extracted: 0.85
  inferred: 0.15
  ambiguous: 0.0
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/eval-driven-development|Eval-Driven Development]]'
  type: motivates
- target: '[[concepts/llm-evaluation-framework|LLM Evaluation Framework]]'
  type: extends
- target: '[[concepts/evals-are-not-unit-tests|Evals Are Not Unit Tests]]'
  type: relates_to
summary: Stochastic Systems Evaluation
---

# Stochastic Systems Evaluation

The evaluation of non-deterministic systems — systems where the same input can produce different outputs — requires fundamentally different approaches than deterministic systems. Google Search was one of the earliest large-scale stochastic systems, and its evaluation methodology has proven applicable to modern AI systems including LLMs. ^[extracted]

## The Challenge

In deterministic systems, the same input always produces the same output. Testing is straightforward: run the input, check the output. In stochastic systems, the same input can produce different outputs, making traditional testing inadequate. ^[extracted]

## Google Search Experience

At Google, search was inherently stochastic — the same query could return different results depending on many factors. This meant:

1. **Evaluation was central, not peripheral** — The majority of Google's effort went into evaluation and improvement, not just building the system
2. **Metrics drove improvement** — Continuous measurement enabled iterative refinement
3. **Methodology was transferable** — The evaluation discipline learned from search applies to any stochastic system, including LLMs

## Application to LLMs

LLMs share the core property of stochasticity with Google Search. The evaluation methodology from search — continuous measurement, metric-driven improvement, and disciplined evaluation processes — is directly applicable to LLM evaluation. ^[inferred]

## Related

- [[concepts/eval-driven-development|Eval-Driven Development]] — Methodology for stochastic systems
- [[concepts/llm-evaluation-framework|LLM Evaluation Framework]] — Structured evaluation for non-deterministic systems
- [[concepts/evals-are-not-unit-tests|Evals Are Not Unit Tests]] — Why deterministic testing patterns don't work
- [[concepts/methodology-over-tooling|Methodology Over Tooling]] — Process over platform
