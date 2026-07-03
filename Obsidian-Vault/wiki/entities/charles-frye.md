---
title: "Charles Frye"
tags:
  - person
  - modal
  - inference
  - benchmarking
  - ai-engineering
aliases:
  - Charles Frye
  - Charles Frye Modal
sources:
  - "AIEF2025 - How fast are LLM inference engines anyway? — Charles Frye, Modal - https://www.youtube.com/watch?v=DeFF3J8T5Pk"
summary: "Developer Advocate at Modal. Created the LLM Almanac benchmark. Predicted open models would catch up to proprietary models (2023). Known for LLM inference benchmarking and performance analysis."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Charles Frye

Charles Frye is a Developer Advocate at [[entities/modal|Modal]], a cloud GPU compute platform. He has been a regular speaker at the AI Engineer Summit since 2023, with a background in training and running PyTorch models. ^[extracted]

## AI Engineer Summit (2023) — Open Models Prediction

In his 2023 talk at the first AI Engineer Summit, Frye predicted that if capabilities requirements saturate, open models would catch up to proprietary models and then dominate — inspired by patterns seen with operating systems, databases, and programming languages. ^[extracted]

By 2025 this prediction has been validated: the Llama, Qwen, and DeepSeek series have reached production viability across many use cases. ^[inferred]

## LLM Almanac

Frye built and maintains the LLM Almanac at modal.com/llm-almanac, a comprehensive benchmark comparing [[entities/vllm|vLLM]], [[entities/sglang|SGLang]], and TensorRT-LLM across ~10 models and ~10 context lengths on H100 GPUs. ^[extracted]

The project started from consulting engagements at Modal: answering "how fast can you run [model] with [engine] on [hardware]?" initially took days, was reduced to ~15 minutes with automated tooling, and eventually was pre-computed into the public Almanac. ^[extracted]

## Key Insight: Prefill vs Decode Throughput Gap

Frye's benchmark data demonstrates a ~4x throughput advantage for prefill-dominated workloads (RAG, context-rich) over decode-dominated workloads (reasoning, generation) — a direct consequence of the transformer architecture where prefill is compute-bound matrix-matrix multiplication while decode is memory-bandwidth-bound matrix-vector multiplication. ^[extracted]

## Related

- [[entities/modal]] — Employer
- [[entities/vllm]] — Benchmark vLLM engine
- [[entities/sglang]] — Benchmark SGLang engine
- [[concepts/inference-performance-evaluation]] — Inference benchmarking practice
- [[concepts/prefill-decode-throughput-tradeoff]] — Key insight from his benchmark work
- [[references/aief2025-inference-engines-benchmarking-charles-frye-modal]] — Talk reference

## Sources

- AIEF2025 — How fast are LLM inference engines anyway? Charles Frye, Modal. https://www.youtube.com/watch?v=DeFF3J8T5Pk
