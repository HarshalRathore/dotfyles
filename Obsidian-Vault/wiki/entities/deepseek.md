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
  - DeepSeek-AI
sources:
  - "AIEF2025 - 2025 in LLMs so far, illustrated by Pelicans on Bicycles — Simon Willison - https://www.youtube.com/watch?v=YpY83-kA7Bo"
  - "https://github.com/cordiverse/paper"
  - "https://raw.githubusercontent.com/cordiverse/paper/main/paper.pdf"
summary: "Chinese AI lab behind DeepSeek V3 and R1 open-weight models that challenged assumptions about GPU restrictions and training costs; also the affiliation of Cordis paper co-authors."
provenance:
  extracted: 0.82
  inferred: 0.15
  ambiguous: 0.03
base_confidence: 0.83
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-08-15
relationships:
  - target: "[[concepts/open-weight-models|Open Weight Models]]"
    type: demonstrates
  - target: "[[concepts/reasoning-models|Reasoning Models]]"
    type: produces
  - target: "[[entities/nvidia|NVIDIA]]"
    type: contradicts
  - target: "[[entities/tianyi-cui|Tianyi Cui]]"
    type: related_to
  - target: "[[entities/yifan-shi|Yifan Shi]]"
    type: related_to
  - target: "[[references/cordis-spatiotemporal-composability|Cordis Paper]]"
    type: related_to
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


## DeepSeek-AI and the Cordis Paper (2026)

The paper *A Programming Paradigm for Spatiotemporal Composability* ([[references/cordis-spatiotemporal-composability|Cordis paper]], draft 2026-08-13) lists **DeepSeek-AI** as its affiliation 2 — the host institution of co-author [[entities/tianyi-cui|Tianyi Cui]], with [[entities/yifan-shi|Yifan Shi]] carrying a dual Peking University / DeepSeek-AI affiliation. ^[extracted]

The paper is a programming-systems contribution rather than a model-training one: it formalizes dynamic composition for plugin systems and [[concepts/self-evolving-agent-harnesses|self-evolving agent harnesses]]. Its relevance to DeepSeek's arc in this wiki is the research-direction signal — a DeepSeek-affiliated author contributing to the formal foundations of agent-harness self-evolution, the same space as [[entities/hermes-agent|Hermes]]-style harnesses in the vault. ^[inferred]


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
- https://github.com/cordiverse/paper — Cordis paper repository (DeepSeek-AI affiliation)
