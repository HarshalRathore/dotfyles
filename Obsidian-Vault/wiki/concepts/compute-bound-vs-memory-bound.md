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
  - "How a GPU Actually Works — Akshay Pachaar (X Article) - https://x.com/i/status/2087928032904523980"
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
updated: '2026-08-16T00:00:00Z'
relationships:
  - target: "[[concepts/disaggregated-inference|Disaggregated Inference]]"
    type: exploited_by
  - target: "[[concepts/kv-cache|KV Cache]]"
    type: relates_to
  - target: "[[concepts/quantization-inference|Quantization for Inference]]"
    type: relates_to
  - target: "[[concepts/arithmetic-intensity|Arithmetic Intensity]]"
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

## 2026-08-13: How a GPU Actually Works (Akshay Pachaar)

The X Article "How a GPU Actually Works" (Akshay Pachaar, 2026-08-13) reframes the same split through **arithmetic intensity** — work per byte fetched from main memory. ^[extracted]

- Every chip has a break-even ratio (ridge point): peak FLOPs ÷ peak bandwidth. The H100 SXM5 (989 TFLOPS dense BF16 ÷ 3.35 TB/s) lands at ~295 ops/byte (~300); below it workloads are memory-bound, above it compute-bound. This framing is named the roofline model. ^[extracted]
- **Decode is ~300× below break-even.** A 70B fp16 model reads 140 GB of weights per token for ~140B operations ≈ 1 op/byte; at ~3.3 TB/s that is 42 ms/token ≈ a 24 tok/s floor that no software cleverness moves. ^[extracted]
- **Prefill sits on the opposite side of the line:** it handles many tokens at once, so each weight fetched is used across all of them, work per byte climbs immediately, and prefill is usually compute-bound — the same model has two phases with opposite bottlenecks. ^[extracted]
- Batching raises work per byte at no extra memory cost: roughly **300 concurrent sequences** (fp16) are needed before generation becomes compute-bound; below that, spare arithmetic capability goes unused. ^[extracted]
- Bandwidth upgrades speed inference without extra arithmetic: the H200 (same 989 TFLOPS die, 4.8 TB/s) drops the break-even to 206 ops/byte, so more workloads clear the bar. ^[extracted]
- The threshold rises every generation because arithmetic grows faster than bandwidth — workloads that were compute-bound become memory-bound without a code change. ^[extracted]

## Related

- [[concepts/disaggregated-inference|Disaggregated Inference]] — splits compute-bound and memory-bound phases
- [[concepts/kv-cache|KV Cache]] — the data structure that makes decode memory-bound
- [[concepts/quantization-inference|Quantization for Inference]] — reduces both compute and memory requirements
- [[concepts/arithmetic-intensity|Arithmetic Intensity]] — the work-per-byte ratio that decides which bound applies

## Sources

- AIEF2025 - Hacking the Inference Pareto Frontier - Kyle Kranen, NVIDIA - https://www.youtube.com/watch?v=Y2qc0UhDSnc
- How a GPU Actually Works — Akshay Pachaar (X Article) - https://x.com/i/status/2087928032904523980
