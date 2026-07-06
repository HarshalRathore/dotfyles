---
title: Eval Score Types
category: concepts
tags:
- evals
- scoring
- llm-as-judge
- code-based
- braintrust
sources:
- AIEF2025 - Evals 101 — Doug Guthrie, Braintrust - https://www.youtube.com/watch?v=bk0TmxoZlUY
provenance:
  extracted: 0.9
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/eval-ingredients-task-dataset-score|Eval Ingredients: Task, Dataset, Score]]'
  type: elaborates
- target: '[[concepts/llm-as-judge|LLM as Judge]]'
  type: implements
- target: '[[concepts/scorers-as-specs|Scorers as Specs]]'
  type: relates_to
summary: Eval Score Types
---

# Eval Score Types

Every eval needs a score — the grading logic that evaluates task output. There are two fundamental types: LLM-as-judge scores and code-based scores. Best practice is to use both in combination. ^[extracted]

## LLM-as-Judge Scores

An LLM evaluates the output against qualitative criteria and produces a numeric score. ^[extracted]

- **Input**: The output and evaluation criteria
- **Process**: The judge LLM assesses qualities like "Is this excellent?", "Is this fair?", "Is this poor?"
- **Output**: A numeric score (e.g., 0.5, 1.0) mapped from qualitative judgment
- **Use case**: Subjective, qualitative dimensions where human-like judgment is needed (tone, fairness, accuracy, helpfulness)

## Code-Based Scores

Deterministic, heuristic-based scoring that checks objective conditions. ^[extracted]

- **Input**: The output and a set of programmatic rules
- **Process**: Regex matching, JSON schema validation, string comparison, or other programmatic checks
- **Output**: A binary or numeric score (0–1)
- **Use case**: Objective, verifiable conditions where deterministic evaluation is preferred (format compliance, required fields, length constraints)

## Combining Both Types

> "We can use both of these to really aid in the development of that eval and ensuring that we're building a really good application." ^[extracted]

Using both score types provides balanced assessment:

- **Code-based scores** catch objective failures quickly and cheaply (no LLM call needed)
- **LLM-as-judge scores** capture nuanced quality dimensions that code can't express
- Together they provide both breadth (coverage of dimensions) and depth (nuanced judgment)

## Related

- [[concepts/eval-ingredients-task-dataset-score|Eval Ingredients: Task, Dataset, Score]] — The score is the third ingredient
- [[concepts/llm-as-judge|LLM as Judge]] — Deep dive on LLM-as-judge methodology
- [[concepts/scorers-as-specs|Scorers as Specs]] — Why scoring functions are specifications for your product
- [[concepts/eval-quality-matrix|Eval Quality Matrix]] — Diagnosing whether to improve the score function
