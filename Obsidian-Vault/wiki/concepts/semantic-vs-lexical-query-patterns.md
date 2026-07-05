---
title: Semantic vs Lexical Query Patterns
category: concepts
tags: [query-patterns, bm25, embeddings, lexical-search, semantic-search, hybrid-search, aief2025]
aliases: [query-style, keyword-vs-natural-language, query-pattern-matching]
summary: "Two dominant query styles: keyword-style queries (short, term-based, matched by BM25) and natural-language queries (conversational, matched by vector search). Analyzing your query set determines which retrieval technique to use."
sources:
  - "AIEF2025 - Layering every technique in RAG, one query at a time — David Karam, Pi Labs (fmr. Google Search) - https://www.youtube.com/watch?v=w9u11ioHGA0"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/lexical-search|Lexical Search]]"
    type: relates_to
  - target: "[[concepts/dense-vector-search|Dense Vector Search]]"
    type: relates_to
  - target: "[[concepts/hybrid-search|Hybrid Search]]"
    type: combines
  - target: "[[concepts/quality-engineering-loop]]"
    type: used_in
---

# Semantic vs Lexical Query Patterns

Users express information needs in two fundamentally different styles, each better served by a different retrieval technique: ^[extracted]

## Keyword-Style Queries (Lexical)

Short, term-based queries that match document content through string identity:

- "iPhone battery life"
- "Python list append"
- "React useEffect"

These queries work well with **BM25 / lexical search** because:
- The terms in the query appear directly in the target documents
- No semantic understanding is needed — exact term matching suffices
- BM25's term frequency and inverse document frequency scoring is optimized for this pattern

## Natural-Language Queries (Semantic)

Conversational, full-sentence queries that express intent rather than terms:

- "How long does an iPhone last before I need to charge it again?"
- "What's the difference between let and const in JavaScript?"
- "Why does my React component re-render on every keystroke?"

These queries work well with **vector retrieval / embeddings** because:
- The query and target documents share semantic meaning but not exact terms
- Vector space captures the nuance that keyword matching misses
- The LLM's training on natural language makes its embeddings well-suited for this pattern

## The Decision Framework

Karam's practical recommendation: analyze your actual query set. ^[extracted]

1. Collect a representative sample of real user queries
2. Classify each as keyword-style or natural-language
3. If most are keyword-style → BM25 may be sufficient
4. If most are natural-language → invest in embeddings
5. If both patterns exist → use hybrid search (BM25 + vector)

This is the core of the quality engineering loop: don't guess which technique to use — look at your actual queries and let the data decide. ^[extracted]

## Why This Matters

The most common mistake in RAG projects is implementing a technique without understanding the query patterns it needs to serve. Teams often default to vector search because it's the "modern" approach, when their users actually type keyword-style queries that BM25 handles better and cheaper. ^[inferred]

Conversely, teams that only use BM25 miss natural-language queries that their users actually type, because BM25 cannot match "how long does an iPhone last" to a document about "iPhone battery duration." ^[inferred]

## Related

- [[concepts/lexical-search|Lexical Search]] — how BM25 handles keyword queries
- [[concepts/dense-vector-search|Dense Vector Search]] — how embeddings handle natural language queries
- [[concepts/hybrid-search|Hybrid Search]] — combining both approaches
- [[concepts/quality-engineering-loop]] — the process that uses query analysis for technique selection
- [[concepts/rag-pipeline-architecture|RAG Pipeline Architecture]] — where retrieval techniques are applied
- [[references/aief2025-layering-every-technique-in-rag-david-karam|AIEF2025 - Layering every technique in RAG]] — the source talk
