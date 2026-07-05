---
title: "Price Compression S-Curve"
category: concepts
tags:
  - price-compression
  - cost
  - intelligence-bands
  - s-curve
  - aief2025
aliases:
  - intelligence price compression
  - cost halving pattern
sources:
  - "AIEF2025 - Trends Across the AI Frontier — George Cameron, ArtificialAnalysis.ai - https://www.youtube.com/watch?v=sRpqPgKeXNk"
summary: "When a new intelligence quality band is reached, the cost of accessing that level of intelligence halves within months. GPT-4 level cost has fallen 100× since mid-2023."
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
  - target: "[[concepts/cost-intelligence-bands|Cost Intelligence Bands]]"
    type: describes_pattern_in
  - target: "[[concepts/llm-cost-structure|LLM Cost Structure]]"
    type: extends
---

# Price Compression S-Curve

**Price compression** is the pattern where the cost of accessing a given level of AI intelligence falls dramatically over time, following a rapid halving curve after new quality bands are reached. This pattern holds across all intelligence tiers, not just the top.

## The 100× Compression

Accessing GPT-4 level intelligence has fallen **over 100×** since mid-2023. ^[extracted] This is the most dramatic example, but the pattern is consistent across all quality bands.

## The Halving Pattern

When a new quality band is reached — a new frontier of intelligence — the cost of accessing that level follows a rapid compression: ^[extracted]

- **O1 Mini** (late 2024) introduced a new quality band
- Within only a few months, the cost of accessing that level **halved**
- This pattern repeats across all bands, not just the top tier

## Implications for Application Planning

The price compression pattern means that: ^[extracted]

- **Build for the future price, not today's price** — A model that seems too expensive today may be viable in 6 months
- **Intelligence bands are moving targets** — The "right" model for an application changes as costs fall
- **Cost-based decisions should include trajectory** — Current price is only one data point; the compression rate matters equally
- **Applications built on expensive models today may become economically viable on cheaper models tomorrow**

## Why It Matters for Builders

George Cameron specifically warned builders to think about this trajectory when designing applications: ^[extracted]

> "When building applications, think about [the cost trajectory]"

An application architected around current prices may be suboptimal if prices compress rapidly — but an application that ignores current costs entirely may be uneconomic today.

## Related

- [[concepts/cost-intelligence-bands|Cost Intelligence Bands]] — The banding framework this pattern operates within
- [[concepts/llm-cost-structure|LLM Cost Structure]] — The cost formula that gets compressed
- [[concepts/model-selection-by-application|Model Selection by Application]] — How to use this pattern in model selection

## Sources

- AIEF2025 - Trends Across the AI Frontier — George Cameron, ArtificialAnalysis.ai - https://www.youtube.com/watch?v=sRpqPgKeXNk
