---
title: Elastic
tags: [company, search, elasticsearch, observability]
sources:
  - "[[sources/watchv=4xe_imyxbqc]]"
  - "[[sources/watchv=l6_nigiexzq]]"
  - "AIEF2025 - Vector Search Benchmarking - Philipp Krenn, Elastic - https://www.youtube.com/watch?v=YrUBFXa1KUY"
summary: "Company behind Elasticsearch, the most downloaded and deployed search engine. Provides keyword search, vector search, hybrid search, and observability solutions built on Apache Lucene."
provenance:
  extracted: 0.80
  inferred: 0.20
  ambiguous: 0.00
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-03T08:30:00Z
updated: 2026-07-04
---

# Elastic

Company behind [[entities/apache-lucene|Elasticsearch]], the most downloaded and deployed search engine. Provides a full-stack search and observability platform.

## Observability Role

Elastic is one of the major observability tools mentioned by [[entities/anish-agarwal|Anish Agarwal]] as part of the status quo troubleshooting ecosystem. Alongside Grafana, Datadog, Splunk, and Sentry, Elastic provides dashboards that engineers must sift through during **dashboard dumpster diving** when production incidents occur.

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
- [[references/aief2025-vector-search-benchmarking-philipp-krenn-elastic|AIEF2025 - Vector Search Benchmarking]]
- [[concepts/hnsw-filtering-paradox|HNSW Filtering Paradox]]
- [[concepts/ann-quality-aware-benchmarking|ANN Quality-Aware Benchmarking]]
- [[concepts/nightly-regression-benchmarking|Nightly Regression Benchmarking]]
- [[concepts/dashboard-dumpster-diving]]

## Sources

- AI Engineer World's Fair 2025: <https://www.youtube.com/watch?v=4Xe_iMYxBQc>
- AI Engineer World's Fair 2025 (Anish Agarwal): <https://www.youtube.com/watch?v=L6_NiGIEXZQ>
- AI Engineer World's Fair 2025 (Vector Search Benchmarking): <https://www.youtube.com/watch?v=YrUBFXa1KUY>
- <https://www.elastic.co/>
