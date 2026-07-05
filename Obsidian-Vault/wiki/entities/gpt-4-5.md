---
title: "GPT-4.5"
category: entities
tags:
  - openai
  - gpt
  - model
  - deprecated
  - aief2025
aliases:
  - GPT 4.5
  - GPT-4.5
sources:
  - "AIEF2025 - 2025 in LLMs so far, illustrated by Pelicans on Bicycles — Simon Willison - https://www.youtube.com/watch?v=YpY83-kA7Bo"
summary: "OpenAI's expensive reasoning model released February 2025 at $75/M input tokens. Described by Simon Willison as 'a lemon' and deprecated just six weeks after release, demonstrating scaling limits."
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/openai|OpenAI]]"
    type: produced_by
  - target: "[[concepts/scaling-limits|Scaling Limits]]"
    type: demonstrates
  - target: "[[concepts/model-price-compression|Model Price Compression]]"
    type: contrasts_with
---

# GPT-4.5

**GPT-4.5** was an OpenAI model released in February 2025 that was quickly deprecated. Simon Willison described it as "a bit of a lemon" — a model that consumed enormous resources but delivered disappointing results, making it one of the most instructive failures in recent AI history.

## Pricing

GPT-4.5 was **horrifyingly expensive**: ^[extracted]

- **$75 per million input tokens**
- **750× more expensive than GPT-4o Nano** — OpenAI's cheapest model
- Not 750× better — the quality-to-cost ratio was poor

Willison compared this to GPT-3.5 DaVinci from three years earlier, which cost $60 per million tokens: ^[extracted]

> "It is not 750 times better. And in fact, OpenAI, six weeks later, they said they were deprecating it. It was not long for this world, 4.5."

## Scaling Limits Demonstration

The most important lesson from GPT-4.5 was what it revealed about the limits of scaling: ^[extracted]

> "The interesting thing about GPT 4.5 is it kind of showed that you can throw a ton of money and training power at these things, but there's a limit to how far we're scaling with just throwing more compute at the problem, at least for training the models."

Despite enormous investment, GPT-4.5 did not deliver proportional quality improvements — suggesting that training-time compute scaling has a ceiling.

## Rapid Deprecation

GPT-4.5 was deprecated just **six weeks after release**, making it one of the shortest-lived major model releases in OpenAI's history. This rapid sunset signaled that even OpenAI recognized the model's poor cost-quality tradeoff. ^[extracted]

## Significance

GPT-4.5's legacy is as a cautionary tale: ^[inferred]

1. **Money doesn't guarantee quality** — Even OpenAI's vast resources couldn't produce a model worth keeping
2. **Scaling has diminishing returns** — The industry needed new approaches beyond raw compute
3. **Market discipline works** — The rapid deprecation shows OpenAI's willingness to cut losses
4. **Catalyst for reasoning models** — GPT-4.5's failure accelerated the shift toward reasoning-based approaches (O1, Claude 3.7 Sonnet, DeepSeek R1)

## Related

- [[entities/openai|OpenAI]] — creator of GPT-4.5
- [[concepts/scaling-limits|Scaling Limits]] — GPT-4.5 as the primary case study
- [[concepts/model-price-compression|Model Price Compression]] — GPT-4.5 as the exception to price compression
- [[concepts/reasoning-model-pricing|Reasoning Model Pricing]] — pricing context
- [[entities/gpt-4o|GPT-4o Multimodal Image Generation]] — released the same month

## Sources

- AIEF2025 - 2025 in LLMs so far, illustrated by Pelicans on Bicycles — Simon Willison - https://www.youtube.com/watch?v=YpY83-kA7Bo
