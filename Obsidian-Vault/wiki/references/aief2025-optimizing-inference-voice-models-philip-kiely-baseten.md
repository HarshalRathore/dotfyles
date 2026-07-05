---
title: "AIEF2025 - Optimizing Inference for Voice Models in Production"
tags:
  - talk
  - aief2025
  - voice-ai
  - inference
  - optimization
  - tensorrt-llm
  - quantization
  - tts
summary: Philip Kiely of Baseten covers runtime optimization techniques for TTS models (Orpheus TTS) including TensorRT-LLM, FP8 quantization on Hopper architecture, dynamic batching, and GPU audio decoding to achieve 24+ concurrent streams on half an H100 MIG.
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.80
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/voice-inference-metrics]]"
    type: uses
  - target: "[[concepts/dynamic-batching]]"
    type: uses
  - target: "[[concepts/gpu-mig]]"
    type: uses
  - target: "[[entities/baseten]]"
    type: related_to
  - target: "[[entities/canopy-labs]]"
    type: related_to
---

# AIEF2025 - Optimizing Inference for Voice Models in Production

**Speaker:** Philip Kiely, Developer Advocate at [[entities/baseten|Baseten]]
**Event:** AI Engineer World's Fair 2025
**Video:** https://www.youtube.com/watch?v=gmTHs5T_YAE

## Summary

Philip Kiely presents a comprehensive walkthrough of optimizing inference runtime for text-to-speech models in production, using [[entities/canopy-labs|Canopy Labs]]'s [[concepts/orpheus-tts|Orpheus TTS]] as the primary case study. The talk covers the full stack from model architecture through infrastructure decisions, demonstrating how to fit multiple concurrent voice streams on a single GPU using TensorRT-LLM, FP8 quantization, and dynamic batching.

## Key Topics

### TTS Model Architecture as LLM Adjacent
TTS models like Orpheus TTS are architecturally similar to LLMs — often derived directly from them. Orpheus uses a LLaMA 3.2 3B backbone with a causal LM architecture, meaning all standard LLM optimization techniques apply. Key modifications include larger vocabulary (speech-specific tokens like laugh) and extended context length via RoPE scaling. ^[extracted]

### Performance Metrics for Voice
Voice models use different success metrics than text LLMs:
- **Time to first byte/sentence** (not just first token) — need more useful output before latency feels acceptable
- **Tokens per second** — but only as high as needed for real-time streaming (~83 TPS for Orpheus)
- **Concurrency** — the primary optimization target: how many simultaneous streams fit on one GPU ^[extracted]

### Optimization Techniques
1. **TensorRT-LLM** over vLLM for better performance on Hopper architecture
2. **FP8 quantization** — successfully quantizes the 3B model and its KV cache on Hopper GPUs despite typical accuracy concerns with small models ^[extracted]
3. **Dynamic batching** — packs tokens into batches and flushes every 15ms, trading latency for throughput ^[extracted]
4. **Torch compile for audio decoding** — applies the same compilation system used for model weights to the audio decoder (Snac), running it on GPU via PyTorch inference mode ^[extracted]
5. **Multiple streaming protocols** supported

### Infrastructure: MIG for Cost Efficiency
The demo runs on an H100 MIG (Multi-Instance GPU) — specifically half an H100 — chosen because small 3B models benefit from Hopper's FP8 and TensorRT-LLM support without needing a full 80GB GPU. ^[extracted] Results: 16 concurrent streams under variable traffic, 24 under constant traffic. Time to first byte drops to ~150ms. ^[extracted]

### CPU-Bound Discovery
Profiling revealed the TTS pipeline is often CPU-bound rather than GPU-bound — both the next-token prediction loop and the audio decoding loop hit the CPU at different points. This means CPU count, not GPU count, can be the bottleneck for simultaneous streams. ^[extracted]

## Related Pages
- [[entities/philip-kiely]] — Speaker
- [[entities/baseten]] — Speaker's company
- [[entities/canopy-labs]] — Creators of Orpheus TTS
- [[concepts/orpheus-tts]] — The TTS model used as example
- [[concepts/voice-inference-metrics]] — Voice-specific performance metrics
- [[concepts/dynamic-batching]] — Batching strategy for TTS
- [[concepts/gpu-mig]] — MIG for cost-efficient GPU usage
- [[concepts/quantization-inference]] — FP8 quantization techniques
- [[concepts/llama-transformer-family]] — LLaMA backbone for TTS
- [[concepts/audio-decoding-pipeline]] — Snac decoder and GPU audio decoding
