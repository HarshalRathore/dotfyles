---
title: "Cost Intelligence Bands"
category: concepts
tags:
  - cost
  - intelligence
  - quality-bands
  - price-compression
  - aief2025
aliases:
  - intelligence bands
  - quality bands
sources:
  - "AIEF2025 - Trends Across the AI Frontier — George Cameron, ArtificialAnalysis.ai - https://www.youtube.com/watch?v=sRpqPgKeXNk"
summary: "Models bucketed by intelligence level: GPT-4 level cost fell 100× since mid-2023, with new quality bands halving in cost within months of release."
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/llm-cost-structure|LLM Cost Structure]]"
    type: extends
  - target: "[[concepts/multiple-ai-frontiers|Multiple AI Frontiers]]"
    type: relates_to
---

# Cost Intelligence Bands

**Cost intelligence bands** is the concept of bucketing models by their intelligence level and measuring the cost to access each band over time. Within each quality band, costs have fallen dramatically and continue to halve rapidly after new frontiers are reached.

## Intelligence Banding

Rather than comparing individual models, Artificial Analysis groups models into intelligence bands — clusters of models with similar capability levels. This allows cost tracking within comparable quality tiers rather than across the entire frontier. ^[extracted]

## Cost Compression Within Bands

The key finding: accessing a given intelligence band has become dramatically cheaper over time: ^[extracted]

- **GPT-4 level intelligence**: Cost has fallen **over 100×** since mid-2023
- **This pattern holds across all quality bands**, not just the top tier

## The Halving Pattern

When a new quality band is reached (a new frontier of intelligence), the cost of accessing that level of intelligence follows a rapid compression curve: ^[extracted]

- **O1 Mini** (late 2024) introduced a new quality band
- Within only a few months, the cost of accessing that level **halved**
- This pattern suggests that cost compression is a property of the frontier, not just individual models

## Implications for Application Design

Cost intelligence bands mean that: ^[extracted]

- The "right" model for an application changes over time as costs fall
- Applications built on expensive models today may be economically viable on cheaper models tomorrow
- Cost-based model selection should consider the trajectory of price compression, not just current prices
- An application's cost structure may dictate which intelligence band is appropriate, and that band is always getting cheaper

## Related

- [[concepts/llm-cost-structure|LLM Cost Structure]] — The cost formula that drives band economics
- [[concepts/multiple-ai-frontiers|Multiple AI Frontiers]] — Intelligence bands are one dimension of the frontier
- [[entities/artificial-analysis|Artificial Analysis]] — Source of the band analysis

## Sources

- AIEF2025 - Trends Across the AI Frontier — George Cameron, ArtificialAnalysis.ai - https://www.youtube.com/watch?v=sRpqPgKeXNk
