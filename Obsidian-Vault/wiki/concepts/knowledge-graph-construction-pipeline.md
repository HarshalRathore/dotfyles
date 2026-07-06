---
title: Knowledge Graph Construction Pipeline
category: concepts
tags:
- knowledge-graph
- graphrag
- construction
- pipeline
- entity-extraction
- lexical-graph
aliases:
- KG Construction
- Graph Building Pipeline
- Three-Phase Graph Construction
sources:
- 'AIEF2025 - Practical GraphRAG: Making LLMs smarter with Knowledge Graphs — Michael, Jesus, and Stephen, Neo4j - https://www.youtube.com/watch?v=XNneh6-eyPg'
- AIEF2025 - Multi Agent AI and Network Knowledge Graphs for Change — Ola Mabadeje, Cisco - https://www.youtube.com/watch?v=m0dxZ-NDKHo
provenance:
  extracted: 0.9
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.8
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/graphrag|GraphRAG]]'
  type: uses
- target: '[[concepts/lexical-graph|Lexical Graph]]'
  type: extends
- target: '[[concepts/domain-graph|Domain Graph]]'
  type: extends
- target: '[[concepts/triplet-extraction|Triplet Extraction]]'
  type: uses
summary: Knowledge Graph Construction Pipeline
---

# Knowledge Graph Construction Pipeline

The Knowledge Graph Construction Pipeline is the standard three-phase process for building a knowledge graph from unstructured source documents. It is the offline (pre-query) half of the GraphRAG architecture. ^[extracted]

## Phase 1: Lexical Graph Construction

Unstructured documents are chunked into a **lexical graph** — a graph that represents document structure (documents → chunks → sections → paragraphs) and their relationships. Each chunk stores both raw text and its vectorized embedding. The paragraph (or other semantically cohesive unit) is the target for vector embedding, and chunks are connected via predecessor/successor and parent/child edges. ^[extracted]

The lexical graph preserves the source document's structure so that retrieved context can be traced back to its origin. ^[extracted]

## Phase 2: Entity Extraction

LLMs extract entities and typed relationships from the lexical graph using a domain-specific graph schema. This produces a **domain graph** — a network of entities (people, places, concepts, organizations) connected by typed relationships (works\_for, located\_in, related\_to, etc.). ^[extracted]

The schema guides the LLM to produce consistent, queryable triplets. This is where [[concepts/triplet-extraction|triplet extraction]] from unstructured text happens. ^[extracted]

## Phase 3: Graph Enrichment

Graph algorithms enrich the domain graph with structural intelligence:

- **PageRank** — identifies the most important/central nodes in the graph
- **Community detection** (Louvain, Leiden) — groups related entities into communities
- **Community summarization** — generates natural-language summaries of each community's theme

These enrichments enable [[concepts/global-search-graphrag|global search]] capabilities and improve retrieval quality by surfacing latent structure. ^[extracted]

## Design Principle

The speakers emphasize: "in data engineering, if you want higher quality outputs, you must put in more effort at the beginning — nothing comes for free." The upfront investment in quality graph construction pays off multiple times through better retrieval, explainability, and analysis. ^[extracted]

## Related

- [[concepts/graphrag|GraphRAG]] — the online retrieval phase that follows construction
- [[concepts/lexical-graph|Lexical Graph]] — Phase 1 output
- [[concepts/domain-graph|Domain Graph]] — Phase 2 output
- [[concepts/graph-analytics-rag-curation|Graph Analytics for RAG Curation]] — graph algorithms applied to the chunk similarity graph (distinct from enrichment)
