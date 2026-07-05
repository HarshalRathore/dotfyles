---
title: "LLM Cost Structure"
category: concepts
tags:
  - cost
  - pricing
  - llm
  - token
  - reasoning-tokens
  - aief2025
aliases:
  - llm pricing
  - model cost
sources:
  - "AIEF2025 - Trends Across the AI Frontier — George Cameron, ArtificialAnalysis.ai - https://www.youtube.com/watch?v=sRpqPgKeXNk"
summary: "True LLM cost is per-token price × output verbosity including hidden reasoning tokens. Costs for equivalent intelligence have fallen 100× since mid-2023."
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/reasoning-models|Reasoning Models]]"
    type: relates_to
  - target: "[[concepts/llm-cost-structure|LLM Cost Structure]]"
    type: relates_to
---

# LLM Cost Structure

The **cost structure of LLM usage** is determined by two factors: per-token pricing and output verbosity. The total cost of accessing a model's intelligence is the product of these two variables, and reasoning models add a third hidden variable — reasoning tokens that may be charged but not visible to the caller.

## The Two-Component Cost Formula

Total cost = (price per million tokens) × (output tokens produced) ^[extracted]

This means a cheaper per-token model can still be more expensive overall if it produces more output tokens. Labs may hide reasoning tokens in their pricing, but users pay for them regardless. ^[extracted]

## Measured Cost Differences

Using the Artificial Analysis Intelligence Index as a standardized workload: ^[extracted]

- **O3**: ~$2,000 to run the full intelligence index
- **GPT 4.1**: ~$67 (roughly 30× cheaper than O3)
- **GPT 4.1 Nano**: ~$4 (over 500× cheaper than O3)

These differences are large enough to fundamentally change application architecture — an agentic application making 30 sequential API calls could still be cheaper on GPT 4.1 Nano than a single O3 query.

## Reasoning Tokens: The Hidden Cost

Reasoning models in "thinking mode" produce大量 reasoning tokens as output, which users pay for even when labs attempt to hide them. This means: ^[extracted]

- Per-token pricing alone is misleading
- Models must be benchmarked on total output token count
- Even non-reasoning models vary in verbosity

## Cost Compression Over Time

Within intelligence quality bands, costs have fallen dramatically: ^[extracted]

- Accessing GPT-4 level intelligence has fallen **over 100×** since mid-2023
- When a new quality band is reached (e.g., O1 Mini in late 2024), costs **halve within months**
- This compression is consistent across all quality bands

## Implications for Application Design

The cost structure of your application should dictate which model you use. An application with 30 sequential API calls for agentic workflows may be cheaper on a less intelligent but far cheaper model than on the most intelligent one. ^[extracted]

## Related

- [[concepts/reasoning-models|Reasoning Models]] — Reasoning tokens are the hidden cost driver
- [[concepts/model-quality-latency-tradeoff|Model Quality vs Latency Tradeoff]] — Related trade-off dimension
- [[entities/artificial-analysis|Artificial Analysis]] — Source of the cost measurements

## Sources

- AIEF2025 - Trends Across the AI Frontier — George Cameron, ArtificialAnalysis.ai - https://www.youtube.com/watch?v=sRpqPgKeXNk
