---
title: Practical tactics to build reliable AI apps — Dmitry Kuchin, Multinear
tags:
- reference
- talk
- ai-engineer
- evaluation
- reliability
sources:
- 'https://www.youtube.com/watch?v=-t6uzyyzkww'
summary: AI Engineer World's Fair 2025 talk covering practical methodology for building reliable AI applications through evaluation-first development, task-specific evals, synthetic eval generation, and che...
provenance:
  extracted: 0.82
  inferred: 0.15
  ambiguous: 0.03
base_confidence: 0.6
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: references
---

# Practical tactics to build reliable AI apps

> **Talk:** Practical tactics to build reliable AI apps
> **Speaker:** [[entities/dmitry-kuchin|Dmitry Kuchin]]
> **Organization:** [[entities/multinear|Multinear]]
> **Event:** AI Engineer World's Fair 2025
> **Source:** [YouTube](https://www.youtube.com/watch?v=-T6uZYYzkWw)

## Summary

A methodology-driven talk focused on how to evaluate and iterate on AI applications for reliability. The core thesis: teams should build evaluations at the beginning of the development process, reverse-engineered from specific business outcomes, rather than relying on generic data science metrics at the end.

## Key Topics

### Evaluation-First Development

- Traditional SDLC (design -> develop -> test -> deploy) does not work for AI
- AI requires continuous experimentation: prompt changes, model changes, logic changes, data changes all impact the solution in unpredictable ways
- Build evals first, then iterate the solution against them ^[extracted]

### Task-Specific Evals

- Generic metrics (groundedness, factuality, bias) don't measure whether the solution works for users
- Metrics must be reverse-engineered from product experience and business outcomes
- Example: for a customer support bot, rate of escalation to human support is the real metric, not factuality ^[extracted]

### Synthetic Eval Generation

- Use capable LLMs (like O3) to generate evaluation datasets from source materials
- Provide source context and define personas, then generate question variations and their evaluation criteria
- Each question gets a specific checklist of required information that must appear in the answer ^[extracted]

### Checklist-Based Evaluation

- For each known question, define a criteria checklist of required information
- Use LLM-as-a-judge to evaluate whether outputs satisfy every checklist item
- Provides explainability — you know exactly what the system does and doesn't do ^[inferred]

### The Regression Challenge

- In AI, a change that fixes one thing often breaks something else — constant regressions
- Frequent comprehensive evaluation is the only way to catch regressions on time ^[extracted]

### Benchmark-Driven Optimization

- The iteration loop converges on a baseline benchmark
- Once established, use the benchmark to compare models, architectures, and optimizations with confidence
- Can answer questions like "does 4o mini perform the same as 4o?" with data ^[extracted]

### Domain-Specific Eval Strategies

- Different AI solutions need different evaluation approaches:
  - **Support bots** — LLM-as-a-judge with checklist criteria
  - **Text-to-SQL/Graph** — mock databases with known expected results
  - **Classifiers** — simple rubric matching
  - **Guardrails** — separate benchmarks for questions that should not be answered ^[extracted]

## Key Takeaways

1. Evaluate your apps the way users actually use them
2. Avoid abstract metrics — they don't measure anything important
3. Run evaluations frequently — enables rapid progress with fewer regressions
4. Correctly-defined evaluations make AI explainable — you know exactly what it does ^[extracted]

## Pages Created from This Source

- [[concepts/evaluation-first-development|Evaluation-First Development]]
- [[concepts/task-specific-evals|Task-Specific Evals]]
- [[concepts/synthetic-eval-generation|Synthetic Eval Generation]]
- [[concepts/checklist-based-evaluation|Checklist-Based Evaluation]]
- [[concepts/ai-regression-testing|AI Regression Testing]]
- [[concepts/benchmark-driven-ai-optimization|Benchmark-Driven AI Optimization]]
- [[entities/dmitry-kuchin|Dmitry Kuchin]]
- [[entities/multinear|Multinear]]

## Sources

- [YouTube: Practical tactics to build reliable AI apps](https://www.youtube.com/watch?v=-T6uZYYzkWw)
