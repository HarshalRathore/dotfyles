---
title: "Inference Verbosity"
category: concepts
tags:
  - verbosity
  - output-tokens
  - cost
  - reasoning
  - aief2025
aliases:
  - model verbosity
  - output token count
  - yappy models
sources:
  - "AIEF2025 - Trends Across the AI Frontier — George Cameron, ArtificialAnalysis.ai - https://www.youtube.com/watch?v=sRpqPgKeXNk"
summary: "The tendency of models to produce many output tokens relative to the intelligence delivered. Verbosity is a first-class cost and latency driver, not just a side effect."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/reasoning-model-tradeoffs|Reasoning Model Trade-offs]]"
    type: relates_to
  - target: "[[concepts/llm-cost-structure|LLM Cost Structure]]"
    type: extends
---

# Inference Verbosity

**Inference verbosity** is the measure of how many output tokens a model produces relative to the intelligence it delivers. It is a first-class dimension of model quality — not a side effect — that directly impacts cost, latency, and what applications can be built.

## The Verbosity Spectrum

Models form two distinct clusters on the verbosity axis: ^[extracted]

- **Non-reasoning models** — low verbosity, fewer output tokens per evaluation
- **Reasoning models** — high verbosity, 10× more output tokens per evaluation

The term "yappy" was used informally to describe the most verbose models. ^[extracted]

## Measured Verbosity Differences

Using Artificial Analysis's Intelligence Index as a standardized workload: ^[extracted]

| Model | Output Tokens | Category |
|-------|--------------|----------|
| GPT 4.1 | 7 million | Non-reasoning |
| O4 Mini High | 72 million | Reasoning |
| Gemini 2.5 Pro | 130 million | Reasoning ("yappiest") |

This is not a perception — it is a measurable order-of-magnitude difference. ^[extracted]

## Verbosity Varies Within Categories

Even among non-reasoning models, there are significant differences in verbosity. A model's per-token price is only half the cost equation; the other half is how many tokens it produces. ^[extracted]

## Why Verbosity Matters

Verbosity drives three critical application dimensions: ^[extracted]

1. **Cost** — More tokens = more money, regardless of per-token pricing
2. **Latency** — More tokens = longer generation time
3. **Agent scalability** — In agentic workflows, verbosity compounds across sequential calls

## The Hidden Verbosity Problem

Reasoning models produce reasoning tokens that may be hidden in pricing displays but are still charged. This means the true verbosity of a reasoning model is: ^[extracted]

> visible output tokens + hidden reasoning tokens

Labs may not want users to think this way — focusing on per-token price alone obscures the real cost of accessing intelligence. ^[extracted]

## Related

- [[concepts/reasoning-model-tradeoffs|Reasoning Model Trade-offs]] — Verbosity is the core trade-off
- [[concepts/llm-cost-structure|LLM Cost Structure]] — The cost formula that includes verbosity
- [[concepts/reasoning-token-visibility|Reasoning Token Visibility]] — Hidden verbosity in reasoning models

## Sources

- AIEF2025 - Trends Across the AI Frontier — George Cameron, ArtificialAnalysis.ai - https://www.youtube.com/watch?v=sRpqPgKeXNk
