---
title: Open Models
category: concepts
tags:
- open-models
- llm
- model-release
- developer-ecosystem
- model-development
summary: The ecosystem of openly released AI models, contrasting with closed/proprietary models, and the developer feedback loops they enable.
provenance:
  extracted: 0.4
  inferred: 0.45
  ambiguous: 0.15
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/model-iteration-feedback-loop|Model Iteration Feedback Loop]]'
  type: related_to
- target: '[[concepts/model-benchmarks|Model Benchmarks]]'
  type: related_to
sources: []
---

# Open Models

Open models are AI models released to the developer ecosystem with varying degrees of openness — from fully open weights to API-accessible models with public documentation. The open model ecosystem enables developer feedback loops that drive iterative improvement. ^[inferred]

## Open Models and Feedback

Logan Kilpatrick's announcement of Gemini 2.5 Pro at AIEF2025 exemplified the open model feedback pattern: DeepMind released a model update based on developer ecosystem feedback, invited direct email feedback, and characterized the update as part of an ongoing iteration process ("pushing the rock up the hill"). ^[extracted]

## Contrast with Closed Models

Closed models typically follow a "big bang" release pattern with long gaps between versions. Open models, by contrast, enable continuous feedback-driven iteration — developers can test, report issues, and request features that directly influence the model's evolution. ^[inferred]

## Related

- [[concepts/model-iteration-feedback-loop|Model Iteration Feedback Loop]] — the feedback mechanism
- [[concepts/model-benchmarks|Model Benchmarks]] — evaluation framework
- [[entities/gemini|Gemini]] — model family using this pattern

## Sources

- AIEF2025 - AI Engineer World's Fair 2025 - Day 2 Keynotes & SWE Agents track (TEST - first 3 speakers) - https://www.youtube.com/watch?v=U-fMsbY-kHY_test
