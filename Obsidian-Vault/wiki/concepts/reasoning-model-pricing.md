---
title: "Reasoning Model Pricing"
category: concepts
tags:
  - pricing
  - reasoning
  - cost
  - llm
  - aief2025
aliases:
  - reasoning model cost
  - reasoning model pricing
  - expensive reasoning
sources:
  - "AIEF2025 - 2025 in LLMs so far, illustrated by Pelicans on Bicycles — Simon Willison - https://www.youtube.com/watch?v=YpY83-kA7Bo"
summary: "The trend of reasoning models (Claude 3.7 Sonnet, O1 Pro) being priced at extreme premiums relative to standard models, with O1 Pro at ~$150/1M input tokens — twice GPT-4.5's $75 rate — raising questions about cost-effectiveness."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/reasoning-models|Reasoning Models]]"
    type: relates_to
  - target: "[[concepts/model-price-compression|Model Price Compression]]"
    type: contrasts_with
---

# Reasoning Model Pricing

**Reasoning model pricing** refers to the premium pricing strategy employed by model providers for their reasoning-capable models (Claude 3.7 Sonnet, O1, O1 Pro). While standard model prices have compressed dramatically, reasoning models carry extreme per-token premiums that raise questions about their cost-effectiveness for most use cases.

## GPT-4.5: The Expensive Lemon

OpenAI's GPT-4.5 (released February 2025) was described by Simon Willison as "a bit of a lemon." Key facts: ^[extracted]

- **$75 per million input tokens** — extremely expensive
- **750× more expensive than GPT-4o Nano** — but not 750× better
- **Depreciated six weeks after release** — "not long for this world"
- **Demonstrated a scaling limit** — showed that "you can throw a ton of money and training power at these things, but there's a limit to how far we're scaling with just throwing more compute at the problem"

Willison compared GPT-4.5's $75 rate to GPT-3.5 DaVinci's $60 rate from three years ago: ^[extracted]

> "If you compare it to GPT 3 DaVinci, the best available model three years ago, that one was $60. It was about the same price. And that kind of illustrates how far we've come. The prices of these good models have absolutely crashed by a factor of like 500 times plus."

This comparison showed that while the *best* models have stayed relatively stable in price, the *cheapest capable* models have crashed in price.

## O1 Pro: Even More Expensive

OpenAI's O1 Pro (March 2025) was described as "twice as expensive as GPT-4.5 again" — approximately $150 per million input tokens. ^[extracted]

Willison's personal benchmark cost for O1 Pro's pelican-on-bicycle SVG was 88 cents — illustrating how expensive the informal benchmark itself had become at this pricing tier. He noted: ^[extracted]

> "Yeah, that pelican cost me 88 cents. Like, these benchmarks are getting expensive at this point."

He also observed that he "don't know anyone who is using O1 Pro via the API very often" — suggesting the pricing was disconnected from practical utility.

## Claude 3.7 Sonnet: First Reasoning Model from Anthropic

Claude 3.7 Sonnet was Anthropic's first reasoning model. Willison noted its pelican-on-bicycle output creatively responded to the impossibility of the task by putting "a bicycle on top of a bicycle" — describing it as "great model" and noting the pelican SVG "kind of works." ^[extracted]

## Pricing Tension

The pricing landscape reveals a tension: ^[inferred]

- **Standard models** have become extremely cheap (factor of 500× compression)
- **Reasoning models** carry extreme premiums (750×–1500× standard model rates)
- **Quality does not scale linearly with price** — GPT-4.5 was "750× more expensive" but not proportionally better
- **Practical adoption lags pricing** — O1 Pro described as rarely used via API despite its capabilities

This suggests a market where reasoning capabilities command premium prices, but the cost-benefit ratio for most users remains questionable.

## Related

- [[concepts/reasoning-models|Reasoning Models]] — the capability class these models belong to
- [[entities/openai|OpenAI]] — GPT-4.5 and O1 Pro as case studies
- [[entities/anthropic|Anthropic]] — Claude 3.7 Sonnet as their first reasoning model
- [[concepts/model-price-compression|Model Price Compression]] — the broader pricing trend

## Sources

- AIEF2025 - 2025 in LLMs so far, illustrated by Pelicans on Bicycles — Simon Willison - https://www.youtube.com/watch?v=YpY83-kA7Bo
