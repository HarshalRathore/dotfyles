---
title: "TensorRT-LLM"
category: entities
tags:
  - inference-engine
  - tensorrt
  - nvidia
  - llm-serving
  - optimization
  - hopper
  - fp8
aliases:
  - TensorRT LLM
  - TensorRT-LLM
summary: NVIDIA's high-performance inference engine for LLMs, optimized for Hopper architecture with FP8 support. Outperforms vLLM for many workloads, especially on small models running on MIG instances.
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
  - target: "[[entities/nvidia]]"
    type: implements
  - target: "[[entities/vllm]]"
    type: competes_with
  - target: "[[entities/baseten]]"
    type: used_by
  - target: "[[concepts/quantization-inference]]"
    type: enables
---

# TensorRT-LLM

**TensorRT-LLM** is NVIDIA's high-performance inference engine for large language models, built on the TensorRT optimization framework. It is optimized for NVIDIA GPU architectures including the Hopper generation with native FP8 support. ^[extracted]

## Performance

Philip Kiely of [[entities/baseten|Baseten]] describes it as "really fast" and notes that for many workloads, TensorRT-LLM outperforms vLLM. The tradeoff is developer experience — it can be "a little bit complicated from a developer experience perspective to get up and running" compared to vLLM's simpler setup. ^[extracted]

## Hopper Architecture & FP8

TensorRT-LLM's key advantage on Hopper GPUs (H100, H200) is native **FP8 quantization support**:
- FP8 matrix operations are significantly faster than FP16/BF16 on Hopper
- FP8 context with FMHA (Flash Multi-Head Attention) reduces memory usage
- KV cache can be quantized to FP8 as well ^[extracted]

## Use with MIG

TensorRT-LLM pairs well with H100 MIG instances for small models (3B params). The combination of MIG's resource partitioning and TensorRT-LLM's inference optimization enables high concurrency at low cost. ^[extracted]

## Baseten's Usage

[[entities/baseten|Baseten]] uses TensorRT-LLM extensively in their inference stack, alongside SGLang and vLLM. Philip Kiely jokes that he's "the unofficial marketing department for TensorRT-LLM because of how much I talk about it." ^[extracted]

## Related
- [[entities/nvidia]] — Creator of TensorRT-LLM
- [[entities/vllm]] — Alternative inference engine
- [[entities/baseten]] — Heavy user
- [[concepts/quantization-inference]] — FP8 quantization enabled by Hopper/TensorRT-LLM
- [[concepts/gpu-mig]] — Deployment strategy for small models
