---
title: "SGLang"
tags:
  - tool
  - inference
  - serving
  - llm
  - open-source
aliases:
  - SGLang
  - SGLang inference runtime
sources:
  - "[[sources/watchv=ahtaha9fem0]]"
  - "[[sources/watchv=deff3j8t5pk]]"
summary: "Open-source fast serving framework for LLMs and VLMs. Competing with vLLM and TensorRT-LLM. Supports CUDA Graph optimization and Eagle 3 speculative decoding. Initial Qwen3 8-bit support had bugs in Modal LLM Almanac benchmarks."
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.50
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# SGLang

SGLang is an open-source, high-performance serving framework for large language models (LLMs) and large vision models (LVMs). It is one of the major options for production model serving alongside [[entities/vllm|vLLM]] and TensorRT-LLM. ^[extracted]

## History

The SGLang arXiv paper was released in December 2023. In 18 months the project grew to approximately 15,000 GitHub stars with support from major companies including xAI (Grok models), [[entities/cursor-ai|Cursor]], and [[entities/baseten|Baseten]]. ^[extracted]

## Users

- [[entities/baseten|Baseten]] — uses SGLang as part of their inference stack ^[extracted]
- **xAI** — uses SGLang heavily for Grok models ^[extracted]
- [[entities/cursor-ai|Cursor]] — product company using SGLang ^[extracted]
- Various inference providers, cloud providers, research labs, and universities ^[extracted]

### Modal LLM Almanac Results

In the [[entities/modal|Modal]] LLM Almanac, SGLang was tested on H100 GPUs with BF16 quantization. Notable findings: ^[extracted]

- SGLang's 8-bit quant support for Qwen3 was initially buggy — only BF16 results were available at release ^[extracted]
- For Llama model series, vLLM showed stronger optimization than SGLang on the same hardware ^[extracted]
- The Almanac welcomes community contributions for optimized SGLang configurations ^[extracted]

## Key Features

- **High performance** — excellent performance across a wide variety of GPUs ^[extracted]
- **Production ready** — designed for production serving out of the box ^[extracted]
- **Day-zero model support** — rapid support for new model releases from labs like Qwen and DeepSeek ^[extracted]
- **Strong open-source community** — contributors can fix issues themselves rather than waiting for core developers ^[extracted]
- **OpenAI-compatible API** — supports standard OpenAI client SDK for calling deployed models ^[extracted]

## CUDA Graph Optimization

SGLang uses CUDA Graph capture to accelerate decoding. The `cuda_graph_max_bs` parameter controls the maximum batch size for which CUDA graphs are captured. ^[extracted]

During decoding, if the number of running requests exceeds `cuda_graph_max_bs`, CUDA Graph is disabled for those batches, significantly reducing generation throughput. The default value depends on the GPU and model — for an L4 GPU with Llama 3.1 8B, the default `cuda_graph_max_bs` is 8. ^[extracted]

**Tuning:** When benchmarking with realistic workloads, if server logs show CUDA Graph is frequently disabled during decoding, increase `cuda_graph_max_bs` to match expected batch sizes (e.g., 32 for typical benchmark loads). This ensures CUDA Graph remains active during peak throughput. ^[extracted]

## Eagle 3 Speculative Decoding

SGLang supports Eagle 3, a speculative decoding framework. Unlike standard draft-target setups (using separate small + large models), Eagle derives the draft model from multiple layers of the target model itself. ^[extracted]

Key parameters: ^[extracted]
- **Speculative decoding algorithm** — set to `eagle`
- **Draft model path** — the Eagle-derived draft model
- **Number steps** — depth of drafting (e.g., 3)
- **Eagle top_k** — top-k sampling during speculation (e.g., 1)
- **Number draft tokens** — maximum speculated tokens (e.g., 4)

Tuning these parameters requires benchmarking against representative workloads, as speculation is content-dependent. SGLang includes a benchmarking script that sweeps parameter combinations (batch sizes, steps, top_k, draft tokens) to find optimal settings for a given model and workload. ^[extracted]

## Codebase Structure

The SGLang repository has three major components: ^[extracted]
1. **SGLang kernel library** — implements attention, normalization, activation, and GEMM kernels in CUDA
2. **SGLang router** — cache-aware routing introduced in SGLang v3
3. **SGLang runtime (SRT)** — the core Python inference runtime supporting PD disaggregation, continuous batching, function calling, and an OpenAI-compatible server

## Deployment

SGLang is typically deployed via `sglang.launch_server` with a variety of configuration flags controlling quantization, batch size, attention backend, and speculative decoding. On [[entities/baseten|Baseten]], models are deployed to GPU pods (e.g., L4, H100) without SSH access to the GPU. ^[extracted]

## Related

- [[entities/vllm]] — Alternative serving framework
- [[entities/baseten]] — Platform using SGLang
- [[concepts/cuda-graph-for-llm-serving]] — CUDA Graph optimization technique
- [[concepts/speculative-decoding-eagle]] — Eagle 3 speculative decoding
- [[entities/yineng-zhang]] — Core maintainer
- [[references/aief2025-introduction-to-llm-serving-sglang-philip-kiely-yineng-zhang]] — Workshop reference

## Sources

- AI Engineer World's Fair 2025 — Introduction to LLM serving with SGLang. https://www.youtube.com/watch?v=Ahtaha9fEM0
