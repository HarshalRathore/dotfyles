---
title: Elastic
tags: [company, search, elasticsearch, observability]
sources: ["AI Engineer World's Fair 2025 - Information Retrieval from the Ground Up - Philipp Krenn, Elastic - https://www.youtube.com/watch?v=4Xe_iMYxBQc"]
summary: "Company behind Elasticsearch, the most downloaded and deployed search engine. Provides keyword search, vector search, hybrid search, and observability solutions built on Apache Lucene."
provenance:
  extracted: 0.80
  inferred: 0.20
  ambiguous: 0.00
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-03T08:30:00Z
updated: 2026-07-03T08:30:00Z
---

# Elastic

Company behind [[entities/apache-lucene|Elasticsearch]], the most downloaded and deployed search engine. Provides a full-stack search and observability platform.

## Search Capabilities

- **Keyword/Lexical search** — full BM25 scoring, language-specific analysis pipelines, custom tokenizers, stemming, stop word removal, n-gram support, fuzzy matching via Levenshtein automata ^[extracted]
- **Dense vector search** — supports any embedding model via inference API (e.g., OpenAI text-embedding-3-small); built on HNSW index with ongoing merge optimizations (8.11+, 9.0) ^[extracted]
- **Sparse vector search** — ELSER (Elastic's SPLADE-based learned sparse retrieval model) with term expansion and interpretable term-weight scoring ^[extracted]
- **Hybrid search** — multi-method retrievers in a single query with Reciprocal Rank Fusion (RRF) blending ^[extracted]
- **Built-in re-ranking** — neural re-ranker model that reportedly boosts evaluation scores by ~10 points on customer datasets ^[extracted]
- **ES|QL** — new query language as an alternative to JSON-based queries, supporting joins and aggregations with a shell-like syntax ^[extracted]

## Related

- [[entities/philipp-krenn]]
- [[entities/apache-lucene]]
- [[concepts/bm25-scoring]]
- [[concepts/inverted-index]]
- [[concepts/hybrid-search]]
- [[concepts/reciprocal-rank-fusion]]
- [[references/information-retrieval-ground-up-philipp-krenn-elastic-2025]]

## Sources

- AI Engineer World's Fair 2025: <https://www.youtube.com/watch?v=4Xe_iMYxBQc>
- <https://www.elastic.co/>
