---
title: "Compute vs Memory Bound Inference"
category: concepts
tags:
  - inference
  - performance
  - gpu
  - compute-bound
  - memory-bound
  - llm-serving
aliases:
  - compute bound vs memory bound
  - inference performance bottlenecks
sources:
  - "AIEF2025 - Hacking the Inference Pareto Frontier - Kyle Kranen, NVIDIA - https://www.youtube.com/watch?v=Y2qc0UhDSnc"
summary: "The two fundamental performance bottlenecks in LLM inference: compute-bound (GPU compute saturation, typical of prefill) and memory-bound (memory bandwidth saturation, typical of decode)."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/disaggregated-inference|Disaggregated Inference]]"
    type: exploited_by
  - target: "[[concepts/kv-cache|KV Cache]]"
    type: relates_to
  - target: "[[concepts/quantization-inference|Quantization for Inference]]"
    type: relates_to
---

# Compute vs Memory Bound Inference

LLM inference bottlenecks fall into two categories: **compute-bound** (limited by GPU compute throughput) and **memory-bound** (limited by memory bandwidth). Understanding which phase is which is essential for optimization.

## Compute-Bound Phase: Prefill

The **prefill** phase processes the entire input prompt in parallel, computing attention for all tokens simultaneously. This phase:

- Saturates GPU compute relatively early
- Benefits from higher compute density GPUs
- Can handle lower batch sizes efficiently
- Is the dominant phase for short prompts

Models like DeepSeek R1 demonstrate that compute saturates early in prefill, meaning relatively few GPUs can handle the work with low batch sizes.

## Memory-Bound Phase: Decode

The **decode** phase generates one token at a time, reading the full KV cache for each generation step. This phase:

- Is limited by memory bandwidth (reading increasingly large KV caches)
- Requires more GPUs to handle large batch sizes
- Becomes the bottleneck for long sequences where the KV cache grows substantially
- Cannot be parallelized the same way as prefill (each token depends on the previous)

## Optimization Implications

The compute/memory split enables [[concepts/disaggregated-inference|disaggregated inference]]: allocate compute-heavy GPUs for prefill and memory-bandwidth-heavy GPUs for decode, matching each phase to its optimal hardware.

[[concepts/quantization-inference|Quantization]] also exploits this split: reducing precision speeds up compute-bound operations (prefill) and reduces memory footprint (decode), shifting the Pareto frontier in both directions.

## Related

- [[concepts/disaggregated-inference|Disaggregated Inference]] — splits compute-bound and memory-bound phases
- [[concepts/kv-cache|KV Cache]] — the data structure that makes decode memory-bound
- [[concepts/quantization-inference|Quantization for Inference]] — reduces both compute and memory requirements

## Sources

- AIEF2025 - Hacking the Inference Pareto Frontier - Kyle Kranen, NVIDIA - https://www.youtube.com/watch?v=Y2qc0UhDSnc
