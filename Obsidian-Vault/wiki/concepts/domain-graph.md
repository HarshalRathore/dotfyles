---
title: "Domain Graph"
category: concepts
tags:
  - knowledge-graph
  - graphrag
  - entities
  - relationships
  - ontology
aliases:
  - Domain Knowledge Graph
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
  - target: "[[concepts/lexical-graph|Lexical Graph]]"
    type: related_to
  - target: "[[concepts/knowledge-graph-construction-pipeline|Knowledge Graph Construction Pipeline]]"
    type: extends
  - target: "[[concepts/knowledge-graph-ontology-design|Knowledge Graph Ontology Design]]"
    type: uses
---

# Domain Graph

A **domain graph** is the knowledge layer of a GraphRAG system — a network of extracted entities (people, places, concepts, organizations, events) connected by typed relationships (works\_for, located\_in, related\_to, etc.). It is the second output of the [[concepts/knowledge-graph-construction-pipeline|knowledge graph construction pipeline]]. ^[extracted]

## Construction

The domain graph is built from the [[concepts/lexical-graph|lexical graph]] via LLM-guided entity extraction using a domain-specific [[concepts/knowledge-graph-ontology-design|ontology]]. The ontology defines the entity types and relationship types that the LLM should extract, ensuring consistency and queryability. ^[extracted]

## Role in GraphRAG

The domain graph is the primary retrieval index in GraphRAG. When a query arrives, the system:

1. Identifies relevant entities in the domain graph
2. Traverses relationships to collect connected entities and context
3. Passes the traversed subgraph to the LLM for response generation

The domain graph captures **relationships between entities in structured form**, enabling multi-hop reasoning and precise factual retrieval that vector-only systems cannot provide. ^[extracted]

## Relationship to Lexical Graph

The lexical graph and domain graph form the **dual-graph architecture** of GraphRAG. The lexical graph preserves source document structure; the domain graph captures extracted knowledge. They are connected via entity-mention edges — each domain entity is linked to the lexical chunks where it was mentioned. ^[extracted]

## Related

- [[concepts/lexical-graph|Lexical Graph]] — the document structure layer
- [[concepts/graphrag|GraphRAG]] — dual-graph architecture
- [[concepts/knowledge-graph-ontology-design|Knowledge Graph Ontology Design]] — schema that guides extraction
- [[concepts/knowledge-graph-construction-pipeline|Knowledge Graph Construction Pipeline]] — Phase 2 produces the domain graph
