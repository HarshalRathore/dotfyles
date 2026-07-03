---
title: Sparse Vector Retrieval
tags: [search, embeddings, learned-sparse]
aliases: [learned sparse retrieval, ELSER, SPLADE, sparse embeddings]
sources: ["AI Engineer World's Fair 2025 - Information Retrieval from the Ground Up - Philipp Krenn, Elastic - https://www.youtube.com/watch?v=4Xe_iMYxBQc"]
summary: "Learned sparse retrieval (ELSER/SPLADE) represents text as a list of expanded terms with relevance weights. More interpretable than dense vectors but expensive at query time due to many OR-style matches."
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

# Sparse Vector Retrieval

A learned retrieval approach bridging keyword search and dense vectors. The text is represented as a **sparse vector** — a list of tokens with learned relevance weights, typically 100+ expanded terms per document. The main model used is SPLADE; [[entities/elastic|Elastic]]'s implementation is called ELSER. ^[extracted]

## How It Works

1. The text is run through a learned model that expands each input into a larger set of related terms with relevance scores ^[extracted]
2. This term-weight map is stored in the [[concepts/inverted-index|inverted index]] using standard term-based data structures ^[extracted]
3. At query time, the query is similarly expanded into a sparse vector ^[extracted]
4. Document-query relevance is computed by multiplying matching term weights and summing them ^[extracted]

## Properties

| Property | vs Dense Vectors | vs Keyword Search |
|---|---|---|
| **Interpretability** | More interpretable — you can see *which* terms matched and at what weight (e.g., searching "machine" matched via expanded term "puppet") | Less interpretable than exact keyword match but provides broader coverage |
| **Query time cost** | Expensive — query expansion generates many terms that create broad OR matches across the index | More expensive than pure keyword, more efficient than dense ANN on some workloads |
| **Score range** | No natural ceiling; scores vary between queries | BM25 provides relative ranking |
| **Language support** | Currently English-only (ELSER) | Language-agnostic with proper analyzer |

A potential hybrid approach is storing text multiple ways and weighting them differently — exact matches ranked highest, then sparse vector matches for expansion. ^[inferred]

## Related

- [[concepts/dense-vector-search]]
- [[concepts/hybrid-search]]
- [[concepts/lexical-search]]
- [[entities/elastic]]
- [[concepts/information-retrieval]]

## Sources

- AI Engineer World's Fair 2025 — Philipp Krenn, Elastic: <https://www.youtube.com/watch?v=4Xe_iMYxBQc>
