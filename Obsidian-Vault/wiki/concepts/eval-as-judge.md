---
title: "Eval-as-Judge"
category: concepts
tags:
  - llm-judge
  - evaluation
  - ai-testing
  - self-evaluation
  - stochastic-evals
sources:
  - "AIEF2025 - CI in the Era of AI: From Unit Tests to Stochastic Evals — Nathan Sobo, Zed - https://www.youtube.com/watch?v=WXy8Yy9xGss"
relationships:
  - target: "[[concepts/stochastic-evals|Stochastic Evals]]"
    type: related_to
  - target: "[[concepts/evals-are-not-unit-tests|Evals Are Not Unit Tests]]"
    type: extends
  - target: "[[concepts/agentic-evaluators|Agentic Evaluators]]"
    type: related_to
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.82
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Eval-as-Judge

A testing pattern where an LLM is used to evaluate the output of another LLM's operation. In Zed's agentic editing evals, the model's edit output is passed to an eval-as-judge to verify correctness when programmatic assertions are insufficient. ^[extracted]

## When Eval-as-Judge Is Used

Eval-as-judge is employed when a stochastic test cannot be fully expressed as a deterministic assertion. For example, verifying that an edit "worked correctly" may require semantic understanding that goes beyond simple string matching or AST comparison. In these cases, the eval loads the conversation with the LLM and asks the judge model to assess correctness. ^[extracted]

## Zed's Usage

At Zed, eval-as-judge is one of two evaluation strategies within their stochastic eval framework:
1. **Programmatic assertions** — direct code-level checks (e.g., verifying a file was modified, a function was added)
2. **Eval-as-judge** — LLM-based assessment of edit correctness ^[extracted]

## Trade-offs

Eval-as-judge introduces additional non-determinism (the judge model itself is stochastic) but provides semantic evaluation capability that programmatic checks cannot. Zed mitigates this by running eval-as-judge tests many times (200 iterations) and requiring 100% pass rate. ^[inferred]

## Relationship to Other Patterns

Eval-as-judge complements **Deterministic Eval Scoring** by providing the semantic judgment layer, while **Stochastic Evals** provide the repetition framework that makes judge-based evaluation viable in CI. ^[inferred]
