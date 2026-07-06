---
title: Graph Analytics Enrichment
category: concepts
tags:
- knowledge-graph
- graphrag
- graph-analytics
- pagerank
- community-detection
- enrichment
aliases:
- Graph Algorithm Enrichment
- Post-Construction Graph Analytics
sources:
- 'AIEF2025 - Practical GraphRAG: Making LLMs smarter with Knowledge Graphs — Michael, Jesus, and Stephen, Neo4j - https://www.youtube.com/watch?v=XNneh6-eyPg'
provenance:
  extracted: 0.9
  inferred: 0.07
  ambiguous: 0.03
base_confidence: 0.8
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/graphrag|GraphRAG]]'
  type: uses
- target: '[[concepts/knowledge-graph-construction-pipeline|Knowledge Graph Construction Pipeline]]'
  type: extends
- target: '[[concepts/pagerank-enrichment|PageRank Enrichment]]'
  type: related_to
- target: '[[concepts/community-summarization|Community Summarization]]'
  type: related_to
summary: Graph Analytics Enrichment
---

# Graph Analytics Enrichment

Graph analytics enrichment is Phase 3 of the [[concepts/knowledge-graph-construction-pipeline|knowledge graph construction pipeline]]. After entities and relationships are extracted into a domain graph, graph algorithms are applied to discover and encode latent structure that improves retrieval quality. ^[extracted]

## Algorithms Used

- **PageRank** — ranks nodes by importance/centrality in the graph. High PageRank nodes are hub entities that connect many others, making them valuable context anchors for retrieval.
- **Community detection** (Louvain, Leiden, label propagation) — groups densely connected entities into communities. Communities reveal thematic clusters in the data.
- **Community summarization** — generates natural-language summaries of each community's content and themes, enabling [[concepts/global-search-graphrag|global search]] over the corpus.

## Role in GraphRAG

Enrichment transforms a flat entity-relationship graph into a **structurally intelligent** graph. The enriched graph enables:

- Better local search (PageRank-weighted context selection)
- Global search (community summaries provide high-level overviews)
- Explainability (community structure provides interpretable groupings)

## Distinction from Graph Analytics for Curation

Graph analytics enrichment operates on the **entity knowledge graph** (the domain graph). This is distinct from graph analytics for RAG curation (the Connect → Cluster → Curate framework), which operates on the **chunk similarity graph** for data quality purposes. Both can coexist in the same database. ^[inferred]

## Related

- [[concepts/knowledge-graph-construction-pipeline|Knowledge Graph Construction Pipeline]] — Phase 3
- [[concepts/pagerank-enrichment|PageRank Enrichment]] — centrality algorithm for entity ranking
- [[concepts/community-summarization|Community Summarization]] — natural-language summaries of graph communities
- [[concepts/graph-analytics-rag-curation|Graph Analytics for RAG Curation]] — distinct: operates on chunk similarity graph, not entity graph
