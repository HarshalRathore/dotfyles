---
title: "Retrieval-Augmented Generation (RAG)"
category: concepts
tags:
  - rag
  - retrieval
  - inference
  - quality
  - llm
  - optimization
aliases:
  - RAG
  - retrieval augmented generation
sources:
  - "AIEF2025 - Hacking the Inference Pareto Frontier - Kyle Kranen, NVIDIA - https://www.youtube.com/watch?v=Y2qc0UhDSnc"
  - "AIEF2025 - RAG in 2025: State of the Art and the Road Forward — Tengyu Ma, MongoDB - https://www.youtube.com/watch?v=W_CYk2ogcDI"
summary: "A technique for improving LLM output quality by retrieving relevant documents at inference time. Increases latency and cost but improves quality — a Pareto frontier shift technique that stacks with quantization."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: core
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/inference-pareto-frontier|Inference Pareto Frontier]]"
    type: shifts
  - target: "[[concepts/quantization-inference|Quantization for Inference]]"
    type: stacks_with
  - target: "[[concepts/enterprise-rag|Enterprise RAG]]"
    type: relates_to
  - target: "[[concepts/graphrag|GraphRAG]]"
    type: relates_to
  - target: "[[concepts/hybrid-retrieval|Hybrid Retrieval]]"
    type: relates_to
---

# Retrieval-Augmented Generation (RAG)

**Retrieval-Augmented Generation (RAG)** is the technique of retrieving relevant external documents at inference time and injecting them into the prompt, improving the quality of LLM outputs by providing contextual information the model may not have seen during training.

## Effect on the Pareto Frontier

As identified by [[entities/kyle-kranen|Kyle Kranen]] at AIEF2025, RAG has a specific effect on the inference Pareto frontier:

- **Increases quality** — The model grounds its response in retrieved evidence
- **Increases latency** — Additional retrieval step adds time before generation
- **Increases cost** — More tokens in the prompt (retrieved documents) + retrieval infrastructure

RAG is a **quality-for-latency/cost tradeoff**: you pay more and wait longer for better answers.

## Compounding with Quantization

A key composability insight: RAG and quantization can be stacked. When RAG worsens latency, quantization can be applied to speed it back up. This allows you to gain RAG's quality improvements without permanently accepting the latency penalty.

## RAG in 2025

Beyond basic vector search, RAG has evolved significantly:

- **GraphRAG** ([[concepts/graphrag|GraphRAG]]) — Uses knowledge graphs for structured retrieval
- **Enterprise RAG** ([[concepts/enterprise-rag|Enterprise RAG]]) — Specialized for regulated industries with dense, concentrated data
- **Hybrid Retrieval** ([[concepts/hybrid-retrieval|Hybrid Retrieval]]) — Combines vector, graph, and full-text search
- **Domain-specific embeddings** — Models trained on specific domains quantize better and retrieve more accurately

## Limitations

- Retrieval quality is only as good as the embedding/retrieval system
- Vector search alone fails on dense enterprise data (see [[concepts/vector-similarity-vs-relevance|Vector Similarity vs. Relevance]])
- Long-context injection is not cost-efficient at billion-token scales (see [[concepts/context-length-scaling|Context Length Scaling]])

## Related

- [[concepts/inference-pareto-frontier|Inference Pareto Frontier]] — RAG shifts the quality axis
- [[concepts/quantization-inference|Quantization for Inference]] — stacks with RAG to recover latency
- [[concepts/graphrag|GraphRAG]] — structured RAG variant
- [[concepts/enterprise-rag|Enterprise RAG]] — RAG for regulated industries
- [[concepts/hybrid-retrieval|Hybrid Retrieval]] — combining retrieval strategies

## Sources

- AIEF2025 - Hacking the Inference Pareto Frontier - Kyle Kranen, NVIDIA - https://www.youtube.com/watch?v=Y2qc0UhDSnc
- AIEF2025 - RAG in 2025: State of the Art and the Road Forward — Tengyu Ma, MongoDB - https://www.youtube.com/watch?v=W_CYk2ogcDI
