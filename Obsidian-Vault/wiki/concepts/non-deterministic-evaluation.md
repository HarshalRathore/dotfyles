---
title: "Non-Deterministic Evaluation"
category: concepts
tags:
  - evals
  - non-deterministic
  - ai-agents
  - stochastic
  - evaluation-challenge
aliases:
  - stochastic-evaluation
  - non-deterministic-systems-evaluation
sources:
  - "AIEF2025 - Taming Rogue AI Agents with Observability-Driven Evaluation — Jim Bennett, Galileo - https://www.youtube.com/watch?v=xJXm4Wcw4m8"
summary: >-
  Evaluating non-deterministic AI systems: the same input produces different outputs and execution paths, making evaluation inherently probabilistic.
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/stochastic-systems-evaluation]]"
    type: is_category_of
  - target: "[[concepts/evals-are-not-unit-tests]]"
    type: explains
  - target: "[[concepts/observability-driven-development]]"
    type: motivates
---

# Non-Deterministic Evaluation

**Non-Deterministic Evaluation** refers to the fundamental challenge of evaluating AI systems whose behavior is inherently non-deterministic: the same input can produce different outputs, different execution paths, and different tool calls on different runs. This makes traditional evaluation approaches — which assume deterministic input-output mapping — insufficient for AI agents. ^[extracted]

## The Unit Test Analogy

Bennett draws a parallel with software testing: every coder writes unit tests for deterministic functions. For `add(2, 2)`, you expect `4`. For `add(3, 3)`, you expect `6`. But for an AI agent — where input flows through LLM → data retrieval → decision → tool call → data retrieval → decision → tool call — there is no single expected output. ^[extracted]

This is not just a practical difficulty but a **conceptual one**: what does "work" even mean for a non-deterministic system?

## Why Binary Evaluation Fails

In a deterministic system, you can write `assert output == expected`. In a non-deterministic system:

- The same user query may produce different execution paths
- A "successful" outcome may mask poor intermediate steps
- A "failed" outcome may be acceptable given the complexity of the task
- The definition of success itself may be fuzzy (e.g., "good UX" for a chatbot)

Bennett's FinTech chatbot demo illustrates this: the user got their balance (success?) but took three steps and multiple clarifications (failure?). Both answers are valid because the system is non-deterministic. ^[extracted]

## Implications for Evaluation Design

Non-deterministic evaluation requires:

1. **Probabilistic metrics** — success rates over many runs, not single-run pass/fail
2. **Per-span measurement** — evaluating each step independently, since the path varies
3. **Distributional analysis** — understanding the spread of outcomes, not just the mean
4. **LLM-based scoring** — humans and LLMs can evaluate quality even when the exact output varies

## Relation to Related Concepts

Non-deterministic evaluation is the root cause of why [[concepts/evals-are-not-unit-tests|Evals Are Not Unit Tests]]. It motivates [[concepts/observability-driven-development|Observability-Driven Development]] because per-span observability is the only way to make sense of varying execution paths. It is the broader category containing [[concepts/stochastic-systems-evaluation|Stochastic Systems Evaluation]].

## Related

- [[concepts/evals-are-not-unit-tests]] — Why evals resist deterministic testing
- [[concepts/observability-driven-development]] — ODD handles non-determinism via per-span metrics
- [[concepts/stochastic-systems-evaluation]] — Specific evaluation techniques for stochastic systems
- [[concepts/agent-reliability-challenge]] — The reliability challenge in non-deterministic systems
