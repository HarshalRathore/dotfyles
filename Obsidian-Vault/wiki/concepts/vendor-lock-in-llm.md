---
title: Vendor Lock-in in LLM
category: concepts
tags:
- llm
- vendor-lock-in
- contracts
- migration
- enterprise-ai
- cost
aliases:
- LLM Vendor Lock-in
- AI Vendor Lock-in
- Model Lock-in
- Prompt Lock-in
sources:
- AIEF2025 - How Intuit uses LLMs to explain taxes to millions of taxpayers - Jaspreet Singh, Intuit - https://www.youtube.com/watch?v=_zl_zimMRak
summary: Vendor lock-in in LLM applications arises from expensive contracts, model-specific prompt engineering, and the difficulty of switching models even within the same vendor. Long-term contracts reduce...
provenance:
  extracted: 0.7
  inferred: 0.22
  ambiguous: 0.08
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/model-picking|Model Picking]]'
  type: relates_to
- target: '[[concepts/fine-tuning-for-specialization|Fine-Tuning for Specialization]]'
  type: relates_to
---

# Vendor Lock-in in LLM

**Vendor lock-in in LLM** refers to the dependency created when organizations build AI applications on specific model providers, making migration costly and difficult. ^[extracted]

## Forms of Lock-in

Jaspreet Singh at Intuit identified multiple layers of lock-in: ^[extracted]

### Contract Lock-in
LLM contracts are expensive. Long-term contracts reduce per-unit cost but tie the organization to a specific vendor. Intuit has a multi-million dollar contract with Anthropic.

### Prompt Lock-in
Prompts are a form of lock-in — they are not easily portable between models. Different models have different capabilities, instruction-following behaviors, and output formats, meaning prompts tuned for one model require significant rework for another.

### Model Upgrade Lock-in
Even switching models within the same vendor is harder than expected. Intuit's transition from Anthropic Claude Instant to Claude Haiku for tax year 24 required significant effort. This is only possible because they have clear evaluation systems in place to test changes.

## Mitigation Strategy

Strong vendor partnerships help — working with vendors who actively iterate and improve together reduces the friction of model switching. Clear evaluation systems are the single most important enabler for safe model transitions. ^[extracted]

## Related

- [[concepts/model-picking|Model Picking]] — The ongoing challenge of choosing the right model
- [[concepts/llm-evaluation-framework|LLM Evaluation Framework]] — Eval systems enable safe model switching
- [[concepts/llm-latency-in-consumer-apps|LLM Latency in Consumer Apps]] — Latency concerns compound lock-in decisions
