---
title: "Stochastic Evals"
category: concepts
tags:
  - evaluation
  - ai-testing
  - non-deterministic
  - ci
  - agentic
  - llm
sources:
  - "AIEF2025 - CI in the Era of AI: From Unit Tests to Stochastic Evals — Nathan Sobo, Zed - https://www.youtube.com/watch?v=WXy8Yy9xGss"
  - "AIEF2025 - Five hard earned lessons about Evals — Ankur Goyal, Braintrust - https://www.youtube.com/watch?v=a4BV0gGmXgA"
relationships:
  - target: "[[concepts/evals-are-not-unit-tests|Evals Are Not Unit Tests]]"
    type: extends
  - target: "[[concepts/deterministic-eval-scoring|Deterministic Eval Scoring]]"
    type: related_to
  - target: "[[concepts/reliability-over-intelligence|Reliability Over Intelligence]]"
    type: extends
  - target: "[[concepts/eval-driven-development|Eval-Driven Development]]"
    type: related_to
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Stochastic Evals

Stochastic evaluations are a testing methodology for AI/LLM-powered systems where outputs are inherently non-deterministic. Unlike traditional unit tests that assert exact equality, stochastic evals run a test many times (e.g., 200 iterations) and assert that all or a defined percentage of runs pass. ^[extracted]

## The Core Problem

When an LLM enters the software pipeline, deterministic testing breaks: changing a single token in the input can produce a completely different output. This makes traditional CI pipelines — which rely on reproducible pass/fail — impossible to use directly. ^[extracted]

## Zed's Approach

At Zed, stochastic evals are integrated into the main test suite as regular `eval` functions. Each eval is run 200 times, and the build fails if any run doesn't pass — establishing a 100% watermark. The eval function itself is a regular programmatic test that can drive an LLM agent, observe its behavior, and assert outcomes. ^[extracted]

## Stochastic-to-Deterministic Pipeline

The key insight from Zed's experience: stochastic tests are not the end state but a discovery mechanism. When a stochastic test reveals a failure mode, the team drives that failure into a deterministic test that can be fixed algorithmically. For example:

- A stochastic grep test revealed the model saw truncated code → fixed by using TreeSitter for syntactic boundary expansion, then verified with a deterministic test. ^[extracted]
- A stochastic editing test revealed indentation flattening → fixed by computing indentation deltas, then verified with a deterministic lorem ipsum test. ^[extracted]

## Watermark Strategy

Zed sets a pass rate watermark (e.g., 100% of 200 runs must pass). This turns a probabilistic problem into a binary CI gate: the build either passes or fails, but the underlying test accounts for model non-determinism. ^[inferred]

## When Stochastic Evals Apply

Stochastic evals are needed whenever:
- The system includes an LLM or other non-deterministic component
- Small input variations can produce meaningfully different outputs
- The test must verify behavioral correctness rather than exact output matching
- Traditional assertion-based testing cannot capture the space of valid outputs ^[inferred]
