---
title: "Eval Task Complexity"
category: concepts
tags:
  - evals
  - task
  - evaluation-methodology
  - braintrust
  - agentic-workflows
sources:
  - "AIEF2025 - Evals 101 — Doug Guthrie, Braintrust - https://www.youtube.com/watch?v=bk0TmxoZlUY"
provenance:
  extracted: 0.90
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/eval-ingredients-task-dataset-score|Eval Ingredients: Task, Dataset, Score]]"
    type: elaborates
  - target: "[[concepts/eval-driven-development|Eval-Driven Development]]"
    type: supports
---

# Eval Task Complexity

An eval task can range from a single prompt to a full agentic workflow with tool calls. The only hard requirement is that every task has a defined input and produces a measurable output. ^[extracted]

## Complexity Spectrum

[[entities/braintrust|Braintrust]] supports tasks across a wide complexity range:

| Complexity | Example |
|---|---|
| **Single prompt** | A system prompt with mustache templating for dynamic inputs |
| **Multi-turn chat** | A conversation with message history as context |
| **Tool-calling workflow** | RAG pipeline or external service calls with tool definitions |
| **Chained agent** | Output of one prompt feeds into the next prompt |

> "There's no sort of limit on the complexity that we put into this task. The only thing it requires is an input and an output." ^[extracted]

## Implications

This flexibility means evals can test the full system, not just the LLM call. Teams can evaluate:

- End-to-end agentic workflows where multiple model calls and tool interactions determine the final output
- Complex retrieval pipelines with preprocessing, RAG, and post-processing steps
- Multi-step reasoning chains where intermediate outputs matter

The eval measures the entire pipeline's output quality, not just the model's raw response. ^[inferred]

## Related

- [[concepts/eval-ingredients-task-dataset-score|Eval Ingredients: Task, Dataset, Score]] — The task is the first ingredient
- [[concepts/eval-driven-development|Eval-Driven Development]] — Complex tasks require eval-driven iteration
- [[concepts/ai-observability-production-logging|AI Observability & Production Logging]] — Tracing complex task execution in production
