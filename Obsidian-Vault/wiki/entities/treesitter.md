---
title: "TreeSitter"
category: entities
tags:
  - parser
  - code-analysis
  - syntactic-analysis
  - rust
  - max-brunsfeld
  - code-intelligence
sources:
  - "AIEF2025 - CI in the Era of AI: From Unit Tests to Stochastic Evals — Nathan Sobo, Zed - https://www.youtube.com/watch?v=WXy8Yy9xGss"
relationships:
  - target: "[[entities/zed|Zed]]"
    type: uses
  - target: "[[concepts/deterministic-from-stochastic|Deterministic-From-Stochastic]]"
    type: uses
provenance:
  extracted: 0.90
  inferred: 0.07
  ambiguous: 0.03
base_confidence: 0.88
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# TreeSitter

A parser generator framework created by Max Brunsfeld that expands text matches to full syntactic boundaries. Zed uses TreeSitter to ensure that code context shown to LLM models includes complete syntactic structures rather than truncated fragments. ^[extracted]

## Use in Zed's Grep Tool

Zed's original grep tool exposed truncated code to the LLM model, causing incorrect edits. The fix used TreeSitter to expand a grep match from a simple text search (e.g., finding `fn run`) to the full syntactic boundary of the matched function — including its signature, body, and all surrounding context. This was discovered through a stochastic test and verified with a deterministic test. ^[extracted]

## Why Syntactic Boundaries Matter

For LLM-based code editing, showing the model truncated code is a fundamental failure mode. The model needs to see complete function signatures, type annotations, and surrounding context to generate correct edits. TreeSitter provides the syntactic analysis needed to extract complete code regions from arbitrary text matches. ^[inferred]
