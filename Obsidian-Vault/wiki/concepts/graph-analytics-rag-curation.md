---
title: "Graph Analytics for RAG Curation"
tags:
  - rag
  - graph-analytics
  - community-detection
  - knowledge-graph
  - curation
  - retrieval
aliases:
  - Connect Cluster Curate
  - Graph Data Science for RAG
  - RAG Grounding Data Curation
sources:
  - "AIEF2025 - Graph Intelligence: Enhance Reasoning and Retrieval Using Graph Analytics - Alison & Andreas, Neo4j - https://www.youtube.com/watch?v=GGxAQVbwBL4"
  - "references/aief2025-graph-intelligence-alison-andreas-neo4j"
summary: "Applying graph data science algorithms — KNN similarity, community detection, PageRank, betweenness centrality — to curate and improve RAG grounding data quality at scale."
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.42
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Graph Analytics for RAG Curation

A framework for using graph data science algorithms to improve RAG grounding data quality at scale. Introduced by Alison Cosette ([[entities/neo4j|Neo4j]]) at AIEF2025, the approach follows three steps: **Connect → Cluster → Curate**. ^[extracted]

This is distinct from [[concepts/graphrag|GraphRAG]] itself: GraphRAG uses a knowledge graph *for retrieval*, whereas graph analytics for curation uses graph algorithms *on top of* existing retrieval data (chunks, embeddings) to diagnose and fix data quality issues. ^[inferred]

## Connect: Build a Similarity Graph

Document chunks from a vector store are independent rows with no relationship to each other. Running **KNN (K-Nearest Neighbors)** on their embeddings creates similarity edges, transforming the flat set into a connected graph. ^[extracted]

Typical parameters: K=25 creates similarity edges to the 25 nearest neighbors per chunk. The edges are weighted by similarity score. ^[extracted]

The KNN runs on a **graph projection** — a subgraph containing only the relevant nodes (chunks) and their embedding properties, not the entire database. ^[extracted]

## Cluster: Community Detection

With a similarity graph in place, apply **community detection** algorithms to group chunks into natural clusters: ^[extracted]

| Algorithm | Best For | Trade-off |
|-----------|----------|-----------|
| **Louvain** | Dense, connected graphs | Modularity optimization; standard choice |
| **Leiden** | Graphs with disconnected components | Handles disconnected subgraphs better |
| **Label Propagation** | Very large graphs | Fastest, but less nuanced |

Communities are defined by high **modularity** — dense internal connections with sparse connections to other groups. ^[extracted]

## Curate: Use Communities to Improve Data Quality

### Find Redundancy
- Highly similar communities (avg similarity > 0.95) with many members indicate duplicate or near-identical chunks. ^[extracted]
- **APOC node collapse** merges duplicate chunks into a single node while preserving all original source connections (lineage). This improves retrieval efficiency without data loss. ^[extracted]

### Detect Coverage Gaps
- Per-community summary statistics (median word count, chunk size, similarity distribution) reveal anomalies. ^[extracted]
- A community where median word count is 1 contains headings or navigation text — useless as grounding data. ^[extracted]
- Isolated communities with no cross-community connections may indicate a blind spot — content in a domain not linked to other knowledge areas. ^[inferred]

### Measure Diversity
- The **"chicken nuggets and Twinkies" problem**: cosine similarity creates homogeneous retrieval results — highly similar chunks give high confidence in a narrow idea rather than broad context. ^[extracted]
- Five principles of high-quality grounding data: relevant, augmenting, reliable, **variety (diverse)**, efficient. ^[extracted]

### Intelligent Outcome Management
- PageRank reveals the most influential documents — but requires scrutiny: high usage may indicate genuine importance or stale boilerplate. ^[extracted]
- Betweenness centrality identifies bridge documents connecting different communities — these may represent foundational knowledge. ^[extracted]

## Relation to GraphRAG

Graph analytics for curation complements GraphRAG, it does not replace it. GraphRAG constructs a knowledge graph from documents for structured retrieval. Graph analytics takes the *same chunks* and runs structural algorithms on their embedding similarity to detect curation issues. A production system can use both: GraphRAG for retrieval, graph analytics for ongoing data quality monitoring. ^[inferred]

## Related
- [[concepts/graphrag|GraphRAG]] — uses graphs for retrieval; graph analytics is a complementary curation capability
- [[concepts/application-observability-graph|Application Observability Graph]] — tracking runtime behavior as a graph
- [[concepts/re-ranking|Re-ranking]] — using community signals for diversity in re-ranking
- [[concepts/hybridrag|HybridRAG]] — graph + vector fusion
- [[concepts/knowledge-graph-ontology-design|Knowledge Graph Ontology Design]] — ontology design for graph construction
- [[references/aief2025-graph-intelligence-alison-andreas-neo4j|AIEF2025 — Graph Intelligence Talk]] — source talk
- [[entities/neo4j|Neo4j]] — database providing GDS algorithms

## Sources
- [[references/aief2025-graph-intelligence-alison-andreas-neo4j|AIEF2025 — Graph Intelligence: Enhance Reasoning and Retrieval Using Graph Analytics — Alison Cosette & Andreas, Neo4j]]
