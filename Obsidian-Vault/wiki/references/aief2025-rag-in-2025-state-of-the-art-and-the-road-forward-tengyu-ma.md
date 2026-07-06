---
title: 'RAG in 2025: State of the Art and the Road Forward'
category: references
tags:
- rag
- embedding-models
- retrieval
- fine-tuning
- long-context
- hybrid-search
- re-ranking
- query-decomposition
- quantization
- aief2025
- tengyu-ma
summary: Tengyu Ma (MongoDB, acq. Voyage AI) presents why RAG beats fine-tuning and long-context for enterprise knowledge, covering embedding model progress, matricial learning, quantization, hybrid search,...
sources:
- 'AIEF2025 - RAG in 2025: State of the Art and the Road Forward — Tengyu Ma, MongoDB (acq. Voyage AI) - https://www.youtube.com/watch?v=W_CYk2ogcDI'
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: core
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[entities/tengyu-ma]]'
  type: related_to
- target: '[[entities/mongodb]]'
  type: related_to
- target: '[[entities/voyage-ai]]'
  type: related_to
- target: '[[concepts/embedding-models]]'
  type: related_to
- target: '[[concepts/matricial-learning]]'
  type: related_to
---

# RAG in 2025: State of the Art and the Road Forward

**Speaker:** Tengyu Ma, MongoDB (acquired Voyage AI)
**Event:** AI Engineer World's Fair 2025
**Video:** https://www.youtube.com/watch?v=W_CYk2ogcDI

## TL;DR

Tengyu Ma argues that RAG is the superior approach for injecting proprietary enterprise knowledge into LLMs, outperforming both fine-tuning and long-context methods on cost-efficiency and practicality. He presents the state of embedding models in 2025 — with ~80% average retrieval accuracy across 100 datasets, significant scaling law improvements, and new techniques like matricial learning and quantization-aware training that reduce storage costs 10–100× with minimal accuracy loss. He then surveys RAG improvement techniques: hybrid search with re-rankers, query decomposition, and document enrichment.

## Problem / Motivation

Enterprise applications need to answer questions using proprietary internal data without leaking that data into the model. Three approaches exist:

1. **Long-context** — dump all documents into the model's context window (millions to billions of tokens)
2. **Fine-tuning** — update model parameters to internalize the document corpus
3. **RAG** — retrieve relevant document subsets on-the-fly and feed them to the model

Tengyu believes RAG is the right choice, drawing an analogy to how humans actually use knowledge:

- Long-context is like memorizing an entire library to answer a single question — wasteful and impractical at scale
- Fine-tuning is like rewiring your brain to memorize the library — difficult, hard to update, hard to forget, and creates data governance nightmares
- RAG is like going to a library, finding the relevant books, and reading only those — modular, reliable, fast, and cheap

## Method / Architecture

### The RAG Pipeline

Tengyu describes three components (two basic, one advanced):

1. **Embedding models** — vectorize documents and queries into semantic representations
2. **Vector database** — stores vectors and performs k-nearest-neighbor search in vector space
3. **LLM** — generates answers from retrieved documents (the generation step)

### Embedding Model Progress (2023–2025)

Significant improvements over the past 1.5 years:

- **Better accuracy**: New models from Voyage, Cohere, and others outperform OpenAI's text-embedding-ada-002 (v3)
- **Better scaling laws**: Same parameters → better quality, or same quality → fewer parameters → lower cost
- **Improved tuning stack**: Progress across data curation, data selection, architecture, loss functions, and evaluation
- **Current accuracy**: ~80% average across ~100 datasets (not uniform — half are 90–95%, some are 20–30%)
- **Headroom remains**: 20% improvement potential on average

### Matricial Learning and Quantization

Two techniques for reducing vector storage costs:

- **Matricial learning**: Use a subset of embedding dimensions (e.g., first 256 of 2048) with only 1–2% accuracy loss
- **Quantization-aware training**: Lower vector precision while maintaining performance; Voyage achieves 100× storage reduction with better accuracy than OpenAI's baseline

### RAG Improvement Techniques

Beyond better embeddings, several techniques improve retrieval quality:

- **Hybrid search + re-rankers**: Combine lexical search with vector search, then apply a re-ranker (Voyage provides one)
- **Query decomposition**: Expand the query using an LLM, then decompose into sub-queries for different document subsets
- **Document enrichment**: Add metadata (titles, headers) to documents before embedding

## Key Equations

Tengyu does not present formal equations. The key quantitative relationship is the accuracy–storage trade-off for matricial learning and quantization:

$$\text{Storage reduction} \times \text{Accuracy loss} \approx \text{Pareto frontier}$$

Where Voyage's models achieve a better Pareto frontier than competitors — 100× storage reduction with less than 5–10% accuracy loss, and 10× reduction with negligible loss.

## Results

| Technique | Storage Impact | Accuracy Impact |
|---|---|---|
| Matricial learning (256/2048 dims) | ~8× reduction | ~1–2% loss |
| Quantization (10×) | ~10× reduction | Negligible |
| Quantization (100×) | ~100× reduction | 5–10% loss |
| Domain-specific models | Variable | Better trade-off than general models |
| Average retrieval accuracy (2025) | — | ~80% across 100 datasets |

## Limitations

- Accuracy varies widely across datasets (20–95%); the 80% average masks this distribution
- The talk was brief (~9 minutes for techniques section), so many details are sketched rather than detailed
- No specific benchmark numbers or dataset names are provided
- The analogy between human library use and RAG is suggestive but not rigorously validated

## Related

- [[concepts/embedding-models]] — embedding models for RAG
- [[concepts/matricial-learning]] — dimensionality reduction for embeddings
- [[concepts/quantization-aware-training]] — QAT for embedding vectors
- [[concepts/hybrid-search]] — combining multiple search strategies
- [[concepts/re-ranking]] — two-stage retrieval with re-rankers
- [[concepts/query-decomposition]] — expanding queries into sub-queries
- [[concepts/context-length-scaling]] — long-context as alternative to RAG
- [[concepts/model-fine-tuning-data]] — fine-tuning as alternative to RAG
- [[entities/tengyu-ma]] — speaker, MongoDB (acq. Voyage AI)
- [[entities/voyage-ai]] — Tengyu's previous company, embedding model provider

## Sources

- AIEF2025 - RAG in 2025: State of the Art and the Road Forward — Tengyu Ma, MongoDB (acq. Voyage AI) - https://www.youtube.com/watch?v=W_CYk2ogcDI
