---
title: Bi-Encoder Search
category: concepts
tags:
- bi-encoder
- search-relevance
- embedding
- offline-caching
- production-ml
- aief2025
aliases:
- bi-encoder search
- dual-encoder search
sources:
- AIEF2025 - What We Learned from Using LLMs in Pinterest — Mukuntha Narayanan, Han Wang, Pinterest - https://www.youtube.com/watch?v=XdAWgO11zuk
provenance:
  extracted: 0.75
  inferred: 0.2
  ambiguous: 0.05
base_confidence: 0.78
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/cross-encoder-relevance-model|Cross-Encoder Relevance Model]]'
  type: contrasted_with
- target: '[[concepts/knowledge-distillation-search|Knowledge Distillation for Search]]'
  type: used_in
- target: '[[concepts/re-ranking|Re-ranking]]'
  type: applied_in
- target: '[[concepts/hybrid-search|Hybrid Search]]'
  type: used_in
summary: Bi-Encoder Search
---

# Bi-Encoder Search

A search architecture where the **query and document are encoded separately** into independent embeddings, then compared via similarity scoring (e.g., cosine similarity). Unlike cross-encoders, bi-encoders do not allow token-level interaction between query and document, but they enable **offline caching** of document embeddings, making them practical for serving at massive scale. ^[extracted]

## Architecture

In a bi-encoder relevance model:

- **Pin embedding**: Computed once, cached offline, updated only when pin content changes significantly
- **Query embedding**: Computed in real-time at query time (queries are short, low token count)
- **Scoring**: Cosine similarity or dot product between the two embeddings
- **Additional features**: Graph stage embeddings, BM25 match statistics, and other signal features are combined with the embeddings

The student model distilled from Pinterest's teacher is a bi-encoder that uses predominantly the same text features as the cross-encoder teacher, but trades cross-attention for scalability. ^[extracted]

## Scaling Strategy

Pinterest's bi-encoder achieves production-scale serving through:

- **Offline pin embedding**: Billions of pin embeddings are pre-computed and cached; re-inference only runs on new or significantly changed pins
- **Real-time query embedding**: Query embeddings take only a few milliseconds (queries are short)
- **Query caching**: ~85% cache hit rate for repeated queries
- **No online LLM inference**: All LLM computation happens offline, not during user-facing search

This makes it feasible to serve relevance predictions across Pinterest's 6+ billion monthly searches. ^[extracted]

## Trade-offs vs Cross-Encoders

| Aspect | Bi-Encoder | Cross-Encoder |
|---|---|---|
| Query-doc interaction | None (separate encoders) | Full (concatenated) |
| Accuracy | Good (distilled from teacher) | Best (direct LLM) |
| Latency | Low (cached) | High (per-pair encoding) |
| Scalability | Excellent | Poor |
| Use case | Production serving | Teacher / re-ranking |

## Related

- [[concepts/cross-encoder-relevance-model|Cross-Encoder Relevance Model]] — the accuracy-focused alternative
- [[concepts/knowledge-distillation-search|Knowledge Distillation for Search]] — how bi-encoders are trained
- [[concepts/hybrid-search|Hybrid Search]] — bi-encoders often combined with BM25
- [[concepts/re-ranking|Re-ranking]] — where both architectures can be deployed

## Sources

- AIEF2025 - What We Learned from Using LLMs in Pinterest — Mukuntha Narayanan, Han Wang, Pinterest - https://www.youtube.com/watch?v=XdAWgO11zuk
