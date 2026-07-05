---
title: "Embedding Models"
category: concepts
tags: [embeddings, vector-search, retrieval, nlp, scaling-laws, voyage-ai, cohere, aief2025]
summary: "Neural models that vectorize text into semantic representations for RAG retrieval. Significant accuracy and scaling improvements 2023–2025, with ~80% average retrieval accuracy across 100 datasets."
sources:
  - "AIEF2025 - RAG in 2025: State of the Art and the Road Forward — Tengyu Ma, MongoDB (acq. Voyage AI) - https://www.youtube.com/watch?v=W_CYk2ogcDI"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: core
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/rag-pipeline-architecture]]"
    type: uses
  - target: "[[concepts/semantic-similarity]]"
    type: enables
  - target: "[[concepts/matricial-learning]]"
    type: related_to
  - target: "[[concepts/quantization-aware-training]]"
    type: related_to
  - target: "[[entities/voyage-ai]]"
    type: related_to
---

# Embedding Models

Embedding models are neural networks that convert text (documents or queries) into dense vector representations capturing semantic meaning. They are the foundational component of [[concepts/rag-pipeline-architecture|RAG]] retrieval, enabling similarity search in vector space.

## How They Work

In a RAG pipeline, embedding models serve two roles:

1. **Indexing**: Vectorize documents and store embeddings in a vector database
2. **Querying**: Vectorize the user's query and perform k-nearest-neighbor search against the stored embeddings

The quality of the embedding model directly determines retrieval accuracy — how well the retrieved documents match the user's intent.

## Progress in 2023–2025

Significant improvements over the past 1.5 years from companies like Voyage AI and Cohere:

- **Better accuracy**: New models substantially outperform OpenAI's text-embedding-ada-002 (v3)
- **Better scaling laws**: For the same parameter count, quality improves; or for the same quality, parameters decrease (lower cost)
- **Improved tuning stack**: Progress across data curation, data selection, architecture design, loss functions, and evaluation methodology

## Current Accuracy Levels

As of 2025, embedding models achieve approximately **80% average retrieval accuracy across ~100 datasets**. This average masks significant variance:

- ~50% of datasets: 90–95% accuracy (common tasks, well-served by current models)
- ~50% of datasets: 20–60% accuracy (harder tasks, domain-specific or ambiguous queries)

This means for common retrieval tasks, embedding models are already highly effective, but there remains ~20% headroom on average.

## Storage Optimization Techniques

Two approaches reduce embedding storage costs with minimal accuracy impact:

### Matricial Learning

Use a subset of embedding dimensions rather than the full vector. For example, the first 256 dimensions of a 2048-dimensional embedding can serve as a reasonable embedding with only 1–2% accuracy loss. ^[extracted]

### Quantization-Aware Training

Lower the numerical precision of embedding vectors while maintaining performance. Voyage AI demonstrates 10× storage reduction with negligible accuracy loss, and 100× reduction with 5–10% loss — still outperforming OpenAI's baseline accuracy. ^[extracted]

Domain-specific embedding models achieve even better trade-offs than general-purpose models. ^[extracted]

## Key Players

- **Voyage AI** — Pioneered matricial learning and quantization-aware training for embeddings; provides both embedding models and re-rankers. Domain-specific models include Voyage Code 3 (code understanding) and Voyage Law 2 (legal documents).
- **Cohere** — Competitive embedding models with strong scaling law improvements
- **OpenAI** — text-embedding-ada-002 was the baseline; newer models improve on it but Voyage claims superiority
- **Exa** — Built custom transformer embedding models for web-scale document indexing. Their approach converts each document on the web into a dense embedding representing meaning, ideas, and references — enabling semantic search over the entire web rather than a curated corpus. ^[inferred]

## Domain-Specific Quality

Embedding quality is domain-dependent. General-purpose models may perform well on web text but poorly on code, legal documents, or other specialized domains. Domain-specific models trained on domain-specific data consistently outperform general-purpose models within their target domain. For example, Voyage Code 3 outperforms general-purpose models for code understanding, and Voyage Law 2 is optimized for legal document semantics. ^[extracted]

## Query-Style Guidance

The choice of retrieval technique depends on your actual query patterns, not on what's trendy. Karam's framework distinguishes two query styles: ^[extracted]

- **Keyword-style queries** ("iPhone battery life", "Python list append") are better served by BM25/lexical search, which matches on term identity
- **Natural-language queries** ("how long does an iPhone last before I need to charge it again") require vector search, which captures semantic meaning beyond exact terms

The recommendation: analyze your real query set. If most queries are keyword-style, BM25 may be sufficient. If most are natural-language, invest in embeddings. If both patterns exist, use hybrid search. ^[extracted]

## Related

- [[concepts/rag-pipeline-architecture]] — where embeddings fit in the RAG pipeline
- [[concepts/semantic-similarity]] — what embeddings measure
- [[concepts/hybrid-search]] — embeddings combined with keyword search
- [[concepts/matricial-learning]] — dimensionality reduction for embeddings
- [[concepts/quantization-aware-training]] — precision reduction for embeddings
- [[concepts/embedding-quality]] — why embedding quality is the core determinant
- [[concepts/domain-specific-embedding-models]] — domain-dependent quality
- [[entities/voyage-ai]] — leading embedding model company
- [[entities/exa]] — web-scale embedding-based search

## Sources

- AIEF2025 - RAG in 2025: State of the Art and the Road Forward — Tengyu Ma, MongoDB (acq. Voyage AI) - https://www.youtube.com/watch?v=W_CYk2ogcDI
- AIEF2025 - The State of AI Powered Search and Retrieval — Frank Liu, MongoDB (prev Voyage AI) - https://www.youtube.com/watch?v=pIPtpBZ6TKk
- AIEF2025 - Building a Smarter AI Agent with Neural RAG — Will Bryk, Exa.ai - https://www.youtube.com/watch?v=xnXqpUW_Kp8
