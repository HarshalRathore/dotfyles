---
title: "Evals as Structured Tests"
category: concepts
tags:
  - evals
  - testing
  - methodology
  - braintrust
sources:
  - "AIEF2025 - Evals 101 — Doug Guthrie, Braintrust - https://www.youtube.com/watch?v=bk0TmxoZlUY"
provenance:
  extracted: 0.90
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/eval-ingredients-task-dataset-score|Eval Ingredients: Task, Dataset, Score]]"
    type: elaborates
  - target: "[[concepts/evals-are-not-unit-tests|Evals Are Not Unit Tests]]"
    type: contrasts
  - target: "[[concepts/eval-driven-development|Eval-Driven Development]]"
    type: implements
---

# Evals as Structured Tests

An eval is a structured test that checks how well an AI system performs. It is the fundamental unit of evaluation — a repeatable, measurable check that answers specific questions about application quality. ^[extracted]

## Definition

> "A structured test that checks how well your AI system performs." ^[extracted]

This definition emphasizes three qualities:

1. **Structured** — Not a vague "vibe check." Every eval has defined inputs, a defined task, and a defined scoring method
2. **Test** — Repeatable and measurable. The same eval run against the same dataset should produce the same results
3. **System** — Evaluated the full application, not just the model. The task includes prompts, tool calls, retrieval logic, and any other processing

## What Evals Measure

Evals measure the dimensions that matter for your application:

- **Quality** — Does the output meet the standard your users expect?
- **Reliability** — Does the system produce acceptable outputs consistently?
- **Correctness** — Does the output match the expected behavior for given inputs?

## Evals vs Unit Tests

While both are structured tests, evals differ from unit tests in important ways. Unit tests verify deterministic code paths; evals verify non-deterministic LLM outputs against quality criteria. See [[concepts/evals-are-not-unit-tests|Evals Are Not Unit Tests]] for the full treatment.

## The Eval Structure

Every structured test follows the same pattern:

```
Dataset (inputs) → Task (the thing being tested) → Output → Score (grading logic)
```

This structure is the [[concepts/eval-ingredients-task-dataset-score|three-ingredient model]] that Braintrust formalizes. ^[inferred]

## Related

- [[concepts/eval-ingredients-task-dataset-score|Eval Ingredients: Task, Dataset, Score]] — The structure of every eval
- [[concepts/evals-are-not-unit-tests|Evals Are Not Unit Tests]] — How evals differ from traditional tests
- [[concepts/eval-driven-development|Eval-Driven Development]] — The methodology built on structured tests
- [[concepts/eval-quality-matrix|Eval Quality Matrix]] — Diagnosing whether structured tests are working
