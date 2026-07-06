---
title: Fine-Tuning Practices in 2025
category: concepts
tags:
- fine-tuning
- lora
- qlora
- dpo
- sft
- parameter-efficient
summary: 'The 2025 landscape of model fine-tuning: LoRA/QLoRA dominates parameter-efficient methods, DPO and reinforcement fine-tuning are emerging, and supervised fine-tuning remains the most popular core a...'
sources:
- AIEF2025 - The 2025 AI Engineering Report — Barr Yaron, Amplify - https://www.youtube.com/watch?v=mQ7_Zje7WKE
- 'AIEF2025 - Serving Voice AI at $1/hr: Open-source, LoRAs, Latency, Load Balancing - Neil Dwyer, Gabber - https://www.youtube.com/watch?v=rD23-VZZHOo'
provenance:
  extracted: 0.9
  inferred: 0.1
  ambiguous: 0.0
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[concepts/rag-pipeline-architecture|RAG Pipeline Architecture]]'
  type: related_to
- target: '[[concepts/llm-evaluation-framework|LLM Evaluation Framework]]'
  type: related_to
---

# Fine-Tuning Practices in 2025

The 2025 State of AI Engineering Survey revealed that **fine-tuning is more prevalent than many expected**, with a diverse toolkit of techniques among teams that fine-tune models.

## Fine-Tuning Techniques

- **LoRA / QLoRA** — 40% of fine-tuners mention these parameter-efficient methods, reflecting strong preference for approaches that minimize compute cost while preserving model quality
- **Supervised Fine-Tuning (SFT)** — The most popular core training approach, remaining the workhorse for custom model development
- **DPO (Direct Preference Optimization)** — Growing adoption as a preference alignment technique
- **Reinforcement Fine-Tuning** — Emerging approach combining RL principles with fine-tuning
- **Hybrid approaches** — Frequently mentioned, combining multiple techniques
- **Voice cloning via LoRA** — Gabber (Neil Dwyer, CTO) uses LoRA fine-tuning (rank 16, alpha 32, all projections) for high-fidelity voice cloning on Orpheus TTS, requiring ~30 minutes of source audio. Fine-tuning also eliminates structural artifacts like head-of-line silence (~600ms baked into some Orpheus fine-tunes). ^[inferred]

## Who Fine-Tunes

- **Researchers and research engineers** do fine-tuning by far the most
- The practice extends beyond dedicated ML teams, suggesting democratization of fine-tuning capabilities

## Fine-Tuning vs. RAG

Fine-tuning and RAG represent two distinct customization strategies:
- **RAG** at 70% remains the most popular customization method overall
- **Fine-tuning** complements RAG rather than replacing it, with many teams using both approaches

## Sources

- AIEF2025 - The 2025 AI Engineering Report — Barr Yaron, Amplify - https://www.youtube.com/watch?v=mQ7_Zje7WKE
