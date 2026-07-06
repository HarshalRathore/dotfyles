---
title: Proxy Metric Problem
category: concepts
tags:
- proxy-metrics
- relevance
- ranking
- evaluation
- retrieval
- semantic-similarity
- aief2025
aliases:
- proxy metric
- relevance-vs-ranking
- proxy problem
summary: The problem of optimizing for a proxy metric (semantic similarity, relevance) that does not equal the actual goal (ranking quality). Standard embeddings and re-rankers only measure similarity, not...
sources:
- AIEF2025 - Layering every technique in RAG, one query at a time — David Karam, Pi Labs (fmr. Google Search) - https://www.youtube.com/watch?v=w9u11ioHGA0
provenance:
  extracted: 0.7
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[concepts/semantic-similarity|Semantic Similarity]]'
  type: contrasts_with
- target: '[[concepts/re-ranking|Re-ranking]]'
  type: relates_to
- target: '[[concepts/search-relevance|Search Relevance]]'
  type: relates_to
- target: '[[concepts/rag-pipeline-architecture|RAG Pipeline Architecture]]'
  type: applies_to
---

# Proxy Metric Problem

The proxy metric problem occurs when a system optimizes for a measurable proxy (semantic similarity, relevance score) that does not equal the actual goal (ranking quality, user satisfaction). In RAG systems, standard embeddings and re-rankers measure semantic similarity — a proxy for whether a document is relevant — but relevance is not ranking. ^[extracted]

## The Core Insight

Google Search learned over 15–20 years that what makes search "magical" involves many signals beyond relevance: freshness, authority, user satisfaction, domain-specific signals, and entity relationships. Semantic similarity alone cannot capture these. ^[extracted]

Karam's framing: ^[extracted]

> "These are all proxy metrics. At the end, your application is your application and your set of information needs is your set of information needs. You try to proxy with relevance. But relevance is not ranking."

## Why It Matters for RAG

Standard RAG systems use a single proxy metric — cosine similarity between query and document embeddings — as the sole signal for retrieval. This works well when:
- The query and document share semantic overlap
- The domain is general-purpose
- The information need aligns with topical similarity

It fails when:
- Domain-specific terminology carries meaning beyond semantics (e.g., "regime" as a legal term meaning "material")
- Entity relationships matter more than topical similarity
- Application-specific criteria (authority, recency, format) determine what's useful

## The Legal Domain Example

Karam illustrates the proxy metric problem with a legal domain query that contains so much domain-specific semantics that no standard embedding or re-ranker can capture the full meaning. The word "regime" in legal context means "material" — a specific legal term with a precise definition. A standard embedding model trained on general web text would not capture this domain-specific meaning, regardless of how sophisticated the re-ranker is. ^[inferred]

This is why Harvey (the legal AI company) builds custom embeddings and domain-specific signals — because proxy metrics from general models are insufficient for their use case. ^[extracted]

## Solutions

The proxy metric problem is addressed by:
1. **Domain-specific models** — Custom embeddings or re-rankers trained on domain data
2. **Additional signals** — Entity relationships, authority scores, freshness, format signals
3. **Application-specific evaluation** — Measuring actual user outcomes rather than proxy metrics
4. **Hybrid approaches** — Combining semantic similarity with keyword matching, graph signals, and domain rules

## Related

- [[concepts/semantic-similarity|Semantic Similarity]] — the proxy metric being critiqued
- [[concepts/re-ranking|Re-ranking]] — where proxy metrics are currently applied
- [[concepts/search-relevance|Search Relevance]] — the broader concept of relevance
- [[concepts/domain-specific-embedding-models]] — domain-specific models as a partial solution
- [[references/aief2025-layering-every-technique-in-rag-david-karam|AIEF2025 - Layering every technique in RAG]] — the source talk
