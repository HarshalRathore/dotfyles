---
title: "Fuzzy Text Matching"
category: concepts
tags:
  - fuzzy-matching
  - text-comparison
  - llm
  - dynamic-programming
  - ai-editing
  - approximate-match
sources:
  - "AIEF2025 - CI in the Era of AI: From Unit Tests to Stochastic Evals — Nathan Sobo, Zed - https://www.youtube.com/watch?v=WXy8Yy9xGss"
relationships:
  - target: "[[concepts/streaming-diff-algorithm|Streaming Diff Algorithm]]"
    type: related_to
  - target: "[[concepts/indentation-robustness|Indentation Robustness]]"
    type: related_to
  - target: "[[concepts/stochastic-evals|Stochastic Evals]]"
    type: related_to
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.86
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Fuzzy Text Matching

A text comparison technique using dynamic programming to find approximate matches between LLM-generated text and source code, handling cases where the model generates slightly incorrect text. This is a critical safety net for agentic editing where the model's output may not be byte-exact. ^[extracted]

## The Problem

LLMs occasionally generate text that is close to but not exactly matching the target code. Without fuzzy matching, even minor discrepancies (extra whitespace, slightly different formatting) would cause edit operations to fail entirely. ^[extracted]

## Zed's Approach

Zed implements a fuzzy matching algorithm based on dynamic programming that computes an approximate match between the model's output and the actual code. This "saved a lot of the tool calling failures" by tolerating small deviations in the model's generated text. ^[extracted]

## Deterministic Testing

Although the fuzzy matching handles stochastic (imperfect) model output, the algorithm itself is deterministic and included in Zed's regular test suite. This means every change to the fuzzy matching logic is verified by deterministic tests. ^[extracted]

## Role in the Editing Pipeline

Fuzzy text matching is one of three core algorithms in Zed's editing pipeline:
1. **Fuzzy Text Matching** — approximate match when model text is slightly wrong
2. **Streaming Diff Algorithm** — handle incremental/streamed text emission
3. **Indentation Robustness** — detect and correct indentation deltas ^[inferred]
