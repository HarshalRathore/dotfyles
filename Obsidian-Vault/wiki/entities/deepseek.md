---
title: "DeepSeek"
category: entities
tags:
  - company
  - ai
  - llm
  - open-source
  - chinese
  - reasoning
  - aief2025
aliases:
  - DeepSeek
  - deep seek
sources:
  - "AIEF2025 - 2025 in LLMs so far, illustrated by Pelicans on Bicycles — Simon Willison - https://www.youtube.com/watch?v=YpY83-kA7Bo"
summary: "Chinese AI lab that released DeepSeek V3 (Christmas Day 2024) and DeepSeek R1 (January 2025), both open-weight models that challenged Western assumptions about GPU restrictions and training costs."
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/open-weight-models|Open Weight Models]]"
    type: demonstrates
  - target: "[[concepts/reasoning-models|Reasoning Models]]"
    type: produces
  - target: "[[entities/nvidia|NVIDIA]]"
    type: contradicts
---

# DeepSeek

**DeepSeek** is a Chinese AI laboratory that became one of the most consequential players in the 2024–2025 LLM landscape. Known for releasing models with minimal fanfare and dramatically lower training costs than expected, DeepSeek challenged prevailing assumptions about what's possible with compute restrictions and training budgets.

## DeepSeek V3 (December 2024)

On Christmas Day 2024, DeepSeek released V3 by literally dumping model weights as a binary file on Hugging Face — with no README, no documentation. It was a 685-billion-parameter model that quickly emerged as the best available open-weight model, freely available and openly licensed. ^[extracted]

The paper accompanying V3 stated training cost was approximately **$5.5 million** — Simon Willison noted this was notable because a model of this size would normally be expected to cost 10–100× more. This suggested that very effective models could be trained for far less money than the industry assumed. ^[extracted]

## DeepSeek R1 (January 2025)

On January 27, 2025, DeepSeek released R1, their first major reasoning model. Key facts:

- Open-weight and freely available
- Benchmarking near OpenAI's O1 on some tasks
- Triggered a massive NVIDIA stock drop (described as potentially the world record for most a company has dropped in a single day)
- Demonstrated that Chinese labs had figured out training tricks and efficiencies despite US trading restrictions on the best GPUs

R1's pelican-on-bicycle SVG was described by Willison as having "the components that we're looking for" — a bicycle, probably a pelican, not riding the bicycle, but progress nonetheless. ^[extracted]

## Strategic Significance

DeepSeek's releases were significant because: ^[inferred]

1. **GPU restrictions didn't work as expected** — Chinese labs found workarounds for hardware limitations
2. **Training costs were far lower than assumed** — $5.5M for a 685B model upended cost expectations
3. **Open-weight + reasoning was possible** — R1 benchmarked near O1 while being freely available
4. **Market impact was immediate** — NVIDIA's stock reaction showed the financial markets took the threat seriously

## AIEF2025: Open Weights Intelligence at Narrowest Ever

At AIEF2025, George Cameron of Artificial Analysis presented data showing the open-weight intelligence gap is at its narrowest ever: ^[extracted]

- DeepSeek R1 (January 2025) is only a couple of points behind leading proprietary models on the Artificial Analysis Intelligence Index
- DeepSeek leads **both** reasoning and non-reasoning open-weight model categories
- Alibaba's Qwen 3 series leads non-reasoning open-weight, coming in second in reasoning open-weight

This represents a dramatic shift from the GPT-4 era when open-weight models (Llama-65B, Llama-2-70B) were not close to proprietary intelligence. The trajectory: closed with Mixtral MoE 7×2 and Llama-405B, widened with O1 (late 2024), then closed again with DeepSeek V3 and R1. ^[extracted]


## Huawei Ascend Chip Usage

- AIEF2025 - Trends Across the AI Frontier — George Cameron, ArtificialAnalysis.ai - https://www.youtube.com/watch?v=sRpqPgKeXNk
- AIEF2025 - The Geopolitics of AI Infrastructure - Dylan Patel, SemiAnalysis - https://www.youtube.com/watch?v=Zz4QjZsYWK0

- [[entities/nvidia|NVIDIA]] — stock drop following R1 release
- [[concepts/reasoning-models|Reasoning Models]] — R1 as a major reasoning model
- [[concepts/open-weight-models|Open Weight Models]] — both V3 and R1 were open-weight
- [[entities/huggingface|Hugging Face]] — platform used for V3's unexpected release

## Sources

- AIEF2025 - 2025 in LLMs so far, illustrated by Pelicans on Bicycles — Simon Willison - https://www.youtube.com/watch?v=YpY83-kA7Bo
- AIEF2025 - The Geopolitics of AI Infrastructure - Dylan Patel, SemiAnalysis - https://www.youtube.com/watch?v=Zz4QjZsYWK0
