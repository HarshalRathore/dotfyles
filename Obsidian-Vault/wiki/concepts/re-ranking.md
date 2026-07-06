---
title: Re-ranking
category: concepts
tags: [search, ranking, two-stage-retrieval]
aliases: [re-rank, re-ranker]
sources: ["[[sources/ai-engineer-worlds-fair-2025-information-retrieval-from-the-ground-up-philipp-krenn]]", "https://www.youtube.com/watch?v=4xe_imyxbqc"]
summary: "Two-stage retrieval: retrieve a broad set of candidates with a cheap method, then re-score the top N with a more expensive, higher-quality model. Increasingly popular for improving search quality."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-03T08:30:00Z
updated: 2026-07-05
---

# Re-ranking

A two-stage retrieval architecture that balances cost and quality:

1. **First stage** — use a cheap retrieval method (keyword search, vector ANN) to get a broad set of candidate documents (e.g., top 1000)
2. **Second stage** — apply a more expensive, higher-quality scoring model to re-rank the candidate subset

This avoids running an expensive model across the entire corpus. ^[extracted]

## Cross-Encoders

When people say "re-ranker," they typically mean a cross-encoder. Unlike bi-encoder embeddings (which encode query and document separately and measure distance), cross-encoders take both the query and document as input and produce a joint relevance score by attending to both simultaneously. ^[extracted]

This architecture is more powerful than bi-encoders because it captures interactions between query terms and document terms that separate encodings miss. However, cross-encoders are significantly more expensive to compute, which is why they're only feasible on a smaller candidate set retrieved by a cheaper first-stage method. ^[extracted]

## The Proxy Metric Problem

Standard embeddings and re-rankers only measure semantic similarity — a proxy for relevance. But relevance is not ranking. Google Search learned over 15–20 years that what makes search "magical" involves many signals beyond relevance: freshness, authority, user satisfaction, domain-specific signals, and entity relationships. ^[extracted]

This limitation is especially acute in domain-specific contexts. For example, the word "regime" in legal context means "material" — a specific legal term with a precise definition. Standard embedding models trained on general web text cannot capture this domain-specific meaning, regardless of how sophisticated the re-ranker is. Harvey (the legal AI company) builds custom embeddings because proxy metrics from general models are insufficient for their use case. ^[inferred]

## Built-in Re-ranking

[[entities/elastic|Elasticsearch]] now includes a built-in neural re-ranking model accessible via the inference API. On customer datasets, this model reportedly boosts evaluation scores by ~10 points. ^[extracted]

Voyage AI provides re-rankers as part of its RAG toolkit, used in conjunction with embedding models to improve retrieval quality. Frank Liu (MongoDB, formerly Voyage AI) notes that re-ranking is a key component of production search systems, especially when combined with domain-specific embedding models. ^[extracted]


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
- Pinterest's LLM-based cross-encoder (Llama 3, 8B) achieved 12% improvement over a multilingual BERT-based relevance model and 20% over the previous search-stage embedding model, demonstrating that LLMs are highly effective for relevance prediction at the re-ranking stage. ^[inferred]

## Related

- [[concepts/hybrid-search|Hybrid Search]]
- [[concepts/reciprocal-rank-fusion|Reciprocal Rank Fusion]]
- [[concepts/dense-vector-search|Dense Vector Search]]
- [[concepts/lexical-search|Lexical Search]]
- [[concepts/query-decomposition]] — results from decomposed queries can be re-ranked
- [[concepts/domain-specific-embedding-models]] — domain-specific re-rankers for code, legal, etc.
- [[concepts/graph-analytics-rag-curation|Graph Analytics for RAG Curation]]
- [[concepts/application-observability-graph|Application Observability Graph]]
- [[concepts/information-retrieval|Information Retrieval]]
- [[concepts/intent-understanding]] — re-ranking improves intent-matching precision
- [[concepts/agentic-retrieval]] — results from agentic query decomposition are re-ranked


## Sources

- AI Engineer World's Fair 2025 — Philipp Krenn, Elastic: <https://www.youtube.com/watch?v=4Xe_iMYxBQc>
- [[references/aief2025-graph-intelligence-alison-andreas-neo4j|AIEF2025 — Graph Intelligence: Enhance Reasoning and Retrieval Using Graph Analytics — Alison Cosette & Andreas, Neo4j]] — Conference talk
- AIEF2025 - RAG in 2025: State of the Art and the Road Forward — Tengyu Ma, MongoDB (acq. Voyage AI) - https://www.youtube.com/watch?v=W_CYk2ogcDI
- AIEF2025 - The State of AI Powered Search and Retrieval — Frank Liu, MongoDB (prev Voyage AI) - https://www.youtube.com/watch?v=pIPtpBZ6TKk
