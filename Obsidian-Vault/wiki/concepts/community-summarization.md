---
title: "Community Summarization"
category: concepts
tags:
  - community-detection
  - graphrag
  - enrichment
  - summarization
  - graph-analytics
  - louvain
  - leiden
aliases:
  - Graph Community Summarization
  - Community Detection Summarization
sources:
  - "AIEF2025 - Practical GraphRAG: Making LLMs smarter with Knowledge Graphs — Michael, Jesus, and Stephen, Neo4j - https://www.youtube.com/watch?v=XNneh6-eyPg"
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
  - target: "[[concepts/graph-analytics-enrichment|Graph Analytics Enrichment]]"
    type: extends
  - target: "[[concepts/local-global-search-graphrag|Local and Global Search in GraphRAG]]"
    type: uses
  - target: "[[concepts/graphrag|GraphRAG]]"
    type: uses
---

# Community Summarization

Community summarization generates natural-language summaries for each community detected in a [[concepts/domain-graph|domain graph]]. It is one of the key algorithms in [[concepts/graph-analytics-enrichment|graph analytics enrichment]] and enables [[concepts/local-global-search-graphrag|global search]] in GraphRAG. ^[extracted]

## Process

1. **Community detection** — graph algorithms (Louvain, Leiden, or label propagation) group densely connected entities into communities
2. **Content collection** — for each community, collect all entities, relationships, and linked text content
3. **LLM summarization** — pass the community's content to an LLM to generate a natural-language summary describing the community's theme and key topics

## Use in GraphRAG

Community summaries serve as **high-level overviews** of clusters in the knowledge graph. During global search, the system can:

1. Match the query to relevant communities (via their summaries)
2. Retrieve the community summary as context
3. Drill down into specific entities within the matched community

This enables answering broad, exploratory questions ("What are the main themes?") that require understanding the entire corpus rather than a local neighborhood. ^[extracted]

## Algorithms

- **Louvain** — modularity-based community detection, fast, good for large graphs
- **Leiden** — improved version of Louvain that guarantees well-connected communities
- **Label propagation** — iterative label spreading, very fast, good for initial exploration

Neo4j's Graph Data Science (GDS) library provides all three algorithms. ^[inferred]

## Related

- [[concepts/graph-analytics-enrichment|Graph Analytics Enrichment]] — the Phase 3 process that includes community summarization
- [[concepts/pagerank-enrichment|PageRank Enrichment]] — the other key enrichment algorithm
- [[concepts/local-global-search-graphrag|Local and Global Search in GraphRAG]] — community summaries enable global search
- [[concepts/graphrag|GraphRAG]] — the architecture that benefits from community summarization
