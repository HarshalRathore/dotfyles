---
title: Orpheus TTS
category: entities
tags:
- tts
- text-to-speech
- voice-ai
- open-source
- llama
- canopy-labs
aliases:
- Orpheus
- Orpheus TTS
summary: Open-source TTS model by Canopy Labs built on a LLaMA 3.2 3B backbone with causal LM architecture, larger vocabulary for speech tokens, and extended context via RoPE scaling. Pre-trained on ~100k h...
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[entities/canopy-labs]]'
  type: implements
- target: '[[concepts/llama-transformer-family]]'
  type: derived_from
- target: '[[concepts/voice-inference-metrics]]'
  type: uses
sources: []
---

# Orpheus TTS

Orpheus TTS is an open-source text-to-speech model developed by [[entities/canopy-labs|Canopy Labs]] (Elias, Amu, and team). It is cited as one of Philip Kiely's favorite voice models and serves as the primary case study in his AIEF2025 talk on optimizing inference for voice models. ^[extracted]

## Architecture

Orpheus is built on a **LLaMA 3.2 3B backbone** with a causal language model architecture. This makes it architecturally similar to LLMs — in many cases derived directly from them — enabling the use of standard LLM optimization tooling (TensorRT-LLM, quantization, etc.) for TTS inference. ^[extracted]

Key modifications from the base LLaMA architecture:
- **Larger vocabulary** — includes speech-specific tokens (e.g., laugh, emotional markers) beyond standard text tokens
- **Extended context length** — achieved via RoPE (Rotary Positional Encoding) scaling to handle longer speech generation sequences ^[extracted]

## Why It Matters

Orpheus demonstrates that TTS models can benefit from the same optimization ecosystem as LLMs. Because it uses a LLaMA-based causal LM architecture, techniques like TensorRT-LLM inference, FP8 quantization on Hopper GPUs, and dynamic batching all apply directly. ^[extracted]

## Performance Profile

Orpheus requires approximately **83 tokens per second** for real-time streaming. For a 3B parameter model, this is modest — the optimization goal is not maximizing TPS but achieving sufficient TPS while minimizing time-to-first-byte and maximizing concurrency (fitting many simultaneous voice streams on a single GPU). ^[extracted]

## Consumer Deployment: Gabber

[[entities/gabber|Gabber]] (Neil Dwyer, CTO) self-hosts Orpheus on NVIDIA L40s GPUs for consumer voice AI, achieving ~$1/hr per voice stream vs. $5+/hr for proprietary platforms. ^[extracted] Key deployment details:

- **Hardware:** NVIDIA L40s (~100 tokens/sec per GPU)
- **Voice cloning:** Uses LoRA fine-tuning (rank 16, alpha 32, all projections) with ~30 minutes of source audio
- **Head of line silence:** Some Orpheus fine-tunes (notably "Tara") have ~600ms of baked-in silence at audio start, adding ~0.5s latency. This can be eliminated by LoRA fine-tuning. ^[extracted]
- **Use cases:** AI companions, therapists, trainers, MPCs, toys — consumer apps needing near-free voice infrastructure

## Related
- [[entities/canopy-labs]] — Creator company
- [[entities/neil-dwyer]] — CTO of Gabber, self-hosts Orpheus on L40s
- [[entities/gabber]] — Consumer voice AI startup using Orpheus + LoRA
- [[entities/snack]] — Audio codec whose tokens Orpheus outputs
- [[concepts/llama-transformer-family]] — Base architecture family
- [[concepts/voice-inference-metrics]] — Performance measurement approach
- [[concepts/head-of-line-silence]] — Latency artifact in some Orpheus fine-tunes
- [[references/aief2025-optimizing-inference-voice-models-philip-kiely-baseten]] — AIEF2025 talk using Orpheus as case study
- [[references/aief2025-serving-voice-ai-at-1-hr-neil-dwyer-gabber]] — AIEF2025 talk on self-hosting Orpheus at $1/hr

## Sources

- AIEF2025 - Serving Voice AI at $1/hr: Open-source, LoRAs, Latency, Load Balancing - https://www.youtube.com/watch?v=rD23-VZZHOo
## Related
- [[entities/canopy-labs]] — Creator company
- [[entities/neil-dwyer]] — CTO of Gabber, self-hosts Orpheus on L40s
- [[entities/gabber]] — Consumer voice AI startup using Orpheus + LoRA
- [[entities/snack]] — Audio codec whose tokens Orpheus outputs
- [[concepts/llama-transformer-family]] — Base architecture family
- [[concepts/voice-inference-metrics]] — Performance measurement approach
- [[concepts/head-of-line-silence]] — Latency artifact in some Orpheus fine-tunes
- [[references/aief2025-optimizing-inference-voice-models-philip-kiely-baseten]] — AIEF2025 talk using Orpheus as case study
- [[references/aief2025-serving-voice-ai-at-1-hr-neil-dwyer-gabber]] — AIEF2025 talk on self-hosting Orpheus at $1/hr
