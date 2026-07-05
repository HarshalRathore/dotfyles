---
title: "GPU MIG (Multi-Instance GPU)"
category: concepts
tags:
  - gpu
  - mig
  - h100
  - cost-optimization
  - inference
  - tensorrt-llm
  - hopper
aliases:
  - Multi-Instance GPU
  - MIG
summary: NVIDIA H100 Multi-Instance GPU technology that partitions a single GPU into isolated instances, enabling cost-efficient deployment of small models (3B params) on fraction of an H100 while retaining Hopper architecture benefits.
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
  - target: "[[concepts/gpu-utilization]]"
    type: extends
  - target: "[[entities/nvidia]]"
    type: implements
  - target: "[[concepts/voice-inference-metrics]]"
    type: optimizes
---

# GPU MIG (Multi-Instance GPU)

**GPU MIG (Multi-Instance GPU)** is NVIDIA's technology for partitioning a single physical GPU into multiple isolated instances, each with its own compute, memory, and cache resources. This enables cost-efficient deployment of small models on fractions of expensive GPUs. ^[extracted]

## Use Case: Small Models on H100

For a 3B parameter model like [[entities/orpheus-tts|Orpheus TTS]], running on a full H100 with 80GB of GPU memory is wasteful. MIG allows running on **half an H100** (or smaller partitions) while retaining the full Hopper architecture benefits:

- FP8 compute support
- TensorRT-LLM optimization
- Transformer Engine capabilities ^[extracted]

## Cost Efficiency

The economics favor MIG for small models:
- Full H100: expensive, mostly idle memory for 3B models
- H100 MIG (half): ~50% of the cost, sufficient memory and compute
- Result: a few cents per hour of conversation vs. per-token API pricing ^[extracted]

## Performance Impact

With Orpheus TTS on H100 MIG:
- **16 concurrent streams** under variable traffic
- **24 concurrent streams** under constant traffic
- Time to first byte: ~150ms ^[extracted]

These concurrency numbers would be significantly lower on a full H100 if the cost prevented deploying multiple instances, or worse on smaller GPUs lacking Hopper's FP8 support.

## MIG and TensorRT-LLM

MIG pairs well with TensorRT-LLM because both are Hopper-optimized. MIG provides the resource partitioning; TensorRT-LLM provides the inference optimization. Together they maximize concurrency per dollar. ^[extracted]

## Related
- [[concepts/gpu-utilization]] — GPU resource efficiency
- [[concepts/voice-inference-metrics]] — Metrics MIG helps optimize
- [[entities/nvidia]] — MIG is an NVIDIA technology
- [[entities/orpheus-tts]] — Case study using MIG
- [[concepts/quantization-inference]] — FP8 quantization benefits from Hopper/MIG
