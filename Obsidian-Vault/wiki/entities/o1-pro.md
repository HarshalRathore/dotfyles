---
title: "O1 Pro"
category: entities
tags:
  - openai
  - o1
  - reasoning
  - model
  - expensive
  - aief2025
aliases:
  - O1 Pro
  - OpenAI O1 Pro
sources:
  - "AIEF2025 - 2025 in LLMs so far, illustrated by Pelicans on Bicycles — Simon Willison - https://www.youtube.com/watch?v=YpY83-kA7Bo"
summary: "OpenAI's extremely expensive reasoning model released March 2025 at ~$150/M input tokens. Simon Willison noted he doesn't know anyone using it via the API, and his pelican SVG benchmark cost 88 cents."
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
  - target: "[[concepts/reasoning-models|Reasoning Models]]"
    type: exemplifies
  - target: "[[concepts/reasoning-model-pricing|Reasoning Model Pricing]]"
    type: exemplifies
---

# O1 Pro

**O1 Pro** is OpenAI's premium reasoning model released in March 2025. It is described as "twice as expensive as GPT-4.5" — approximately **$150 per million input tokens** — and is noted for being extremely costly with limited practical adoption.

## Pricing

O1 Pro's pricing is extreme even by reasoning model standards: ^[extracted]

- **~$150 per million input tokens** (twice GPT-4.5's $75 rate)
- Willison's pelican-on-bicycle SVG benchmark cost **88 cents** for O1 Pro
- "These benchmarks are getting expensive at this point" — Willison

## Adoption

Despite its capabilities, O1 Pro has limited practical adoption: ^[extracted]

> "Yeah, I don't know anyone who is using O1 Pro via the API very often."

This disconnect between capability and adoption suggests the pricing is disconnected from the model's practical value proposition for most users.

## Pelican Benchmark Result

Willison described O1 Pro's pelican-on-bicycle SVG output as "a bit of a crap pelican" — a below-average result for the benchmark, further undermining the model's value proposition given its extreme cost. ^[extracted]

## Significance

O1 Pro represents the upper end of the reasoning model pricing spectrum: ^[inferred]

1. **Premium pricing experiment** — OpenAI is testing whether extreme pricing can be sustained for extreme reasoning capability
2. **Market signal** — Low adoption suggests the market rejects this pricing tier
3. **Benchmark cost inflation** — Even informal benchmarks become expensive at this pricing level
4. **Contrast with open models** — DeepSeek R1, Claude 3.7 Sonnet, and Llama 3.3 70B deliver comparable or better results at a fraction of the cost

## Related

- [[entities/openai|OpenAI]] — creator of O1 Pro
- [[concepts/reasoning-models|Reasoning Models]] — the capability class
- [[concepts/reasoning-model-pricing|Reasoning Model Pricing]] — pricing context
- [[concepts/pelican-bicycle-benchmark|Pelican-on-Bicycle Benchmark]] — tested on this benchmark
- [[entities/gpt-4-5|GPT-4.5]] — cheaper reasoning model released the previous month

## Sources

- AIEF2025 - 2025 in LLMs so far, illustrated by Pelicans on Bicycles — Simon Willison - https://www.youtube.com/watch?v=YpY83-kA7Bo
