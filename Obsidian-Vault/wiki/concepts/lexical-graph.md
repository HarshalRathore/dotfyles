---
title: "Lexical Graph"
category: concepts
tags:
  - knowledge-graph
  - graphrag
  - document-structure
  - chunks
  - retrieval
aliases:
  - Lexical Graph RAG
  - Document Graph
sources:
  - "AIEF2025 - Practical GraphRAG: Making LLMs smarter with Knowledge Graphs — Michael, Jesus, and Stephen, Neo4j - https://www.youtube.com/watch?v=XNneh6-eyPg"
provenance:
  extracted: 0.95
  inferred: 0.03
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/graphrag|GraphRAG]]"
    type: uses
  - target: "[[concepts/knowledge-graph-construction-pipeline|Knowledge Graph Construction Pipeline]]"
    type: extends
  - target: "[[concepts/domain-graph|Domain Graph]]"
    type: related_to
---

# Lexical Graph

A **lexical graph** is a graph structure that represents the document structure of source materials — documents, chunks, sections, and paragraphs — along with their hierarchical and sequential relationships. It is the first output of the [[concepts/knowledge-graph-construction-pipeline|knowledge graph construction pipeline]]. ^[extracted]

## Structure

The lexical graph captures:

- **Documents** — top-level source items (books, reports, articles)
- **Chunks** — subdivided portions of documents (paragraphs, sections)
- **Relationships** — parent/child (hierarchical) and predecessor/successor (sequential) edges between chunks

Each chunk stores both its raw text and a vectorized embedding, creating a combined retrieval surface. ^[extracted]

## Example Structures

- **Flat** — a simple sequential list of chunks (for plain documents)
- **Tree** — a richer hierarchical structure (for legal contracts with sections, subsections, definitions, clauses)

The structure chosen depends on the document type and the retrieval needs. ^[extracted]

## Role in GraphRAG

The lexical graph serves as the bridge between raw source documents and the [[concepts/domain-graph|domain graph]]. Entities mentioned in lexical chunks are linked to domain graph nodes via entity-mention edges, creating the dual-graph architecture that underpins GraphRAG retrieval. ^[extracted]

## Related

- [[concepts/domain-graph|Domain Graph]] — the knowledge layer extracted from the lexical graph
- [[concepts/graphrag|GraphRAG]] — dual-graph architecture (lexical + domain)
- [[concepts/knowledge-graph-construction-pipeline|Knowledge Graph Construction Pipeline]] — Phase 1 produces the lexical graph
