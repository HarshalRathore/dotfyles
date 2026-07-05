---
title: "Model Price Compression"
category: concepts
tags:
  - pricing
  - compression
  - llm
  - economics
  - aief2025
aliases:
  - model price compression
  - model pricing crash
  - AI price compression
sources:
  - "AIEF2025 - 2025 in LLMs so far, illustrated by Pelicans on Bicycles — Simon Willison - https://www.youtube.com/watch?v=YpY83-kA7Bo"
summary: "The dramatic compression of capable LLM prices over three years — from GPT-3.5 DaVinci at $60/M tokens to GPT-4o Nano at ~$0.10/M tokens, a 500×+ reduction — making high-quality AI accessible at near-zero cost."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/training-cost-efficiency|Training Cost Efficiency]]"
    type: extends
  - target: "[[concepts/reasoning-model-pricing|Reasoning Model Pricing]]"
    type: contrasts_with
  - target: "[[concepts/scaling-limits|Scaling Limits]]"
    type: relates_to
---

# Model Price Compression

**Model price compression** describes the dramatic reduction in per-token pricing for capable large language models over a three-year period. Simon Willison documented that good model prices have crashed by a factor of approximately **500×** since 2022.

## The Price Timeline

Willison's price comparison anchored on GPT-3.5 DaVinci, which was "the best available model three years ago" at **$60 per million tokens**: ^[extracted]

| Model | Price (per 1M tokens) | Era |
|-------|----------------------|-----|
| GPT-3.5 DaVinci | ~$60 | 2022 |
| GPT-4.5 | ~$75 | Feb 2025 |
| GPT-4o Nano | ~$0.10 | 2025 |
| Amazon Nova Micro | dirt cheap | Dec 2024 |

The key observation: GPT-4.5 at $75 was only ~25% more expensive than GPT-3.5 DaVinci at $60, despite being a significantly newer and more capable model. ^[extracted]

Meanwhile, the cheapest capable models (GPT-4o Nano at ~$0.10, Amazon Nova Micro at "dirt cheap" prices) represent a **500×+ price compression** from the best-available price three years ago.

## Why It Matters

The price compression has transformative implications: ^[inferred]

1. **AI becomes a commodity** — At $0.10/M tokens, API calls become negligible in application budgets
2. **Open-weight pressure** — Free models (Llama, Mistral, DeepSeek) force proprietary providers to lower prices
3. **Different pricing tiers** — Reasoning models (O1 Pro at ~$150/M) remain expensive, creating a two-tier market
4. **Business model disruption** — Apps built on expensive models face margin pressure as capabilities commoditize
5. **Experimentation becomes free** — Developers can prototype and iterate without worrying about API costs

## The Exception: Reasoning Models

Model price compression does NOT apply uniformly. Reasoning models remain at extreme premiums: ^[extracted]

- GPT-4.5: $75/M input tokens (750× GPT-4o Nano)
- O1 Pro: ~$150/M input tokens (1500× GPT-4o Nano)
- These prices are disconnected from practical adoption — Willison noted he "don't know anyone who is using O1 Pro via the API very often"

This suggests a market bifurcation: cheap, capable models for most tasks, and extremely expensive reasoning models for specialized high-value work.

## Related

- [[concepts/training-cost-efficiency|Training Cost Efficiency]] — cheaper training enables cheaper inference
- [[concepts/reasoning-model-pricing|Reasoning Model Pricing]] — the exception to price compression
- [[concepts/scaling-limits|Scaling Limits]] — once scaling hits diminishing returns, price competition intensifies
- [[concepts/local-models|Local Models]] — local inference eliminates per-token pricing entirely

## Sources

- AIEF2025 - 2025 in LLMs so far, illustrated by Pelicans on Bicycles — Simon Willison - https://www.youtube.com/watch?v=YpY83-kA7Bo
