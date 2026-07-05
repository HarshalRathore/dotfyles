---
title: "2025 in LLMs so far, illustrated by Pelicans on Bicycles — Simon Willison"
category: references
tags:
  - aief2025
  - llm-releases
  - benchmark
  - local-models
  - open-weight
  - training-cost
  - pricing
  - simon-willison
summary: "Simon Willison's AIEF2025 talk reviewing ~30 significant LLM releases from December 2024 to March 2025, using his informal SVG pelican-on-bicycle benchmark to evaluate text model code-output capabilities."
provenance:
  extracted: 0.95
  inferred: 0.04
  ambiguous: 0.01
base_confidence: 0.90
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/simon-willison|Simon Willison]]"
    type: related_to
  - target: "[[concepts/pelican-bicycle-benchmark|Pelican-on-Bicycle Benchmark]]"
    type: introduces
---

# 2025 in LLMs so far, illustrated by Pelicans on Bicycles

**Speaker:** Simon Willison
**Event:** AI Engineer World's Fair 2025 (AIEF2025)
**Video:** https://www.youtube.com/watch?v=YpY83-kA7Bo

## Summary

Simon Willison presented a chronological survey of approximately 30 significant LLM releases from December 2024 through March 2025. Rather than relying on traditional benchmarks and leaderboards (which he expressed growing distrust of), he used his informal SVG pelican-on-bicycle benchmark to evaluate text model code-output capabilities across the period.

## December 2024

### Amazon Nova
- Amazon's first competitive model family
- 1 million token context windows
- Behave like cheaper Gemini models
- Extremely low pricing — Nova Micro is the cheapest model Willison tracks
- Pelican SVG: "unimpressive"

### Llama 3.3 70B
- Meta's 70-billion-parameter model
- Same capabilities as Meta's 405B model (GPT-4 class)
- Ran on Willison's three-year-old laptop with 64GB RAM
- "The moment" when GPT-4 class became runnable on consumer hardware
- Pelican SVG: "unimpressive"

### DeepSeek V3 (Christmas Day)
- Released by dumping weights on Hugging Face with no README or documentation
- 685-billion-parameter model
- Best available open-weight model at the time
- Openly licensed and freely available
- Training cost: ~$5.5 million (expected $55M–$550M)
- Pelican SVG: "amazing" for the benchmark

## January 2025

### DeepSeek R1
- DeepSeek's first major reasoning model release
- Open-weight, freely available
- Benchmarking near OpenAI's O1 on some tasks
- Caused massive NVIDIA stock drop (potentially world record for single-day decline)
- Demonstrated Chinese labs had figured out training tricks despite GPU restrictions
- Pelican SVG: has the components (bicycle, probably a pelican, not riding it)

### Mistral Small 3
- 24-billion-parameter model from France
- ~20GB RAM — fits alongside VS Code and Firefox
- Claimed to behave the same as Llama 3.3 70B
- Represents efficiency chain: 405B → 70B → 24B maintaining quality
- Willison used it for half a flight before battery drained

## February 2025

### Claude 3.7 Sonnet
- Anthropic's first reasoning model
- Creative SVG response: put a bicycle on top of a bicycle (since pelicans can't ride bicycles)
- "Kind of works"

### GPT-4.5
- Described as "a bit of a lemon"
- $75 per million input tokens
- 750× more expensive than GPT-4o Nano but not 750× better
- Deprecated six weeks after release
- Demonstrated scaling limits: "you can throw a ton of money and training power at these things, but there's a limit to how far we're scaling with just throwing more compute"
- Price comparison: GPT-3.5 DaVinci (3 years ago) was $60 — good models have crashed ~500× in price

### O1 Pro
- Twice as expensive as GPT-4.5 (~$150/1M input tokens)
- "Super expensive" — Willison's pelican SVG cost 88 cents
- "Don't know anyone who is using O1 Pro via the API very often"

## March 2025

### Gemini 2.5 Pro
- Google's model
- "Pretty frickin' good pelican" — bicycle went "cyberpunk" but progress
- Cost: ~4.5 cents for the pelican SVG

### GPT-4o Multimodal Image Generation
- OpenAI's GPT-4.0 native multimodal image generation
- Promised for a year before launch
- 100 million new user accounts signed up in a week
- Had an hour where 1 million accounts were signed up
- Notable "memory" feature that added unrequested elements (e.g., "Half Moon Bay" sign in background of a dog photo)

- Willison's demo: uploaded a photo of his dog Cleo, asked for a pelican costume, and the model added an unrequested "Half Moon Bay" sign in the background — his first encounter with the model's "memory" feature

## Key Themes

1. **Local models are good now** — 8 months ago laptop models were "rubbish," now practical for real work
2. **Training costs are far lower than assumed** — DeepSeek V3 at $5.5M for 685B parameters
3. **Model prices have crashed ~500×** — but reasoning models remain extremely expensive
4. **GPU restrictions didn't work** — Chinese labs found workarounds
5. **Scaling has limits** — GPT-4.5 showed throwing more compute has diminishing returns
6. **Open-weight models are competitive** — DeepSeek V3 and Llama 3.3 70B challenged proprietary models

## Sources

- AIEF2025 - 2025 in LLMs so far, illustrated by Pelicans on Bicycles — Simon Willison - https://www.youtube.com/watch?v=YpY83-kA7Bo
