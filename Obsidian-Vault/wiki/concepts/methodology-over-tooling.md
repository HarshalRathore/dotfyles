---
title: "Methodology Over Tooling in AI Evaluation"
category: concepts
tags:
  - evals
  - methodology
  - evaluation-methodology
  - best-practices
  - ai-evaluation
aliases:
  - eval-methodology
  - process-over-tools
sources:
  - "AIEF2025 - [Full Workshop] Building Metrics that actually work — David Karam, Pi Labs (fmr Google Search) - https://www.youtube.com/watch?v=jxrGodnopHo"
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
  - target: "[[concepts/eval-driven-development|Eval-Driven Development]]"
    type: relates_to
  - target: "[[concepts/llm-evaluation-framework|LLM Evaluation Framework]]"
    type: underlies
  - target: "[[concepts/eval-driven-optimization|Eval-Driven Optimization]]"
    type: relates_to
---

# Methodology Over Tooling in AI Evaluation

The principle that **evaluation methodology** — the process, discipline, and thinking behind how you evaluate AI systems — is more important than any specific tool or product for building reliable AI. ^[extract00]

## Origin

This principle was articulated by David Karam (Pi Labs, fmr Google Search) at AIEF2025, drawing on over a decade of experience building evaluation systems for Google Search — a stochastic system where evaluation was a central engineering effort. ^[extracted]

## The Principle

Karam's core thesis: the biggest takeaway from Google's search evaluation experience is the methodology, not the tools. The techniques, processes, and thinking patterns developed for evaluating search systems are transferable to any AI system, regardless of the specific platform or product. ^[extracted]

## Why Methodology Matters More

Tools change frequently. Methodology endures:

1. **Tools are ephemeral** — Eval frameworks, platforms, and tools evolve rapidly
2. **Methodology is transferable** — The process of thinking about evaluation applies across domains
3. **Stochastic systems share evaluation challenges** — Search, LLMs, and other non-deterministic systems all require the same fundamental evaluation discipline
4. **Tooling without methodology is fragile** — Using eval tools without understanding evaluation principles leads to false confidence

## Related

- [[concepts/eval-driven-development|Eval-Driven Development]] — Methodology-first approach to AI development
- [[concepts/llm-evaluation-framework|LLM Evaluation Framework]] — Structured evaluation methodology
- [[concepts/eval-driven-optimization|Eval-Driven Optimization]] — Using evaluation methodology to guide improvement
- [[concepts/evals-are-not-unit-tests|Evals Are Not Unit Tests]] — Why methodology matters more than testing patterns
