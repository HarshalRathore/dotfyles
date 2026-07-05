---
title: "Vector Similarity vs. Relevance"
category: concepts
tags:
  - vector-database
  - rag
  - retrieval
  - graphrag
  - similarity
  - relevance
aliases:
  - Similarity Is Not Relevance
  - Vector Search Limitations
sources:
  - "AIEF2025 - Practical GraphRAG: Making LLMs smarter with Knowledge Graphs — Michael, Jesus, and Stephen, Neo4j - https://www.youtube.com/watch?v=XNneh6-eyPg"
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.80
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/graphrag|GraphRAG]]"
    type: contradicts
  - target: "[[concepts/semantic-similarity|Semantic Similarity]]"
    type: related_to
  - target: "[[concepts/hybrid-search|Hybrid Search]]"
    type: related_to
---

# Vector Similarity vs. Relevance

A core insight from GraphRAG advocates: **vector similarity is not the same as relevance**. This distinction is fundamental to understanding why knowledge graphs improve retrieval over vector-only RAG systems. ^[extracted]

## The Problem

Vector databases retrieve passages by computing semantic similarity between the query embedding and document chunk embeddings. This approach has inherent limitations: ^[extracted]

- **Partial retrieval** — only a fraction of relevant information is pulled back (limited by top-K settings)
- **Topic proximity ≠ relevance** — results are related to the query topic but not necessarily the most relevant or complete answer
- **No structural context** — vector search cannot capture relationships between entities or multi-hop reasoning
- **Unexplainable** — similarity scores are opaque; there is no way to explain why a particular chunk was retrieved

## The GraphRAG Alternative

Knowledge graphs retrieve by **traversing entity-relationship edges** rather than computing embedding distances. This provides: ^[extracted]

- **Complete retrieval** — graph traversal can collect all connected entities, not just top-K
- **Structural relevance** — relevance is determined by relationship paths, not embedding distance
- **Explainability** — the retrieval path (entity → relationship → entity) is explicit and traceable
- **Multi-hop reasoning** — relationships can be followed across multiple hops for contextual enrichment

## Practical Example

| Query | Vector-Only Result | Graph-Based Result |
|---|---|---|
| "How many Python developers?" | Returns K=5 (top-K limit) | Returns actual count via aggregation |
| "Who is most similar to X?" | Semantic search match (opaque) | Shared skills/relationships (explainable) |
| "Summarize talent distribution" | Cannot answer | Aggregates counts per skill/domain |

This table is adapted from [[entities/zach-blumenfeld|Zach Blumenfeld]]'s AIEF2025 demonstration of agentic GraphRAG. ^[inferred]

## Relationship to Hybrid Approaches

Hybrid retrieval (vector + graph) attempts to combine the strengths of both approaches — using vector search as an entry point into the graph, then enriching via graph traversal. This is the approach recommended by [[entities/neo4j|Neo4j]] and implemented in their property graph model with vector integration. ^[extracted]

## Related

- [[concepts/graphrag|GraphRAG]] — the architecture that addresses this problem
- [[concepts/semantic-similarity|Semantic Similarity]] — what vector search measures
- [[concepts/hybrid-search|Hybrid Search]] — combining vector and graph approaches
- [[concepts/re-ranking|Re-ranking]] — post-retrieval relevance scoring

## Writer Case Study

[[entities/writer|Writer]] encountered these limitations firsthand. Their vector-based RAG failed on two fronts: (1) naive chunking caused nearest neighbor search to return incorrect facts (e.g., Macintosh founding year), and (2) concentrated enterprise vocabulary (thousands of documents all discussing megapixels, cameras, battery life) made comparison queries impossible. They addressed this by building a specialized model for graph construction and moving to hybrid graph-based retrieval. ^[extracted]
