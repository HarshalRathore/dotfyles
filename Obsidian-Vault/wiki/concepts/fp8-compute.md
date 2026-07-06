---
title: FP8 Compute on Hopper
category: concepts
tags:
- fp8
- hopper
- nvidia
- quantization
- gpu
- tensorrt-llm
aliases:
- FP8
- FP8 floating point
- Hopper FP8
summary: NVIDIA Hopper architecture's native FP8 (8-bit floating point) compute support, enabling faster matrix operations and reduced memory usage for LLM inference. Requires H100/H200 GPUs.
provenance:
  extracted: 0.75
  inferred: 0.15
  ambiguous: 0.1
base_confidence: 0.7
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[entities/nvidia]]'
  type: implements
- target: '[[concepts/quantization-inference]]'
  type: enables
- target: '[[concepts/fp8-kv-cache]]'
  type: enables
sources: []
---

# FP8 Compute on Hopper

**FP8 (8-bit floating point) compute** is a native capability of NVIDIA's Hopper architecture (H100, H200) GPUs, providing dedicated hardware for FP8 matrix operations via the Tensor Engine. This enables significantly faster inference with reduced memory usage compared to FP16/BF16. ^[extracted]

## The Tensor Engine

Hopper's Tensor Engine is a dedicated unit for FP8 matrix multiply-accumulate (MMA) operations. Unlike previous architectures where FP8 had to be emulated (and was therefore slower), Hopper executes FP8 natively at full tensor core speed. ^[inferred]

## Applications in Inference

FP8 is used in two main ways for LLM inference:
1. **Model weights** — quantizing the model weights from FP16 to FP8
2. **KV cache** — quantizing the attention key-value cache from FP16 to FP8 ^[extracted]

Both reduce memory usage by approximately 50%, enabling higher batch sizes and more concurrent sequences.

## Effectiveness on Small Models

Typically, quantizing small models (3B parameters) to FP8 causes noticeable quality degradation. However, for models like [[entities/orpheus-tts|Orpheus TTS]], FP8 quantization — including KV cache — works "pretty well" despite the small model size. This is an important finding for production TTS deployment. ^[extracted]

## TensorRT-LLM Integration

TensorRT-LLM provides the engine settings for FP8 on Hopper:
- `FP8_KV` — KV cache quantization
- `FP8_context` — FP8 for context operations
- `FMHA` — Flash Multi-Head Attention optimized for FP8 ^[extracted]

## Related
- [[entities/nvidia]] — Hopper architecture provider
- [[concepts/quantization-inference]] — General inference quantization
- [[concepts/fp8-kv-cache]] — KV cache quantization specifically
- [[entities/tensorrt-llm]] — Inference engine supporting FP8
- [[entities/orpheus-tts]] — Case study with FP8 on small model
