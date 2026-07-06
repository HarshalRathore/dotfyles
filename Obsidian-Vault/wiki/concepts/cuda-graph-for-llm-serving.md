---
title: CUDA Graph for LLM Serving
tags:
- gpu
- optimization
- inference
- serving
- performance
aliases:
- CUDA Graph optimization
- cuda_graph_max_bs
sources:
- 'https://www.youtube.com/watch?v=ahtaha9fem0'
summary: Technique for capturing and reusing GPU computation graphs to accelerate LLM decoding in serving frameworks like SGLang and vLLM.
provenance:
  extracted: 0.6
  inferred: 0.35
  ambiguous: 0.05
base_confidence: 0.45
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: concepts
---

# CUDA Graph for LLM Serving

CUDA Graph capture is an optimization technique for LLM inference serving that records GPU operations into a reusable graph, bypassing kernel launch overhead during decoding. ^[inferred]

## How It Works

During model warmup, the serving framework captures CUDA graphs for a set of batch sizes (e.g., 1, 2, 4, 8). During online decoding, if the current batch size matches a captured graph, the framework replays the captured graph instead of launching individual CUDA kernels, significantly improving throughput. ^[inferred] When the running batch size exceeds the max captured batch size, CUDA Graph is disabled for those batches and the framework falls back to dynamic kernel launches, which reduces generation throughput. ^[extracted]

## Tuning cuda_graph_max_bs

In [[entities/sglang|SGLang]], the `cuda_graph_max_bs` parameter controls the maximum batch size for CUDA Graph capture. ^[extracted]

**Default behavior:** The default `cuda_graph_max_bs` is null, meaning SGLang auto-selects a value based on GPU hardware and model (e.g., 8 for L4 running Llama 3.1 8B). ^[extracted]

**When to tune:** Benchmark with a realistic workload and check the server logs. If the logs show that CUDA Graph is disabled during decoding (i.e., running requests exceed the max captured batch size), increase `cuda_graph_max_bs` to match the expected concurrent load. ^[extracted]

**Example:** On an L4 GPU running Llama 3.1 8B, the default max batch size of 8 caused CUDA Graph to be disabled during benchmark loads of 10+ concurrent requests, dropping per-user throughput from ~15 tok/s to lower. Increasing `cuda_graph_max_bs` to 32 kept CUDA Graph active throughout the benchmark. ^[extracted]

## Related

- [[entities/sglang]] — SGLang's CUDA Graph implementation
- [[entities/vllm]] — vLLM also supports CUDA Graph capture
- [[concepts/inference-performance-evaluation]] — Benchmarking inference performance

## Sources

- AI Engineer World's Fair 2025 — Introduction to LLM serving with SGLang, Philip Kiely & Yineng Zhang. https://www.youtube.com/watch?v=Ahtaha9fEM0
