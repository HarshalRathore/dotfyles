---
title: "Prompt Engineering for LLM Output"
category: concepts
tags:
  - prompt-engineering
  - llm
  - output-formatting
  - xml-tags
  - ai-editing
sources:
  - "AIEF2025 - CI in the Era of AI: From Unit Tests to Stochastic Evals — Nathan Sobo, Zed - https://www.youtube.com/watch?v=WXy8Yy9xGss"
relationships:
  - target: "[[concepts/stochastic-evals|Stochastic Evals]]"
    type: related_to
  - target: "[[concepts/deterministic-from-stochastic|Deterministic-From-Stochastic]]"
    type: related_to
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Prompt Engineering for LLM Output

Using prompt design to constrain and improve the format of LLM-generated text, particularly for structured outputs like edit operations. Zed demonstrated that prompt engineering alone can reduce certain failure modes from 40% to 95%, but the remaining 5% still requires algorithmic robustness. ^[extracted]

## XML Tag Mismatch Problem

Zed's editing pipeline uses old-text/new-text XML-style tags for edit operations. The LLM frequently mismatched these tags (closing with `</new_text>` when it opened with `<old_text>`). Initially, this caused failures 40% of the time. ^[extracted]

## Prompt Engineering Fix

Adding an instruction to "always close all tags properly" reduced the mismatch rate from 40% to 95%. However, the remaining 5% still required algorithmic handling — demonstrating that prompt engineering reduces but does not eliminate non-deterministic failure modes. ^[extracted]

## Empty Old-Text Tags

Another prompt-level fix addressed the model generating empty `old_text` tags when inserting at the top or end of documents. This improved the eval but still occurred 1-2% of the time, requiring robust parsing to handle. ^[extracted]

## The Two-Layer Strategy

Zed's approach to prompt engineering for LLM output follows a two-layer strategy:
1. **Prompt engineering** — reduce failure rates to acceptable levels (e.g., 40% → 5%)
2. **Algorithmic robustness** — handle the remaining failures with deterministic code (fuzzy matching, tag recovery) ^[inferred]
