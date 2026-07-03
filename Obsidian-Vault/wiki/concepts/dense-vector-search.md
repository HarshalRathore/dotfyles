---
title: Dense Vector Search
tags: [search, vector, embeddings, semantic-search]
aliases: [vector search, semantic search, dense retrieval]
sources: ["AI Engineer World's Fair 2025 - Information Retrieval from the Ground Up - Philipp Krenn, Elastic - https://www.youtube.com/watch?v=4Xe_iMYxBQc"]
summary: "Semantic search using dense floating-point embeddings. Documents and queries are represented in high-dimensional vector space; similarity measured by vector distance. Quality depends entirely on model choice."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
tier: supporting
created: 2026-07-03T08:30:00Z
updated: 2026-07-03T08:30:00Z
---

# Dense Vector Search

Documents (or chunks of documents) are represented as dense floating-point vectors — embeddings — in a high-dimensional space. Queries are embedded with the same model, and similarity is measured by vector distance (cosine similarity, dot product, etc.). ^[extracted]

## How It Works

A machine learning model maps text to a fixed-length array of floats. Unlike labelable dimensions (e.g., "realistic" vs "cartoonish" in a simplified 2D example), real embeddings have hundreds of unlabeled, model-learned dimensions. Similar concepts cluster together in this space. ^[extracted]

## Properties

| Property | Implication |
|---|---|
| **Always returns results** | Every query vector has some distance to every document vector — there is no clean cutoff point for relevance ^[extracted] |
| **Model-dependent quality** | The embedding model determines what "similar" means; requires evaluation on your specific data and queries ^[extracted] |
| **Dimension count tradeoff** | More dimensions = potentially more expressive but more expensive. No hard rule for the right number ^[extracted] |
| **Chunking-dependent** | How you split documents (by page, paragraph, sentence, overlapping or not) directly impacts retrieval quality ^[extracted] |

## Key Differences from Lexical Search

- Lexical search can give zero results (no exact match) which is sometimes the worst outcome. Dense always returns something, but that something may be unrelated. ^[extracted]
- Lexical search excels at brand names and exact identifiers where vector models fail because there's no semantic representation for a specific brand string. ^[extracted]
- Vector search benefits from more query context (sentence vs single word) while keyword search handles single-word queries well. ^[extracted]

## Infrastructure

- Built on HNSW (Hierarchical Navigable Small World) index structure for approximate nearest neighbor search ^[extracted]
- HNSW has high write-time cost due to immutable segment merging; recent Elasticsearch versions (8.11+, 9.0) include significant merge optimizations ^[extracted]
- Embedding dimension: model-dependent (e.g., 128d for OpenAI text-embedding-3-small demo model, thousands for larger models) ^[extracted]

## Related

- [[concepts/sparse-vector-retrieval]]
- [[concepts/hybrid-search]]
- [[concepts/chunking-for-retrieval]]
- [[concepts/information-retrieval]]
- [[concepts/re-ranking]]

## Sources

- AI Engineer World's Fair 2025 — Philipp Krenn, Elastic: <https://www.youtube.com/watch?v=4Xe_iMYxBQc>
