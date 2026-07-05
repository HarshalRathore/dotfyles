---
title: "FP8 KV Cache Quantization"
category: concepts
tags:
  - quantization
  - fp8
  - kv-cache
  - hopper
  - memory-optimization
  - tensorrt-llm
aliases:
  - FP8 KV cache
  - KV cache quantization FP8
summary: Quantizing the KV cache to FP8 precision on Hopper GPUs, reducing memory usage for attention state. Works well even on small models like Orpheus TTS (3B), enabling higher concurrency.
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/quantization-inference]]"
    type: extends
  - target: "[[concepts/fp8-compute]]"
    type: uses
  - target: "[[entities/nvidia]]"
    type: requires
---

# FP8 KV Cache Quantization

**FP8 KV cache quantization** is the technique of storing the key-value (KV) cache in attention layers at FP8 (8-bit floating point) precision instead of the default FP16 or BF16. This reduces the memory footprint of the KV cache, enabling more concurrent sequences on the same GPU. ^[extracted]

## How It Works

The KV cache stores attention keys and values for all previously generated tokens. For long generation sequences, the KV cache can consume a significant portion of GPU memory — often more than the model weights themselves. Quantizing it to FP8 cuts this memory usage roughly in half. ^[extracted]

## Hopper Architecture Requirement

FP8 quantization requires NVIDIA's Hopper architecture (H100, H200) which includes the Tensor Engine — a dedicated FP8 matrix multiply unit. Without Hopper hardware, FP8 operations run slower than FP16 on older architectures. ^[extracted]

## Effectiveness on Small Models

Typically, quantizing small models (3B parameters) leads to noticeable quality degradation. However, for [[entities/orpheus-tts|Orpheus TTS]], FP8 KV cache quantization works "pretty well" despite the model's small size. This is notable because it means even small models benefit from KV cache quantization. ^[extracted]

## Engine Settings

The relevant TensorRT-LLM settings for FP8 KV cache:
- `quantization_type: FP8_KV` — quantize KV cache to FP8
- `FP8_context` — FP8 for the KV cache context
- `FMHA` — Flash Multi-Head Attention optimized for FP8 ^[extracted]

## Impact on Concurrency

By reducing KV cache memory per stream, FP8 quantization directly increases the number of concurrent streams that fit on a single GPU or MIG instance. This is one of the key techniques enabling 24 concurrent streams of Orpheus on half an H100 MIG. ^[extracted]

## Related
- [[concepts/quantization-inference]] — General inference quantization
- [[concepts/fp8-compute]] — FP8 compute on Hopper
- [[concepts/gpu-mig]] — Deployment context where this matters
- [[entities/nvidia]] — Hopper architecture provider
- [[entities/orpheus-tts]] — Case study where FP8 KV cache works on small model
