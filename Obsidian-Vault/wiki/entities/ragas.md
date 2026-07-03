---
title: "Ragas"
tags:
  - library
  - rag
  - evaluation
  - metrics
  - python
  - open-source
aliases:
  - RAGAS
  - RAG Assessment
sources:
  - "AI Engineer World's Fair 2025 talk — HybridRAG: A Fusion of Graph and Vector Retrieval — Mitesh Patel, NVIDIA - https://www.youtube.com/watch?v=-tgQa8Fzf80"
summary: "A Python library for end-to-end evaluation of RAG pipelines, measuring faithfulness, answer relevancy, precision recall, and other metrics across response, retrieval, and query dimensions."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.42
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
relationships:
  - target: "[[concepts/rag-evaluation|RAG Evaluation]]"
    type: implements
---

# Ragas

Ragas is an open-source Python library (`pip install ragas`) purpose-built for end-to-end evaluation of RAG pipelines. It evaluates RAG systems across three dimensions: response quality, retrieval quality, and query interpretation. ^[extracted]

## Evaluation Dimensions

Ragas evaluates:

1. **Response** — is the generated answer correct, faithful, and helpful?
2. **Retrieval** — did the retrieval step find the right documents or graph nodes?
3. **Query** — did the system correctly interpret the user's question?

## Metrics

Ragas supports a wide range of evaluation metrics: faithfulness, answer relevancy, precision, recall, helpfulness, correctness, coherence, complexity, verbosity. ^[extracted]

## LLM Backend

Under the hood, Ragas uses an LLM to compute evaluation metrics. By default, it integrates with GPT, but it provides flexibility to bring any custom model via API. This allows users to use local models, open-source models, or custom endpoints. ^[extracted]

## Usage in HybridRAG

The speaker recommended Ragas for evaluating both graph-based and vector-based RAG systems, noting that it is not comprehensive but provides strong flexibility for benchmarking RAG quality across multiple dimensions. ^[extracted]

## Related

- [[concepts/rag-evaluation|RAG Evaluation]] — methodology that Ragas implements
- [[concepts/hybridrag|HybridRAG]] — the type of system Ragas can evaluate
- [[concepts/evaluation-first-development|Evaluation-First Development]] — broader eval methodology
- [[concepts/task-specific-evals|Task-Specific Evals]] — complementing Ragas with domain-specific evals
- [[entities/nvidia|NVIDIA]] — NeMoTron reward model as alternative for response evaluation

## Sources

- [[references/hybridrag-fusion-graph-vector-retrieval-mitesh-patel|HybridRAG: A Fusion of Graph and Vector Retrieval — Mitesh Patel, NVIDIA]] — Conference talk
