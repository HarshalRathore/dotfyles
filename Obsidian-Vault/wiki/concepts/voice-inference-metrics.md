---
title: Voice Inference Metrics
category: concepts
tags:
- voice-ai
- inference
- latency
- throughput
- tokens-per-second
- voice-inference-metrics
summary: 'Key metrics for measuring voice AI inference performance: tokens per second, time to first token, throughput requirements relative to audio codec bitrate, and latency budgets for real-time voice.'
provenance:
  extracted: 0.75
  inferred: 0.2
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[concepts/voice-ai-latency]]'
  type: related_to
- target: '[[entities/snack]]'
  type: related_to
- target: '[[entities/orpheus-tts]]'
  type: related_to
sources: []
---

# Voice Inference Metrics

Voice inference metrics measure how well a TTS model can generate speech in real-time. The key metrics are throughput (tokens/sec), time to first token, and the relationship between model output rate and audio codec bitrate.

## Tokens Per Second (TPS)

The primary throughput metric for voice models. The required TPS depends on the audio codec's token rate:

- **Orpheus + Snack:** ~85 snack tokens per second of audio; target 90-100 TPS for gap-free streaming
- **Below real-time threshold:** Audio gaps and degraded quality
- **Above real-time threshold:** Headroom for network jitter and processing overhead

## Time to First Token (TTFB)

The latency between receiving the prompt and generating the first audio token. This is critical for perceived responsiveness in real-time conversations. Head of line silence can add 600ms+ to TTFB for certain Orpheus fine-tunes.

## Throughput vs. Concurrency Tradeoff

For voice inference, the optimization goal is not maximizing TPS but achieving **sufficient TPS while maximizing concurrency** — fitting as many simultaneous voice streams as possible on a single GPU. A 3B parameter model like Orpheus only needs ~85 TPS (modest), so the bottleneck is fitting many concurrent streams.

## GPU Hardware Impact

Different GPUs provide different throughput profiles:
- **NVIDIA L40s:** ~100 tokens/sec for Orpheus (barely above real-time threshold)
- **NVIDIA H100:** Higher throughput, enabling more concurrent streams via MIG partitioning

## Sources

- AIEF2025 - Serving Voice AI at $1/hr: Open-source, LoRAs, Latency, Load Balancing - https://www.youtube.com/watch?v=rD23-VZZHOo
