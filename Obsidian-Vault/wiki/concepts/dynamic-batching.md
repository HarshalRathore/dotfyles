---
title: "Dynamic Batching for Voice Inference"
category: concepts
tags:
  - batching
  - voice-ai
  - inference
  - optimization
  - throughput
  - latency
  - tts
aliases:
  - dynamic batching
  - voice dynamic batching
summary: A batching strategy for TTS inference that packs tokens into variable-size batches and flushes on a timeout (e.g., 15ms), trading latency for throughput. Different from LLM continuous batching.
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/voice-inference-metrics]]"
    type: optimizes
  - target: "[[concepts/continuous-batching]]"
    type: contrasts_with
  - target: "[[concepts/audio-decoding-pipeline]]"
    type: used_in
---

# Dynamic Batching for Voice Inference

**Dynamic batching** is a batching strategy used in voice model inference that packs as many tokens as possible into a batch and flushes the batch on a timeout (e.g., every 15 milliseconds). It trades latency for throughput and is the primary batching method used in production TTS systems like Orpheus. ^[extracted]

## How It Works

Unlike LLM inference which typically uses **continuous batching** (managing a queue of requests and filling empty slots), dynamic batching for TTS:

1. Accumulates tokens from multiple requests into a single batch
2. Flushes the batch on a fixed timeout (e.g., 15ms) regardless of batch fullness
3. The timeout is configurable — larger batches = more throughput but more latency ^[extracted]

## Trade-offs

| Parameter | Larger Batch | Smaller Batch |
|---|---|---|
| Throughput | Higher | Lower |
| Latency | Higher | Lower |
| Concurrency | Higher (more efficient GPU use) | Lower |

The 15ms timeout used with Orpheus represents a balance — short enough to keep TTFB acceptable while long enough to pack meaningful batch sizes. ^[extracted]

## CPU-Bound Implications

Because dynamic batching adds CPU overhead (managing batch accumulation and timeout logic), it can shift the bottleneck from GPU to CPU. Profiling of Orpheus with dynamic batching revealed the pipeline is often **CPU-bound** — both the next-token prediction loop and the audio decoding loop hit the CPU at different points, making CPU count the limiting factor for simultaneous streams. ^[extracted]

## Limitations

Token-level continuous batching is not yet implemented in the Orpheus pipeline, but dynamic batching gets "pretty close" to optimal throughput for production use. ^[extracted]

## Related
- [[concepts/voice-inference-metrics]] — Metrics this technique optimizes
- [[concepts/continuous-batching]] — The LLM standard this contrasts with
- [[concepts/audio-decoding-pipeline]] — Where dynamic batching fits in the pipeline
- [[references/aief2025-optimizing-inference-voice-models-philip-kiely-baseten]] — AIEF2025 talk with code example
