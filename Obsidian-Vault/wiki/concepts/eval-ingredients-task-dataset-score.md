---
title: '"Eval Ingredients: Task, Dataset, Score"'
tags:
- concept
- evaluation
- methodology
- testing
- framework
aliases:
- eval three ingredients
- task dataset score triad
- eval components
sources:
- 'https://www.youtube.com/watch?v=mc55hdwlq4o'
summary: '"The three components that every AI evaluation requires: a task (the prompt or workflow being tested), a dataset (real-world test cases), and a score (grading logic — LLM-as-judge or code-based). O...'
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-05
category: concepts
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
---

# Eval Ingredients: Task, Dataset, Score

Every AI evaluation has three required components: the **task** being tested, the **dataset** of test cases, and the **score** that grades the output. [[entities/braintrust|Braintrust]] formalizes this as the foundational model for structured AI evaluation. ^[extracted]

## The Three Ingredients

### 1. Task
The thing being tested — a prompt or workflow with an input and an output. Complexity is flexible: ^[extracted]
- A **single LLM prompt** with mustache templating for dynamic inputs
- A **multi-turn chat** conversation, provided as extra message history
- A **tool-calling workflow** including tool definitions for RAG or external service calls
- A **chained agent** where the output of one prompt feeds into the next

The single requirement: every task must have a defined input and produce a measurable output. ^[extracted]

### 2. Dataset
The set of real-world examples or test cases to push through the task. Three fields: ^[extracted]
- **Input** (required): The user-provided prompt or use case
- **Expected** (optional): The anticipated or ideal response
- **Metadata** (optional): Additional information to associate with each row (e.g., few-shot examples, category tags)

Best practice: start small and iterate. Synthetic data is a valid starting point. Ground in real user traffic logs as the system matures. ^[extracted]

### 3. Score
The grading logic that evaluates task output against the dataset. Two types: ^[extracted]

| Type | Use Case | Example |
|------|----------|---------|
| **LLM-as-judge** | Subjective, qualitative criteria | "Is this response accurate? Is it in the right tone?" |
| **Code-based** | Objective, deterministic conditions | Regex match, JSON schema validation, exact string check |

Both types output a score from 0 to 1 (converted to percentage). Best practice: use both in combination for balanced assessment. ^[extracted]

## Basketball Court Metaphor

[[entities/ido-pesok|Ido Pesok]] (Vercel) mapped the three ingredients to a basketball court visualization at AIEF2025: ^[extracted]

| Ingredient | Court Metaphor | Description |
|---|---|---|
| **Data** | The point on the court | User queries to test against |
| **Task** | The shot | How you shoot the ball (system prompt, RAG, preprocessing) |
| **Score** | Did it go in the basket | Check of correctness (pass/fail) |

The metaphor emphasizes that evals are like basketball practice — they should be as similar as possible to the real game. ^[extracted]

## How They Fit Together

```
Dataset (test cases) → Task (prompt/workflow) → Output → Score (grading logic) → Score 0-1
```

Each dataset row is processed through the task. The output is then evaluated by each score function, producing a per-row score. Aggregate scores across the dataset give the overall eval result. ^[inferred]

## Evals as a Development Cycle

The ingredients enable a rapid feedback loop: tweak the task (prompt, model, logic), re-run against the same dataset and scores, and immediately see if the change improved or regressed quality. This replaces subjective "vibe checks" with data-driven iteration. ^[extracted]

## Relationship to Other Evaluation Concepts

- [[concepts/evaluation-first-development|Evaluation-First Development]] — the methodology that uses this three-ingredient model as its core loop
- [[concepts/llm-judge-best-practices|LLM-as-Judge Best Practices]] — design guidance for the Score component
- [[concepts/eval-dataset-strategy|Eval Dataset Strategy]] — how to build and iterate on the Dataset component
- [[concepts/eval-playground-experiment-workflow|Playground vs Experiments]] — the workflow for running these ingredients
- [[concepts/eval-quality-matrix|Eval Quality Matrix]] — how to diagnose whether to improve the evals or the AI app

## Sources
- AIEF2025 - Evals 101 — Doug Guthrie, Braintrust - https://www.youtube.com/watch?v=bk0TmxoZlUY

- [[references/aief2025-evals-workshop-braintrust|AIEF2025 - [Evals Workshop] Mastering AI Evaluation: From Playground to Production]] — Braintrust workshop at AI Engineer World's Fair 2025
