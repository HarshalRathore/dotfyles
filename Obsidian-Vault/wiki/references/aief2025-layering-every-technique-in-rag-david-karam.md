---
title: AIEF2025 - Layering every technique in RAG, one query at a time — David Karam, Pi Labs
category: references
tags:
- aief2025
- talk
- rag
- retrieval
- bm25
- embeddings
- re-ranking
- quality-engineering
aliases:
- layering-every-technique-in-rag
sources:
- AIEF2025 - Layering every technique in RAG, one query at a time — David Karam, Pi Labs (fmr. Google Search) - https://www.youtube.com/watch?v=w9u11ioHGA0
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[entities/david-karam|David Karam]]'
  type: authored_by
- target: '[[entities/pi-labs|Pi Labs]]'
  type: presented_by
- target: '[[entities/aief2025|AIEF2025]]'
  type: presented_at
- target: '[[concepts/rag-pipeline-architecture|RAG Pipeline Architecture]]'
  type: related_to
- target: '[[concepts/re-ranking|Re-ranking]]'
  type: related_to
- target: '[[concepts/embedding-models|Embedding Models]]'
  type: related_to
summary: AIEF2025 - Layering every technique in RAG, one query at a time
---

# AIEF2025 - Layering every technique in RAG, one query at a time

**Speaker:** David Karam, Pi Labs (fmr. Google Search)
**Format:** Talk
**Source:** https://www.youtube.com/watch?v=w9u11ioHGA0
**Slides:** https://py.ai/rag-talk

## Summary

David Karam presents a practical framework for improving RAG system quality by starting with outcomes and working backward through a quality engineering loop — baseline, loss analysis, then technique selection based on complexity-adjusted impact. He catalogs the full spectrum of RAG techniques from in-memory retrieval through cross-encoder re-ranking, explaining when each works and when it fails.

## Key Concepts

### Quality Engineering Loop

Karam's central thesis is that teams often start with techniques (BM25? embeddings? re-rankers?) without first understanding what problem they're trying to solve. The correct approach is: ^[extracted]

1. **Start with outcomes** — define the quality bar you need to reach (your personal benchmark, not an external benchmark)
2. **Baseline** — measure current quality on an easy query set
3. **Loss analysis** — identify what's broken by looking at actual queries and cases
4. **Technique selection** — choose techniques based on complexity-adjusted impact (difficulty × impact)
5. **Iterate** — move to more complex techniques only when simpler ones fail ^[extracted]

The biggest mistake teams make is starting at step 4. Without knowing what's broken, you can't know whether BM25, vector retrieval, or re-ranking is the right choice. ^[inferred]

### Technique Catalog (Ordered by Complexity)

Karam presents techniques as a catalog to consult after loss analysis, not as a checklist to implement blindly: ^[extracted]

1. **In-memory retrieval** — Bring all documents into the LLM context window. Easiest technique; works when document count is small (e.g., NotebookLM with 5 documents). Fails when context is polluted or documents exceed window size. ^[extracted]
2. **BM25 / lexical search** — Term frequency, document length, term rarity. Easy to implement, works well for keyword-based queries. Fails for natural language / semantic queries. ^[extracted]
3. **Vector retrieval (embeddings)** — Semantic similarity in vector space. Handles nuance and natural language queries that BM25 misses. Fails for exact keyword matching. ^[extracted]
4. **Re-ranking (cross-encoders)** — Takes both query and document, attends to both simultaneously for a joint relevance score. More powerful than bi-encoder embeddings but expensive; only feasible on a smaller candidate set. ^[extracted]
5. **Beyond relevance** — Standard embeddings and re-rankers only measure semantic similarity (a proxy metric). Real ranking requires domain-specific signals, entity relationships, and application-specific criteria that relevance alone cannot capture. ^[extracted]

### Proxy Metric Problem

A key insight from Karam's Google Search experience: relevance is not ranking. ^[extracted]

Standard embeddings and re-rankers measure semantic similarity — a proxy for whether a document is relevant. But relevance does not equal ranking quality. Google Search learned over 15–20 years that what makes search "magical" involves many signals beyond relevance: freshness, authority, user satisfaction, domain-specific signals, and entity relationships. ^[extracted]

Karam illustrates this with a legal domain query that contains so much domain-specific semantics (e.g., the word "regime" as a legal term meaning "material") that no standard embedding or re-ranker can capture the full meaning. Domain-specific retrieval requires signals beyond semantic similarity. ^[inferred]

### When to Use BM25 vs Vector Search

Karam provides a practical decision framework: ^[extracted]

- **BM25 works when** queries look like keyword strings: "iPhone battery life", "Python list append", "React useEffect"
- **Vector search works when** queries look like natural language: "how long does an iPhone last before I need to charge it again", "what's the difference between let and const in JavaScript"

The recommendation: analyze your actual query set. If most queries are keyword-style, BM25 may be sufficient. If most are natural language, invest in embeddings. If both patterns exist, use hybrid search. ^[inferred]

### Complexity-Adjusted Impact

The guiding principle for technique selection: look at what's broken, and match the fix's complexity to the problem's severity. ^[extracted]

- **Easy + high impact** (e.g., adding BM25 to a pure vector system) → do it
- **Hard + high impact** (e.g., building custom embeddings) → only when the problem space justifies it (Harvey, the legal AI company, builds custom embeddings because relevance embeddings alone don't suffice for their domain)
- **Easy + low impact** → skip
- **Hard + low impact** → definitely skip

This is Karam's "stay lazy" principle: always look at actual cases, see what's working, see what's not, and only invest in techniques that move the needle. ^[extracted]

## Related

- [[concepts/rag-pipeline-architecture|RAG Pipeline Architecture]] — the standard architecture this talk builds on
- [[concepts/re-ranking|Re-ranking]] — cross-encoder re-ranking discussed in detail
- [[concepts/embedding-models|Embedding Models]] — vector retrieval foundation
- [[concepts/ai-powered-search|AI-Powered Search]] — BM25 vs semantic search distinction
- [[concepts/agentic-retrieval|Agentic Retrieval]] — the next evolution beyond single-shot retrieval
- [[references/aief2025-building-metrics-that-actually-work-david-karam-pi-labs|AIEF2025 - Building Metrics that actually work]] — David Karam's companion workshop on evaluation methodology
