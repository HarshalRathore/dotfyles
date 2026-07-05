---
title: "AIEF2025 — Why Your Agent's Brain Needs a Playbook: Practical Wins from Using Ontologies — Jesús Barrasa, Neo4j"
category: references
tags:
  - ai-engineering
  - knowledge-graph
  - ontology
  - graphrag
  - neo4j
  - retrieval
  - aief2025
aliases:
  - Jesús Barrasa AIEF2025
  - Ontologies for Agents
sources:
  - "[[sources/watchv=cbir9xs2skq]]"
summary: "Jesús Barrasa, Field CTO for AI at Neo4j, demonstrates how ontologies serve as an implementation-agnostic schema that drives both knowledge graph construction and dynamic retrieval behavior, solving the schema divergence problem across structured and unstructured data pipelines."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
relationships:
  - target: "[[concepts/graphrag|GraphRAG]]"
    type: related_to
  - target: "[[concepts/knowledge-graph-ontology-design|Knowledge Graph Ontology Design]]"
    type: related_to
  - target: "[[concepts/ontology-driven-retrieval|Ontology-Driven Retrieval]]"
    type: related_to
  - target: "[[entities/neo4j|Neo4j]]"
    type: related_to
  - target: "[[entities/jesús-barrasa|Jesús Barrasa]]"
    type: related_to
---

# AIEF2025 — Why Your Agent's Brain Needs a Playbook: Practical Wins from Using Ontologies

> [[entities/jesús-barrasa|Jesús Barrasa]], Field CTO for AI at [[entities/neo4j|Neo4j]], presents ontologies as the missing link between knowledge graphs and LLMs — providing a formal, shared, implementation-agnostic schema that unifies graph construction across pipelines and enables dynamic retriever behavior when stored as data in the graph itself.

## Overview

Jesús Barrasa begins with a brief refresher on [[concepts/graphrag|GraphRAG]] as an architecture where a knowledge graph replaces a vector database as the primary retrieval index. The core advantage is a richer collection of retrieval strategies: not just vector semantic search, but also contextualization via graph relationships and structured queries via Cypher. ^[extracted]

He then identifies a critical problem: building graphs from different data sources (structured vs unstructured) requires injecting a schema, but each pipeline uses a different representation — JSON, Pydantic classes, or natural language prompts. This **schema divergence** is "not ideal to manage." Ontologies solve this by providing a shared, formal, implementation-agnostic domain description — "a formal schema that's implementation agnostic." ^[extracted]

The talk presents two key wins: (1) ontologies as a model-driven approach for graph creation that works for both pipelines, and (2) storing the ontology in the graph itself to drive **dynamic retriever behavior**, where changing the ontology (a data artifact) changes retriever behavior on the fly. ^[extracted]

## Key Ideas

### GraphRAG as Richer Retrieval

GraphRAG replaces the vector database with a knowledge graph built on a graph database. The retrieval flow is the same — user prompt → retrieval from a controlled knowledge base → response — but the knowledge graph enables: ^[extracted]

- **Vector semantic search** over indexed embeddings (same capability as vector DB)
- **Contextualization** — results enriched by navigating graph relationships from the matched node
- **Structured queries** — Cypher queries generated via text-to-query for precise factual retrieval

The result: better completeness, relevance, precision, and faithfulness than vector-only RAG. ^[extracted]

### The Property Graph Model

[[entities/neo4j|Neo4j]] implements the property graph model with two primitives: ^[extracted]

- **Nodes** — represent entities (people, objects, locations, events, documents)
- **Relationships** — directed connections between nodes

Both carry **properties** — key-value pairs (string, numeric, or **vector**). The ability to store vector embeddings as node properties means vector indexing and graph traversal coexist in the same platform. ^[extracted]

### Dual Graph Architecture

When building a graph from unstructured data, Barrasa describes two layers: ^[extracted]

1. **Domain graph** — the extracted entities and their relationships (the "knowledge" layer)
2. **Lexical graph** — representation of source document structure (chunks, sections, clauses) connected to the domain graph via entity-mention edges

The lexical graph can be a simple sequential list of chunks, or a richer tree for structured documents like legal contracts with sections, subsections, definitions, and clauses. These chunks store both raw text and vectorized representations. ^[extracted]

### The Schema Divergence Problem

Building a graph requires injecting a target schema — whether from structured data (tables → graph mapping) or unstructured data (entity extraction prompt). The problem: each path uses a different schema representation: ^[extracted]

- **Structured pipeline** — JSON-based graph model, or visual UI mapping
- **Unstructured pipeline** — Pydantic class definitions, or natural language prompts

This divergence is "not ideal to manage." The solution: ontologies as a general, agnostic approach to representing schemas. ^[extracted]

### Ontologies as Implementation-Agnostic Schema

An ontology is "a shared description of a domain" — a formal schema defined by W3C standards (OWL, RDF), serializable in XML, JSON, or other formats. What an ontology describes maps directly to a graph model: ^[extracted]

- **Classes** — match graph node labels (e.g., Privately Held Company, Stock Corporation)
- **Subclass relationships** — one class is a subcategory of another
- **Inter-class relationships** — connections of other nature (e.g., "governed by a board agreement")

Barrasa cites the **FIBO ontology** (Financial Industry Business Ontology) as a real-world public example. The key insight: being model-driven "not only because it's data engineering good practice, but because it will build a better graph in the first place" — and pays dividends in the retrieval phase. ^[extracted]

### Win #1: Model-Driven Graph Construction

Using an ontology as the schema driver for both structured and unstructured pipelines means: ^[extracted]

- One source of truth for entity types, relationship types, and constraints
- Consistent extraction regardless of pipeline choice
- Better quality graph from the start
- Text-to-Cypher generation yields better, more accurate queries when the ontology is well-defined

### Win #2: Ontology-Driven Dynamic Retrieval

The talk's signature contribution: storing the ontology *in the graph itself* as data enables dynamic retriever behavior. ^[extracted]

The mechanism: ^[inferred]

1. Vector search finds relevant nodes (entry point into the graph)
2. The retriever queries the stored ontology to find which relationships are annotated as "contextualizing"
3. Only those annotated relationships are traversed to enrich the context
4. Because the ontology is data (not code), **changing the ontology changes retriever behavior on the fly**

This creates a level of indirection: "I can change my ontology and by changing my ontology, which is a data artifact in my graph, I'm changing the behavior of my retriever on the fly and dynamically." ^[extracted]

Barrasa demonstrates this with a movie database example: the ontology annotates "ACTED_IN" as a contextualizing relationship, so the retriever navigates from a matched movie node through actors rather than producers or directors — controlled entirely by the ontology as data. ^[extracted]

## Key Takeaways

1. **Ontologies for graph creation** — implementation-agnostic data model that unifies structured and unstructured pipeline schema injection
2. **Ontologies for dynamic retrieval** — persisted in the graph, they drive retriever behavior with data-level control rather than hard-coded logic ^[extracted]

## Notable Quotes

> "An ontology is just a shared description of a domain. You can think of it as a formal schema that's implementation agnostic." ^[extracted]

> "Be model driven — not only because it's data engineering good practice, but because it will build a better graph in the first place. And it will pay dividends in the long run." ^[extracted]

> "I can change my ontology and by changing my ontology, which is a data artifact in my graph, I'm changing the behavior of my retriever on the fly and dynamically." ^[extracted]

## Related

- [[concepts/graphrag|GraphRAG]] — core architecture discussed
- [[concepts/knowledge-graph-ontology-design|Knowledge Graph Ontology Design]] — ontology design for extraction
- [[concepts/ontology-driven-retrieval|Ontology-Driven Retrieval]] — dynamic retrievers driven by stored ontologies
- [[concepts/kag-knowledge-augmented-generation|KAG (Knowledge Augmented Generation)]] — related wisdom-driven graph approach
- [[concepts/hybridrag|HybridRAG]] — graph + vector fusion
- [[concepts/triplet-extraction|Triplet Extraction]] — constructing nodes and edges for the domain graph
- [[entities/jesús-barrasa|Jesús Barrasa]] — speaker
- [[entities/neo4j|Neo4j]] — speaker's company

## Sources

- <https://www.youtube.com/watch?v=CbiR9xS2skQ> — Full talk recording
