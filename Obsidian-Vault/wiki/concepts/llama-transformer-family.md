---
title: LLaMA Transformer Family
category: concepts
tags:
- llama
- transformer
- meta
- causal-lm
- open-models
- tts
aliases:
- LLaMA
- LLaMA family
- LLaMA architecture
summary: Meta's LLaMA family of open-weight transformer models (LLaMA 3, 3.2) that serve as backbone architectures for various AI applications including TTS, embeddings, and other modalities.
provenance:
  extracted: 0.7
  inferred: 0.2
  ambiguous: 0.1
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[entities/meta]]'
  type: implements
- target: '[[entities/orpheus-tts]]'
  type: used_by
- target: '[[concepts/causal-language-model]]'
  type: implements
sources: []
---

# LLaMA Transformer Family

The **LLaMA (Large Language Model Meta AI)** family is Meta's series of open-weight transformer language models. LLaMA 3 and LLaMA 3.2 serve as backbone architectures for various AI applications beyond text generation, including [[entities/orpheus-tts|Orpheus TTS]]. ^[extracted]

## LLaMA 3.2 3B

The LLaMA 3.2 3B model is a 3-billion-parameter causal language model. It uses the standard transformer decoder architecture with:
- Causal (autoregressive) attention
- Rotary Positional Embeddings (RoPE)
- SwiGLU activation functions
- Grouped Query Attention (GQA) ^[inferred]

## TTS as LLM-Adjacent

Philip Kiely's observation at AIEF2025: "everything is an LLM" is wrong but useful. TTS models like Orpheus are "very LLM adjacent" — they share the same autoregressive transformer architecture, meaning LLM tooling (TensorRT-LLM, quantization, vLLM, SGLang) applies directly. ^[extracted]

Other LLM-adjacent applications include:
- Embedding models
- Speech recognition (Whisper)
- Text-to-speech (Orpheus TTS) ^[extracted]

These contrast with "diffuser image type models" which represent a fundamentally different optimization problem. ^[extracted]

## Modifications for TTS

When used as a TTS backbone, LLaMA is modified:
- **Larger vocabulary** — includes speech-specific tokens (laugh, pause, emotional markers)
- **Extended context length** — via RoPE scaling for longer speech sequences ^[extracted]

## Related
- [[entities/orpheus-tts]] — TTS model using LLaMA 3.2 3B backbone
- [[entities/meta]] — Creator of LLaMA
- [[concepts/causal-language-model]] — Architecture type
- [[concepts/voice-inference-metrics]] — How LLaMA-based TTS is measured
- [[references/aief2025-optimizing-inference-voice-models-philip-kiely-baseten]] — AIEF2025 talk
