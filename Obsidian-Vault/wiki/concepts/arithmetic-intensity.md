---
title: "Arithmetic Intensity"
category: concepts
tags:
  - gpu
  - llm-inference
  - performance
  - roofline
  - arithmetic-intensity
aliases:
  - work per byte
  - ops per byte
sources:
  - "How a GPU Actually Works — Akshay Pachaar (X Article) - https://x.com/i/status/2087928032904523980"
summary: "Work per byte fetched from main memory (ops ÷ bytes); the ratio deciding whether a GPU workload is compute- or memory-bound against a chip's break-even point."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.4
lifecycle: draft
lifecycle_changed: 2026-08-16
tier: supporting
created: '2026-08-16T00:00:00Z'
updated: '2026-08-16T00:00:00Z'
relationships:
  - target: "[[concepts/compute-bound-vs-memory-bound|Compute vs Memory Bound Inference]]"
    type: related_to
  - target: "[[concepts/gpu-memory-hierarchy|GPU Memory Hierarchy]]"
    type: related_to
---

# Arithmetic Intensity

**Arithmetic intensity** is the amount of work an operation performs per byte of data it pulls from main memory: arithmetic operations ÷ bytes fetched. It is the formal name for the "work per byte" ratio, and it predicts performance before you profile anything. ^[extracted]

## The Two Moves

Because arithmetic is cheap and fetching data is expensive, every GPU optimization is one of only two moves: ^[extracted]

1. **Increase the work done per fetch** — reuse each fetched value more times (batching, tiling).
2. **Decrease the bytes fetched** — move less data for the same arithmetic (fusion, quantization, better memory layout).

## Reuse Is Everything

Elementwise operations use each value exactly once — fetch, compute, write back — about 1 operation per byte fetched. ^[extracted]

Matrix multiplication is the opposite: in a 1024×1024 product, every value fetched from the first matrix is multiplied against 1024 values from the second — one fetch buys roughly a thousand operations. ^[extracted] That thousandfold difference in reuse is why matmul is the operation accelerators genuinely excel at. ^[inferred]

## The Break-Even Ratio (Ridge Point)

Every chip has a threshold where arithmetic and memory balance exactly: ^[extracted]

**Break-even = peak arithmetic rate ÷ peak memory bandwidth**

- H100 SXM5: 989 TFLOPS dense BF16 ÷ 3.35 TB/s = **295 ops/byte** (the "~300" figure). ^[extracted]
- H200: same 989 TFLOPS compute die, 4.8 TB/s bandwidth = **206 ops/byte**. ^[extracted]

Below the threshold a workload is memory-bound (arithmetic units already waiting); above it, compute-bound (data arrives faster than it can be consumed). The threshold belongs to the hardware; where the workload sits relative to it belongs to the workload. ^[extracted] This two-ceiling framing is named the **roofline model**. ^[extracted]

## Decode: The Worst Case

Generating one token reads every weight once: a 70B fp16 model does ~140B operations funded by 140 GB of traffic ≈ **1 op/byte** — roughly 300× below break-even. ^[extracted] That is why decode is memory-bound and the arithmetic units sit idle. ^[extracted]

Batching raises work per byte at no extra memory cost: at 16-bit precision roughly **300 concurrent sequences** are needed before generation becomes compute-bound. ^[extracted]

## The Threshold Rises Over Generations

Arithmetic capability grows several times faster than bandwidth, so the break-even ratio keeps rising: workloads that were compute-bound on older hardware become memory-bound on newer hardware without a line of code changing. ^[extracted] Techniques that reduce data movement keep gaining value. ^[extracted]

## Related

- [[concepts/compute-bound-vs-memory-bound|Compute vs Memory Bound Inference]] — what the ratio decides
- [[concepts/gpu-memory-hierarchy|GPU Memory Hierarchy]] — where the fetched bytes come from
- [[concepts/autoregressive-generation|Autoregressive Generation]] — the memory-bound decode case
- [[references/how-a-gpu-actually-works|How a GPU Actually Works]] — source article

## Sources

- How a GPU Actually Works — Akshay Pachaar (X Article) - https://x.com/i/status/2087928032904523980
