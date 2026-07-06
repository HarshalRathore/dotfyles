---
title: Prefill-Decode Throughput Tradeoff
tags:
- inference
- llm
- performance
- optimization
- throughput
- serving
aliases:
- prefill vs decode throughput
- compute-bound vs memory-bound inference
- prefill decode gap
sources:
- 'https://www.youtube.com/watch?v=deff3j8t5pk'
summary: In transformer inference, the prefill phase (processing input tokens) is compute-bound, achieving ~4x higher throughput than the decode phase (autoregressive generation), which is memory-bandwidth-...
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.65
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: concepts
---

# Prefill-Decode Throughput Tradeoff

Transformer inference has two phases with fundamentally different compute profiles: **prefill** (processing input tokens in parallel) and **decode** (generating output tokens one at a time autoregressively). The prefill phase achieves significantly higher throughput because it is compute-bound, while decode is memory-bandwidth-bound. ^[extracted]

## The Empirical Gap

Modal's LLM Almanac benchmark on H100 GPUs demonstrates a ~4x throughput gap between prefill-dominated and decode-dominated workloads: ^[extracted]

| Workload Type | Input Tokens | Output Tokens | Throughput (req/s) | Engine |
|---|---|---|---|---|
| Reasoning (decode-heavy) | 128 | 1024 | ~1 | vLLM, Qwen3, BF16 |
| RAG / Context-rich (prefill-heavy) | 1024 | 128 | ~4 | vLLM, Qwen3, BF16 |

*Data from the [[entities/modal|Modal]] LLM Almanac, presented at AIEF2025.* ^[extracted]

## Why Prefill is Faster

The prefill phase processes all input tokens simultaneously in a large **matrix-matrix multiplication** — the GPU loads weights once and uses them many times, saturating compute units. ^[extracted]

The decode phase generates tokens one at a time via **matrix-vector multiplies** — each step is dominated by moving model weights from GPU memory to compute units rather than by computation itself. The ratio of arithmetic to memory movement is low, so the GPU is memory-bandwidth-limited. ^[extracted]

This follows the standard GPU optimization principle: throughput-oriented workloads that involve "a lot of arithmetic and not moving memory around" outperform memory-bound workloads by large factors. ^[extracted]

## Practical Implications

- **Context is cheaper than reasoning** — if quality needs improving, add context tokens rather than reasoning chains, because prefill is ~4x more efficient per token. ^[extracted]
- **First token latency is similar** despite 10x more input tokens — prefill parallelizes well. ^[extracted]
- **Quantization amplifies the gap** — FP8/FP4 on Hopper and Blackwell gives a quadratic win in bit width, widening the compute vs memory gap and improving both latency and throughput. ^[extracted]
- **Disaggregated serving** separates prefill and decode into different instances to optimize each phase independently. ^[inferred]

## Scaling

Total throughput is achieved by **scaling out** (multiple replicas), not scaling up. Each replica's throughput per single GPU determines the base unit for capacity planning. ^[extracted]

## Related

- [[concepts/inference-performance-evaluation]] — Broader inference benchmarking context
- [[concepts/enterprise-inference-infrastructure]] — Production implications including disaggregated serving
- [[concepts/cuda-graph-for-llm-serving]] — Optimization technique that helps decode throughput
- [[entities/modal]] — LLM Almanac benchmark data
- [[entities/charles-frye]] — Developer advocate who presented this data
- [[references/aief2025-inference-engines-benchmarking-charles-frye-modal]] — Full talk reference

## Sources

- AIEF2025 — How fast are LLM inference engines anyway? Charles Frye, Modal. https://www.youtube.com/watch?v=DeFF3J8T5Pk
