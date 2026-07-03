---
title: Re-ranking
tags: [search, ranking, two-stage-retrieval]
sources: ["AI Engineer World's Fair 2025 - Information Retrieval from the Ground Up - Philipp Krenn, Elastic - https://www.youtube.com/watch?v=4Xe_iMYxBQc"]
summary: "Two-stage retrieval: retrieve a broad set of candidates with a cheap method, then re-score the top N with a more expensive, higher-quality model. Increasingly popular for improving search quality."
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

# Re-ranking

A two-stage retrieval architecture that balances cost and quality:

1. **First stage** — use a cheap retrieval method (keyword search, vector ANN) to get a broad set of candidate documents (e.g., top 1000)
2. **Second stage** — apply a more expensive, higher-quality scoring model to re-rank the candidate subset

This avoids running an expensive model across the entire corpus. ^[extracted]

## Built-in Re-ranking

[[entities/elastic|Elasticsearch]] now includes a built-in neural re-ranking model accessible via the inference API. On customer datasets, this model reportedly boosts evaluation scores by ~10 points. ^[extracted]

## Key Parameters

- **Candidate window size** — larger window = slower but potentially higher quality results ^[extracted]
- **Minimum score cutoff** — discard clearly irrelevant candidates before re-ranking to reduce cost ^[extracted]
- **Per-method weights** — in score-based hybrid fusion (vs [[concepts/reciprocal-rank-fusion|RRF]]), each retrieval method can be weighted independently ^[extracted]

## Compared to RRF

Re-ranking applies a *single* high-quality model to a pooled candidate set, while [[concepts/reciprocal-rank-fusion|RRF]] blends the *original* scores/positions from different methods. They can be combined: retrieve with multiple methods, pool candidates, then re-rank the pool. ^[inferred]

## Diversity-Aware Re-Ranking

Beyond relevance, re-ranking can optimize for **diversity** — ensuring the final result set covers multiple knowledge areas rather than clustering around a single concept. Graph-based signals provide effective diversity signals: ^[inferred]

- **Community membership** — after running community detection on document chunks (via KNN similarity graph + Louvain/Leiden), each chunk has a community ID. A diversity re-ranker can promote results from different communities, ensuring breadth. ^[extracted]
- **PageRank** — weight by document importance, promoting influential (frequently retrieved, highly connected) documents over obscure ones. ^[extracted]
- **Betweenness centrality** — identifies bridge documents that connect otherwise separate knowledge communities. These are disproportionately valuable for cross-domain queries. ^[extracted]

This addresses a limitation of pure cosine similarity: similarity-only retrieval produces homogeneous results ("chicken nuggets and Twinkies" problem) where top-K chunks all belong to one cluster, providing narrow context despite high confidence. ^[extracted] Graph-based diversity re-ranking is a built-in capability of [[concepts/graph-analytics-rag-curation|graph analytics for RAG curation]] using the [[entities/neo4j|Neo4j]] GDS library. ^[extracted]

## Related

- [[concepts/hybrid-search|Hybrid Search]]
- [[concepts/reciprocal-rank-fusion|Reciprocal Rank Fusion]]
- [[concepts/dense-vector-search|Dense Vector Search]]
- [[concepts/lexical-search|Lexical Search]]
- [[concepts/graph-analytics-rag-curation|Graph Analytics for RAG Curation]]
- [[concepts/application-observability-graph|Application Observability Graph]]
- [[concepts/information-retrieval|Information Retrieval]]

## Sources

- AI Engineer World's Fair 2025 — Philipp Krenn, Elastic: <https://www.youtube.com/watch?v=4Xe_iMYxBQc>
- [[references/aief2025-graph-intelligence-alison-andreas-neo4j|AIEF2025 — Graph Intelligence: Enhance Reasoning and Retrieval Using Graph Analytics — Alison Cosette & Andreas, Neo4j]] — Conference talk
