---
title: Graph vs Document Retrieval
tags:
- retrieval
- knowledge-graph
- rag
- agent
- architecture
aliases:
- Document-Only vs Graph Retrieval
- Structured vs Unstructured Retrieval
- Graph-Augmented Retrieval
sources:
- 'https://www.youtube.com/watch?v=j-9ebjbxcbg'
- 'https://www.youtube.com/watch?v=czm3cw6fdbs'
summary: The contrast between pure document-level retrieval (vector search on raw documents) and graph-based retrieval (structured entity-relationship queries), with the key insight that document-only retri...
provenance:
  extracted: 0.75
  inferred: 0.2
  ambiguous: 0.05
base_confidence: 0.45
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-04
relationships:
- target: '[[concepts/graphrag|GraphRAG]]'
  type: related_to
- target: '[[concepts/agentic-rag|Agentic RAG]]'
  type: related_to
- target: '[[concepts/triplet-extraction|Triplet Extraction]]'
  type: related_to
category: concepts
---

# Graph vs Document Retrieval

Graph versus Document retrieval describes the fundamental architectural choice in [[concepts/graphrag|GraphRAG]] systems: whether to index source documents as whole units (with embeddings and metadata) or to extract structured entities and relationships into a knowledge graph before retrieval. Zach Blumenfeld's AIEF2025 demonstration concretely shows why the latter is necessary for analytical and relationship-oriented queries. ^[extracted]

## The Document-Only Approach

In the baseline approach, resumes (PDFs) are loaded as documents with embeddings and metadata. An agent has a single tool — search documents — which performs semantic vector search. ^[extracted]

**What works:**
- Simple fact lookup ("find people who know Python")
- Semantic similarity for vague comparisons

**What fails:**
| Query Type | Document-Only Result | Why It Fails |
|---|---|---|
| Aggregation ("How many Python developers?") | Returns K=5 (the configured top-K) | Vector search can't count — it retrieves similar documents, not matching rows ^[extracted] |
| Similarity ("Who is most similar to Lucas?") | Returns partial matches based on semantic search terms | Can't compute structured overlap of skills, domains, accomplishments ^[extracted] |
| Analytics ("Summarize technical talent distribution") | Can't answer | Needs aggregation across population, not document retrieval ^[extracted] |
| Relationship ("Who collaborates with whom?") | Searches for "collaborators" in text | Collaboration data is embedded in prose, not queryable as relationships ^[extracted] |

The fundamental limitation: document retrieval treats each document as an opaque text blob. Queries that require counting, aggregating, or relationship traversal across the corpus are impossible without structured data extraction. ^[inferred]

## The Graph-Augmented Approach

By extracting structured entities (people, skills, accomplishments, domains) and loading them into a knowledge graph, the same queries become precise: ^[extracted]

| Query | Graph Approach |
|---|---|
| "How many Python developers?" | `MATCH (p:Person)-[:KNOWS]->(s:Skill {name:"Python"}) RETURN count(p)` — exact count ^[extracted] |
| "Who is most similar to Lucas?" | Traverse shared skills, domains, accomplishments and compute overlap — returns ranked list with explanation ^[extracted] |
| "Summarize technical talent distribution" | Aggregate across skill nodes, count people per skill, break down by domain ^[extracted] |
| "Who collaborates with whom?" | Traverse project-based collaboration edges between people ^[extracted] |

## Why Graphs Win for Structured Queries

Graph retrieval provides three capabilities that document-only retrieval cannot: ^[inferred]

1. **Aggregation** — SQL-like counting and grouping across entity types
2. **Relationship traversal** — Following explicit edges between entities (person → skill, person → project → person)
3. **Explainable similarity** — Computing overlap scores from shared graph neighbors, with a traceable explanation of which relationships contributed

## Relationship to Other Patterns

- [[concepts/graphrag|GraphRAG]] — the architecture that implements graph-based retrieval
- [[concepts/agentic-rag|Agentic RAG]] — agent-driven iterative retrieval, which benefits from graph's structured query capabilities ^[inferred]
- [[concepts/triplet-extraction|Triplet Extraction]] — the process of converting documents into graph entities
- [[concepts/multi-hop-retrieval|Multi-Hop Retrieval]] — traversal strategy enabled by the graph structure

## Sources

- [[references/aief2025-agentic-graphrag-zach-blumenfeld|AIEF2025 — Agentic GraphRAG — Zach Blumenfeld]] — Conference talk
