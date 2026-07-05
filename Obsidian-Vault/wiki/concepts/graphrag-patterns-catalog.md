---
title: "GraphRAG Patterns Catalog"
category: concepts
tags:
  - graphrag
  - patterns
  - knowledge-graph
  - neo4j
  - cypher
aliases:
  - GraphRAG.com
  - GraphRAG Design Patterns
sources:
  - "AIEF2025 - Practical GraphRAG: Making LLMs smarter with Knowledge Graphs — Michael, Jesus, and Stephen, Neo4j - https://www.youtube.com/watch?v=XNneh6-eyPg"
provenance:
  extracted: 0.90
  inferred: 0.07
  ambiguous: 0.03
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/graphrag|GraphRAG]]"
    type: related_to
  - target: "[[concepts/lexical-graph|Lexical Graph]]"
    type: related_to
  - target: "[[concepts/domain-graph|Domain Graph]]"
    type: related_to
---

# GraphRAG Patterns Catalog

The GraphRAG Patterns Catalog is a curated collection of named patterns for building GraphRAG applications, maintained at **GraphRAG.com** by [[entities/michael-hunger|Michael Hunger]] and [[entities/stephen-shin|Stephen Shin]] of Neo4j. ^[extracted]

## Structure

Each pattern in the catalog includes:

- **Name** — a descriptive identifier for the pattern
- **Description** — what the pattern does and when to use it
- **Context** — the situation or problem the pattern addresses
- **Example graph** — a visual representation of the graph structure
- **Query** — the Cypher query used to extract or traverse the pattern

## Covered Patterns

The catalog includes patterns for:

- **Lexical graph** — representing document structure (documents → chunks → sections)
- **Domain graph** — extracted entities and typed relationships
- **Hybrid approaches** — mixing lexical and domain graphs for combined retrieval
- **Entity-mention edges** — linking domain entities to the lexical chunks where they appear

## Purpose

The catalog captures patterns observed from GraphRAG users and customers, as well as patterns from research papers. It serves as a practical reference for practitioners building GraphRAG systems, providing reusable blueprints rather than abstract principles. ^[extracted]

## Related

- [[concepts/graphrag|GraphRAG]] — the architecture these patterns serve
- [[concepts/lexical-graph|Lexical Graph]] — a pattern in the catalog
- [[concepts/domain-graph|Domain Graph]] — a pattern in the catalog
- [[concepts/knowledge-graph-construction-pipeline|Knowledge Graph Construction Pipeline]] — the process these patterns support
