---
title: "How Fast Are LLM Inference Engines Anyway? — Charles Frye, Modal (AIEF2025)"
category: references
tags:
  - reference
  - talk
  - aief2025
  - inference
  - benchmarking
  - llm
  - modal
aliases:
  - Charles Frye AIEF2025
  - LLM Almanac
relationships:
  - target: "[[concepts/inference-performance-evaluation]]"
    type: extends
  - target: "[[concepts/prefill-decode-throughput-tradeoff]]"
    type: extends
  - target: "[[entities/modal]]"
    type: related_to
  - target: "[[entities/vllm]]"
    type: related_to
  - target: "[[entities/sglang]]"
    type: related_to
sources:
  - "[[sources/watchv=deff3j8t5pk]]"
summary: "Charles Frye presents the Modal LLM Almanac — comprehensive benchmark data comparing vLLM, SGLang, and TensorRT-LLM across 10+ models on H100 GPUs. Key finding: prefill-dominated workloads achieve ~4x higher throughput than decode-dominated workloads."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.70
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# How Fast Are LLM Inference Engines Anyway? — Charles Frye, Modal

> "Context is cheaper than reasoning." — Charles Frye

## Thesis

The landscape has flipped: open-weight models (Llama, Qwen, DeepSeek) are now production-viable, and the software stack ([[entities/vllm|vLLM]], [[entities/sglang|SGLang]], TensorRT-LLM) has matured enough that self-hosting finally makes practical sense. The Modal LLM Almanac provides the benchmark data to make informed decisions. ^[extracted]

## The Open Models Prediction (2023)

Frye predicted at the first AI Engineer Summit (2023) that if capabilities requirements saturate, open models would catch up to proprietary and dominate — inspired by the trajectory of operating systems, databases, and programming languages. ^[extracted]

By 2025 this has been validated: the Llama, Qwen, and DeepSeek series demonstrate production viability for many use cases, and Frye's slides from 2023 "were right." ^[extracted]

## The LLM Almanac

Benchmark at [modal.com/llm-almanac](https://modal.com/llm-almanac): ^[extracted]

- **Engines tested:** [[entities/vllm|vLLM]], [[entities/sglang|SGLang]], TensorRT-LLM
- **Models tested:** ~10 models across Llama, Qwen, Gemma families
- **Context lengths:** ~10 configurations per model-engine combination
- **GPU:** H100
- **Quantization:** BF16 (primary), some 8-bit quants
- **Methodology:** "Out of the box" default configuration — no per-configuration tuning
- **Open source:** Benchmark code and raw data publicly available
- **Limitation:** Some combinations missing; community contributions welcome

### Key Empirical Results

| Model | Engine | Workload | Throughput | First Token |
|---|---|---|---|---|
| Qwen3 8B | vLLM | 128in / 1024out | ~1 req/s | <1s |
| Qwen3 8B | vLLM | 1024in / 128out | ~4 req/s | ~400ms |
| Gemma3 27B | vLLM | 128in / 1024out | ~1 req/s | ~400ms |

*Data from the Modal LLM Almanac live interface, presented at AIEF2025.* ^[extracted]

### Prefill vs Decode Throughput

The most consistent finding: workloads dominated by input tokens (prefill) achieve ~4x higher throughput than those dominated by generated tokens (decode). ^[extracted]

**Why:** Prefill is large matrix-matrix multiplications (compute-bound). Decode is matrix-vector multiplications (memory-bandwidth-bound). The GPU loads weights once and uses them many times in prefill, but is bottlenecked by memory bandwidth moving weights per token in decode. ^[extracted]

### Benchmarking Methodology

Two measurement modes: ^[extracted]

1. **Max throughput:** Send ~1000 requests simultaneously; divide count by completion time. Exposes maximum parallelism the engine can handle.
2. **Latency sweep:** Send one request at a time, wait for completion. The minimum possible latency.
3. **Full sweep:** Vary request rate between extremes to find the performance curve — from maximum achievable throughput to the point where queuing theory predicts latency blowup.

Throughput numbers are per-replica (single H100). Total production throughput requires scaling out horizontally. ^[extracted]

## Inference Engines Landscape Evolution (2023 → 2025)

Frye traced the rapid evolution since 2023: ^[extracted]

- Hugging Face TGI — "RIP"
- [[entities/vllm|vLLM]] — survived and matured
- [[entities/sglang|SGLang]] — fast-growing; Qwen3 support had initial bugs in 8-bit quant
- TensorRT-LLM — powerful but has "a ton of knobs" with opaque names like "UserBuffer"; community tuning contributions needed

The combination of model quality and engine maturity has flipped the economics: "there's a really good reason to run your own models" unless you are "the U.S. government or running on an air-gapped system." ^[extracted]

## Practical Advice for Practitioners

- **Don't reach for reasoning — reach for context.** Context (prefill) is ~4x cheaper per token than generation (decode). If quality needs improvement, adding context gives better latency SLOs. ^[extracted]
- **Quantization gives quadratic wins.** BF16 to FP8/FP4 on Hopper/Blackwell brings bit-width improvements non-linearly, widening the compute vs memory gap. ^[extracted]
- **Scale out, not up.** Throughput per replica (single GPU) is the base unit; total throughput = per-replica × replicas. ^[extracted]
- **Out-of-the-box numbers are conservative.** The benchmark uses default configurations — significant tuning gains remain (especially for TensorRT-LLM).

## People

- [[entities/charles-frye|Charles Frye]] — Speaker, Developer Advocate at Modal

## Related

- [[concepts/prefill-decode-throughput-tradeoff]] — The 4x throughput gap
- [[concepts/inference-performance-evaluation]] — Broader inference benchmarking practice
- [[concepts/enterprise-inference-infrastructure]] — What this data enables for production decisions
- [[concepts/cuda-graph-for-llm-serving]] — Optimization relevant to decode phase throughput
- [[entities/modal]] — Platform hosting the LLM Almanac
- [[entities/vllm]] — Benchmark engine
- [[entities/sglang]] — Benchmark engine
- [[references/aief2025-introduction-to-llm-serving-sglang-philip-kiely-yineng-zhang]] — Companion SGLang deep dive

## Sources

- AI Engineer World's Fair 2025 — How fast are LLM inference engines anyway? Charles Frye, Modal. https://www.youtube.com/watch?v=DeFF3J8T5Pk
