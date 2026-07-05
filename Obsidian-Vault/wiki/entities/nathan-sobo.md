---
title: "Nathan Sobo"
category: entities
tags:
  - founder
  - ai-editor
  - rust
  - zed
  - stochastic-evals
sources:
  - "AIEF2025 - CI in the Era of AI: From Unit Tests to Stochastic Evals — Nathan Sobo, Zed - https://www.youtube.com/watch?v=WXy8Yy9xGss"
relationships:
  - target: "[[entities/zed|Zed]]"
    type: implements
  - target: "[[concepts/stochastic-evals|Stochastic Evals]]"
    type: related_to
  - target: "[[concepts/deterministic-logic-guardrails|Deterministic Logic Guardrails]]"
    type: extends
provenance:
  extracted: 0.95
  inferred: 0.03
  ambiguous: 0.02
base_confidence: 0.92
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Nathan Sobo

Co-founder of Zed, an AI-enabled code editor implemented from scratch in Rust (not a fork of VS Code). Spoke at AI Engineer World's Fair 2025 on Zed's empirical approach to testing agentic editing features, including the shift from deterministic unit tests to stochastic evaluations for AI-driven functionality.

## Zed's Testing Philosophy

Sobo describes Zed's testing culture as "hardcore about testing and being empirical." The team maintains tens of thousands of tests and pioneered a technique of running 50+ iterations with every random interleaving of concurrent operations to catch race conditions. This deterministic testing approach worked until LLMs entered the picture, forcing a shift to stochastic evaluation methods. ^[extracted]

## On Stochastic Evals

At AIEF2025, Sobo detailed how Zed drove out non-deterministic failure modes — such as the grep tool showing truncated code to the model — by converting stochastic test failures into deterministic algorithmic fixes using TreeSitter for syntactic boundary expansion. ^[extracted]
