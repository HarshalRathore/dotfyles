---
title: "Neo4j"
tags:
  - company
  - graph-database
  - database
  - nosql
  - knowledge-graph
  - graphrag
sources:
  - "AIEF2025 - Why Your Agent's Brain Needs a Playbook: Practical Wins from Using Ontologies - Jesús Barrasa, Neo4j - https://www.youtube.com/watch?v=CbiR9xS2skQ"
  - "AI Engineer World's Fair 2025 talk — HybridRAG: A Fusion of Graph and Vector Retrieval — Mitesh Patel, NVIDIA - https://www.youtube.com/watch?v=-tgQa8Fzf80"
summary: "A graph database management system using a property graph model for storing, querying, and analyzing connected data. Pioneered GraphRAG architecture and ontology-driven dynamic retrieval via vector + graph integration."
provenance:
  extracted: 0.60
  inferred: 0.35
  ambiguous: 0.05
base_confidence: 0.42
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Neo4j

Neo4j is a graph database management system that uses a property graph model to store and query connected data. It is one of the most widely used graph databases for knowledge graph applications, with growing relevance in the AI and LLM ecosystem.

## Graph Database Capabilities

Neo4j implements the property graph model with two primitives: **nodes** (representing entities — people, objects, locations, events, documents) and **directed relationships** connecting them. Both carry **properties** — key-value pairs that can be numeric, string, or **vector** data types. This enables vector indexing and graph traversal to coexist in the same platform. ^[extracted]

## GraphRAG Architecture

[[entities/jesús-barrasa|Jesús Barrasa]] (Field CTO for AI at Neo4j) advanced Neo4j's role in [[concepts/graphrag|GraphRAG]] architecture, where a knowledge graph replaces a vector database as the primary retrieval index. Neo4j enables three retrieval strategies: ^[extracted]

1. **Vector semantic search** — over indexed embeddings stored as node properties
2. **Contextualization** — navigating graph relationships from matched nodes to enrich retrieved context
3. **Structured queries** — generating Cypher queries via text-to-query for precise factual retrieval

### Dual Graph Architecture

Neo4j-based GraphRAG systems built from unstructured data maintain two graph layers: ^[extracted]

- **Domain graph** — extracted entities and their typed relationships (the knowledge layer)
- **Lexical graph** — source document structure (chunks, sections, clauses) connected to the domain graph via entity-mention edges

These chunks store both raw text and vectorized representations, creating a combined vector + graph retrieval surface. ^[extracted]

## Ontology-Driven Retrieval

Neo4j supports [[concepts/ontology-driven-retrieval|ontology-driven retrieval]] — storing the domain ontology as data in the graph and querying it dynamically at retrieval time to control which relationships the retriever traverses. Relationship types can be annotated as "contextualizing," and changing these annotations in the ontology (a data artifact) changes retriever behavior without code changes. ^[extracted] This pattern was introduced by [[entities/jesús-barrasa|Jesús Barrasa]] at AIEF2025. ^[extracted]

## Mention at AI Engineer World's Fair 2025

At the AI Engineer World's Fair 2025, Neo4j had a booth presence. [[entities/mitesh-patel|Mitesh Patel]] (NVIDIA) mentioned he would be available at the Neo4j booth to answer questions about [[concepts/hybridrag|HybridRAG]] systems. ^[ambiguous] [[entities/jesús-barrasa|Jesús Barrasa]], Field CTO for AI at Neo4j, presented a talk on ontology-driven retrieval. ^[extracted]

## Related

- [[concepts/graphrag|GraphRAG]] — Neo4j is the graph storage backend for GraphRAG systems
- [[concepts/knowledge-graph-ontology-design|Knowledge Graph Ontology Design]] — Neo4j's schema design patterns for KGs
- [[concepts/ontology-driven-retrieval|Ontology-Driven Retrieval]] — retrieval pattern pioneered by Neo4j
- [[concepts/hybridrag|HybridRAG]] — graph + vector fusion architecture using Neo4j
- [[concepts/kag-knowledge-augmented-generation|KAG (Knowledge Augmented Generation)]] — wisdom-driven KAG architecture using Neo4j
- [[entities/jesús-barrasa|Jesús Barrasa]] — Field CTO for AI at Neo4j
- [[entities/nvidia|NVIDIA]] — co-presenting at Neo4j booth

## Sources

- [[references/aief2025-why-your-agent-brain-needs-playbook-ontologies-jesus-barrasa|AIEF2025 — Why Your Agent's Brain Needs a Playbook — Jesús Barrasa, Neo4j]] — Conference talk
- [[references/hybridrag-fusion-graph-vector-retrieval-mitesh-patel|HybridRAG: A Fusion of Graph and Vector Retrieval — Mitesh Patel, NVIDIA]] — Conference talk
