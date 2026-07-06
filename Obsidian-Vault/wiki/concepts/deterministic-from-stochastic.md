---
title: Deterministic-From-Stochastic
category: concepts
tags:
- testing
- ci
- ai
- algorithmic-fix
- stochastic-evals
- failure-mode
sources:
- 'AIEF2025 - CI in the Era of AI: From Unit Tests to Stochastic Evals — Nathan Sobo, Zed - https://www.youtube.com/watch?v=WXy8Yy9xGss'
relationships:
- target: '[[concepts/stochastic-evals|Stochastic Evals]]'
  type: derived_from
- target: '[[concepts/deterministic-eval-scoring|Deterministic Eval Scoring]]'
  type: extends
- target: '[[concepts/eval-driven-development|Eval-Driven Development]]'
  type: related_to
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.87
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
summary: Deterministic-From-Stochastic
---

# Deterministic-From-Stochastic

A development methodology where stochastic (probabilistic) tests are used to discover failure modes in AI systems, and those discovered failures are then fixed algorithmically and verified with deterministic tests. The stochastic test serves as a discovery mechanism, not the final verification. ^[extracted]

## The Two-Phase Pattern

**Phase 1 — Discover with stochastic tests:** Run a test many times against the LLM to surface failure modes that deterministic tests would miss. The stochastic test captures the non-deterministic behavior and reveals *what* goes wrong. ^[extracted]

**Phase 2 — Fix with deterministic tests:** Once the failure mode is understood, implement an algorithmic fix (e.g., TreeSitter-based parsing, fuzzy matching, indentation renormalization) and verify it with a deterministic test that exercises the fix directly. ^[extracted]

## Zed's Case Studies

### Grep Tool — Truncated Code Exposure

A stochastic test revealed that the original grep tool implementation exposed truncated code to the LLM model. The fix was to use TreeSitter (Max Brunsfeld's parser generator framework) to expand matches to full syntactic boundaries, making the code visible to the model complete and correct. This was then verified with a deterministic test that sets up a project, searches for a function signature, and asserts the full syntactic context is returned. ^[extracted]

### Editing — Indention Flattening

A stochastic test revealed that the LLM would flatten indentation when replacing nested code (e.g., replacing `fn inner` inside `fn outer`). The fix computed an indentation delta between the matched text and the emitted text, renormalizing the output. Verified with a deterministic lorem ipsum test with a specific indentation pattern. ^[extracted]

## Why This Works

Stochastic tests surface the *space* of possible failures. Deterministic tests verify that the *fix* works for every case in that space. This two-phase approach lets teams benefit from the coverage of stochastic testing while maintaining the reliability and speed of deterministic CI. ^[inferred]

## Relationship to Other Patterns

This pattern complements **Stochastic Evals** (which use probabilistic tests as CI gates) and **Deterministic Eval Scoring** (which converts probabilistic outputs into binary pass/fail). Deterministic-From-Stochastic goes further: it uses stochastic discovery to drive algorithmic improvements, then abandons the stochastic test for the fixed path. ^[inferred]
