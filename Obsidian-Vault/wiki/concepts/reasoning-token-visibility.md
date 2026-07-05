---
title: "Reasoning Token Visibility"
category: concepts
tags:
  - reasoning
  - tokens
  - transparency
  - pricing
  - aief2025
aliases:
  - hidden reasoning tokens
  - reasoning token cost
sources:
  - "AIEF2025 - Trends Across the AI Frontier — George Cameron, ArtificialAnalysis.ai - https://www.youtube.com/watch?v=sRpqPgKeXNk"
summary: "Reasoning tokens are charged even when labs hide them. Per-token pricing alone is misleading without considering output verbosity and hidden reasoning costs."
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
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

# Reasoning Token Visibility

**Reasoning token visibility** refers to the transparency (or lack thereof) around the reasoning tokens that models produce during "thinking mode." Labs may attempt to hide these tokens in their pricing displays, but users pay for them regardless — making per-token pricing alone a misleading metric.

## The Hidden Cost Problem

When reasoning models are in thinking mode, they produce reasoning tokens as part of their output. These tokens: ^[extracted]

- Are charged to the user as output tokens
- May be hidden by some labs in their pricing documentation
- Contribute significantly to total cost but are not visible in per-token pricing

This means the true cost of a reasoning model is: ^[extracted]

> (visible output tokens + hidden reasoning tokens) × (price per million tokens)

## Why Per-Token Pricing Is Misleading

Artificial Analysis argues that labs "maybe don't want you to think this way" — focusing on per-token price alone obscures the real cost of accessing intelligence. ^[extracted]

Two models with the same per-token price can have vastly different total costs if one produces 10× more reasoning tokens.

## Measuring True Cost

The correct way to measure model cost is to benchmark on a standardized workload (like the Intelligence Index) and measure: ^[extracted]

1. Total output tokens produced (including reasoning tokens)
2. Total cost to run the benchmark
3. Intelligence delivered per dollar

This approach captures the full cost of accessing a model's intelligence, not just the advertised per-token rate.

## Verbosity Varies Even Among Non-Reasoning Models

The verbosity problem is not exclusive to reasoning models. Even among non-reasoning models, there are significant differences in how verbose their responses are, which affects total cost. ^[extracted]

## Related

- [[concepts/reasoning-model-tradeoffs|Reasoning Model Trade-offs]] — Reasoning tokens drive the verbosity trade-off
- [[concepts/llm-cost-structure|LLM Cost Structure]] — The broader cost formula that includes reasoning tokens
- [[entities/artificial-analysis|Artificial Analysis]] — Source of the visibility analysis

## Sources

- AIEF2025 - Trends Across the AI Frontier — George Cameron, ArtificialAnalysis.ai - https://www.youtube.com/watch?v=sRpqPgKeXNk
