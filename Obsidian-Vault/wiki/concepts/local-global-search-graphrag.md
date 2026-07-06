---
title: Local and Global Search in GraphRAG
category: concepts
tags:
- graphrag
- retrieval
- search
- knowledge-graph
- neo4j
aliases:
- GraphRAG Search Strategies
- Local Search GraphRAG
- Global Search GraphRAG
sources:
- 'AIEF2025 - Practical GraphRAG: Making LLMs smarter with Knowledge Graphs — Michael, Jesus, and Stephen, Neo4j - https://www.youtube.com/watch?v=XNneh6-eyPg'
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/graphrag|GraphRAG]]'
  type: uses
- target: '[[concepts/multi-hop-retrieval|Multi-Hop Retrieval]]'
  type: uses
- target: '[[concepts/community-summarization|Community Summarization]]'
  type: uses
summary: Local and Global Search in GraphRAG
---

# Local and Global Search in GraphRAG

Local and global search are the two primary retrieval strategies in GraphRAG, operating on the [[concepts/domain-graph|domain graph]] after construction. They were popularized by the Microsoft GraphRAG paper and are standard patterns in Neo4j-based implementations. ^[extracted]

## Local Search

Local search answers queries by finding entities directly relevant to the query terms and traversing their immediate neighborhood in the graph. It retrieves connected entities and their relationships within a bounded hop distance, then passes the subgraph context to the LLM. ^[extracted]

Local search is best for:
- Factual queries about specific entities ("What does X do?")
- Queries where the answer is contained in a local cluster of the graph
- High-precision, low-recall scenarios

## Global Search

Global search answers queries by examining the **entire graph** (or its major communities). It leverages [[concepts/community-summarization|community summarization]] — natural-language summaries generated for each community detected by graph algorithms — to provide a high-level overview before drilling down. ^[extracted]

Global search is best for:
- Broad, exploratory queries ("What are the main themes in the dataset?")
- Summarization-style questions
- Queries that require understanding relationships across the entire corpus

## Relationship to Graph Enrichment

Global search depends on Phase 3 enrichment (PageRank, community detection, community summarization) from the [[concepts/knowledge-graph-construction-pipeline|construction pipeline]]. Local search can operate on the raw domain graph without enrichment, though enrichment improves its quality. ^[inferred]

## Related

- [[concepts/graphrag|GraphRAG]] — the architecture these strategies serve
- [[concepts/multi-hop-retrieval|Multi-Hop Retrieval]] — the traversal mechanism for local search
- [[concepts/community-summarization|Community Summarization]] — the enrichment that enables global search
- [[concepts/knowledge-graph-construction-pipeline|Knowledge Graph Construction Pipeline]] — Phase 3 enrichment feeds global search
