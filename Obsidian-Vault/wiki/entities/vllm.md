---
title: VLLM
tags:
- tool
- inference
- llm
- open-source
- serving
aliases:
- vLLM
- VLLM inference runtime
sources:
- 'https://www.youtube.com/watch?v=89nuzmkokik'
- 'https://www.youtube.com/watch?v=deff3j8t5pk'
summary: Open-source high-performance LLM inference runtime. Featured in the Modal LLM Almanac as the most optimized engine for Qwen3 and Llama model families. Supports SafeTensor format, PagedAttention, an...
provenance:
  extracted: 0.7
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.45
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: entities
---

# VLLM

VLLM is an open-source, high-performance LLM inference runtime designed for production serving. It is the serving layer that [[entities/guidellm|GuideLLM]] benchmarks against. ^[extracted]

At the AI Engineer World's Fair 2025, VLLM was deployed in a container on RHEL with an L4 GPU to serve an IBM Granite 2B model. GuideLLM then benchmarked the deployed model. ^[extracted]

- **SafeTensor format support** — no model format conversion needed (unlike TensorRT which requires conversion)
- **Simple CLI** — deploy models with `vllm serve <model>`
- **Configurable** — supports adjusting max context window for performance tuning
- **Efficient** — uses PagedAttention for memory management
### Modal LLM Almanac Results

In the [[entities/modal|Modal]] LLM Almanac benchmark on H100 GPUs, vLLM demonstrated consistent performance across the Llama, Qwen, and Gemma model families. Key results: ^[extracted]

- **Qwen3 8B** (BF16): ~1 req/s at 128in/1024out, ~4 req/s at 1024in/128out
- **Gemma3 27B** (BF16): ~1 req/s at 128in/1024out with ~400ms first token
- vLLM showed stronger optimization for Llama and Qwen models compared to SGLang and TensorRT-LLM ^[extracted]

vLLM Qwen3 support was more reliable than SGLang's at time of benchmarking (SGLang had bugs with 8-bit Qwen3 quant). ^[extracted]


## Workshop Usage

At the AI Engineer World's Fair 2025, VLLM was deployed in a container on RHEL with an L4 GPU to serve an [[entities/ibm-granite|IBM Granite]] 2B model. GuideLLM then benchmarked the deployed model. ^[extracted]

## Relationship with SGLang

[[entities/sglang|SGLang]] is a major alternative LLM serving framework in the same category as vLLM. At Baseten, both runtimes are used in the inference stack — vLLM is often chosen for broad compatibility with new model releases, while SGLang is preferred for its configurability and extensibility. ^[inferred] The two frameworks are the leading open-source options for production LLM serving alongside TensorRT-LLM.

- [[entities/guidellm|GuideLLM]] — benchmarking tool that works with VLLM
- [[entities/sglang]] — Alternative serving framework
- [[concepts/inference-performance-evaluation|Inference Performance Evaluation]] — the practice VLLM enables
- [[concepts/llm-evaluation-pyramid|LLM Evaluation Pyramid]] — VLLM provides the serving layer for the system performance tier
- [[concepts/prefill-decode-throughput-tradeoff]] — Throughput gap demonstrated via vLLM benchmarks
- [[entities/charles-frye]] — Developer advocate who conducted the benchmarks
- [[references/aief2025-inference-engines-benchmarking-charles-frye-modal]] — Modal LLM Almanac talk
- [[entities/nvidia|NVIDIA]] — L4 GPU used in workshop

## Sources

- [[references/ai-eng-worlds-fair-2025-llm-evals-strategies-taylor-jordan-smith|Strategies for LLM Evals — Taylor Jordan Smith, Red Hat]] — Conference workshop
- AI Engineer World's Fair 2025 — Introduction to LLM serving with SGLang, Philip Kiely & Yineng Zhang. https://www.youtube.com/watch?v=Ahtaha9fEM0
- AIEF2025 — How fast are LLM inference engines anyway? Charles Frye, Modal. https://www.youtube.com/watch?v=DeFF3J8T5Pk
