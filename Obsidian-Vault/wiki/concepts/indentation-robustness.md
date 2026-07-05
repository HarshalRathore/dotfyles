---
title: "Indentation Robustness"
category: concepts
tags:
  - indentation
  - llm
  - text-editing
  - ai-editing
  - delta-computation
sources:
  - "AIEF2025 - CI in the Era of AI: From Unit Tests to Stochastic Evals — Nathan Sobo, Zed - https://www.youtube.com/watch?v=WXy8Yy9xGss"
relationships:
  - target: "[[concepts/fuzzy-text-matching|Fuzzy Text Matching]]"
    type: related_to
  - target: "[[concepts/streaming-diff-algorithm|Streaming Diff Algorithm]]"
    type: related_to
  - target: "[[concepts/stochastic-evals|Stochastic Evals]]"
    type: related_to
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.88
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Indentation Robustness

An algorithmic strategy for handling LLM-generated text edits where the model produces correct content but with flattened or incorrect indentation. The approach computes an indentation delta between the matched source text and the emitted text, then renormalizes the output to match the source's indentation level. ^[extracted]

## The Problem

When an LLM is asked to replace nested code (e.g., replacing `fn inner` inside `fn outer`), the model often produces the correct replacement text but with all leading indentation stripped — flattening the output to the left margin. This breaks edit application because the text matches semantically but not structurally. ^[extracted]

## The Fix: Indentation Delta

Zed's solution computes an indentation delta:
1. Detect the indentation level of the matched text in the buffer
2. Detect the indentation level of the text emitted by the LLM
3. Compute the delta between them
4. Renormalize the emitted text by applying the delta ^[extracted]

## Example

A test case: an outer function containing an inner function with a `todo!()` macro. The model is asked to replace `todo!()` with `return 42`. The model might produce `replace fn inner` with all indentation stripped. The indentation delta algorithm detects the original indentation pattern and renormalizes the output to match. ^[extracted]

## Deterministic Verification

Zed verified this fix with a deterministic test using lorem ipsum text with a specific indentation pattern, replacing a substring with an out-dented version to confirm the delta computation works correctly. ^[extracted]

## Role in the Editing Pipeline

Indentation robustness is one of three core algorithms in Zed's agentic editing pipeline, alongside **Fuzzy Text Matching** and the **Streaming Diff Algorithm**. ^[inferred]
