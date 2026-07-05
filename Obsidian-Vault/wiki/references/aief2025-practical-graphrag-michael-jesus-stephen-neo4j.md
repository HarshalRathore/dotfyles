---
title: "AIEF2025 — Practical GraphRAG: Making LLMs smarter with Knowledge Graphs — Michael, Jesus, and Stephen, Neo4j"
category: references
tags:
  - ai-engineering
  - knowledge-graph
  - graphrag
  - neo4j
  - aief2025
  - retrieval
  - enterprise-ai
aliases:
  - Practical GraphRAG Neo4j
  - AIEF2025 GraphRAG Neo4j
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
  - target: "[[concepts/graphrag|GraphRAG]]"
    type: related_to
  - target: "[[entities/michael-hunger|Michael Hunger]]"
    type: related_to
  - target: "[[entities/stephen-shin|Stephen Shin]]"
    type: related_to
  - target: "[[entities/jesús-barrasa|Jesús Barrasa]]"
    type: related_to
  - target: "[[references/aief2025-graph-intelligence-alison-andreas-neo4j|AIEF2025 — Graph Intelligence — Alison & Andreas, Neo4j]]"
    type: related_to
---

# AIEF2025 — Practical GraphRAG: Making LLMs smarter with Knowledge Graphs

> **Speakers:** [[entities/michael-hunger|Michael Hunger]] (VP of Product Innovation, Neo4j), [[entities/stephen-shin|Stephen Shin]] (Head of Developer Relations, Neo4j), [[entities/jesús-barrasa|Jesús Barrasa]] (Field CTO for AI, Neo4j)
> **Event:** AI Engineer World's Fair 2025
> **Source:** [YouTube](https://www.youtube.com/watch?v=XNneh6-eyPg)

## Overview

A comprehensive introduction to GraphRAG from three Neo4j leaders, covering the case for knowledge graphs in enterprise AI, the three-phase knowledge graph construction pipeline, and real-world evidence of GraphRAG's impact. The speakers co-authored *GraphRAG: The Definitive Guide* for O'Reilly. ^[extracted]

## The Case for GraphRAG

LLMs lack enterprise domain knowledge, cannot verify or explain answers, are subject to hallucinations, and raise ethical and data bias concerns — compared to "a friendly parrot" that mimics without understanding. ^[extracted]

The solution: ground LLMs with domain-specific knowledge via knowledge graphs. The speakers frame this as a **data problem** — you need good data to power your system. ^[extracted]

### Why Vector-Only RAG Falls Short

- Vector databases pull back only a **fraction** of the information via similarity algorithms ^[extracted]
- Modern vector databases are easy to start with but **not robust, not mature**, and lack scalability and fallback for enterprise systems ^[extracted]
- **Vector similarity is not the same as relevance** — results are related to the topic but not necessarily complete or truly relevant ^[extracted]
- Hard to explain what comes out of a vector-only system ^[extracted]

### The Two-Brain Analogy

The speakers use a cognitive analogy: the human brain's right side is creative, builds things, and extrapolates (like LLMs); the left side is logical, has facts, reasoning, and enriches data (like knowledge graphs). Knowledge graphs are built from nodes, relationships, and properties — a simple example shows two people sharing a car where ownership and driving are separate roles. ^[extracted]

## Knowledge Graph Construction Pipeline

Three phases to build a knowledge graph from unstructured data: ^[extracted]

1. **Lexical Graph Construction** — Unstructured documents are chunked into a lexical graph representing documents, chunks, and their relationships (e.g., book → chapters → sections → paragraphs). Paragraphs serve as the semantically cohesive unit for vector embedding.
2. **Entity Extraction** — LLMs extract entities and relationships from the lexical graph using a graph schema, creating a domain graph.
3. **Graph Enrichment** — Graph algorithms (PageRank, community detection, community summarization) enrich the domain graph with structural intelligence.

The principle: "in data engineering, if you want higher quality outputs, you must put in more effort at the beginning — nothing comes for free." ^[extracted]

## Evidence and Industry Adoption

### Microsoft GraphRAG Paper

The foundational Microsoft Research paper showed that GraphRAG can deliver **better results with less token cost** — it was actually less expensive than standard RAG. ^[extracted]

### DataWorld Study

A comparison of RAG on SQL versus RAG on graph databases showed a **three-times improvement** in accuracy of LLM responses when using graph databases. ^[extracted]

### LinkedIn Customer Support

LinkedIn published a research paper showing that using a knowledge graph for customer support scenarios gave better results: median per-issue resolution time was **reduced by 28.6%**. ^[extracted]

### Gartner Hype Cycle (2024)

Gartner shows generic AI trending down, RAG getting over the hump, while **GraphRAG and related patterns** are providing new life to the AI ecosystem. Analysts report GraphRAG is grounded in facts, resolves hallucinations, and that knowledge graphs + AI together solve these problems. ^[extracted]

## GraphRAG Patterns Catalog

The speakers introduced GraphRAG.com — a catalog of named patterns for building GraphRAG applications. Each pattern includes: ^[extracted]

- A name and description
- Example graphs showing the structure
- Context explaining when to use it
- Cypher queries for extracting the information

The catalog covers patterns like lexical graphs, domain graphs, and hybrid approaches. ^[extracted]

## Key Takeaways

1. Knowledge graphs provide **context-rich, grounded, explainable** retrieval that vector-only systems cannot ^[extracted]
2. The three-phase construction pipeline (lexical → entity extraction → enrichment) is the standard approach ^[extracted]
3. Real-world evidence shows significant improvements: 3x accuracy (DataWorld), 28.6% faster resolution (LinkedIn), lower token costs (Microsoft) ^[extracted]
4. GraphRAG is trending up on Gartner's hype cycle, positioned as the pattern that breathes new life into AI systems ^[extracted]
5. The patterns catalog at GraphRAG.com provides reusable blueprints for practitioners ^[extracted]

## Related

- [[concepts/graphrag|GraphRAG]] — the overarching architecture
- [[concepts/knowledge-graph-construction-pipeline|Knowledge Graph Construction Pipeline]] — the three-phase process
- [[concepts/lexical-graph|Lexical Graph]] — document structure representation
- [[concepts/vector-similarity-vs-relevance|Vector Similarity vs. Relevance]] — why vectors alone are insufficient
- [[references/aief2025-graph-intelligence-alison-andreas-neo4j|AIEF2025 — Graph Intelligence — Alison & Andreas, Neo4j]] — companion Neo4j talk on graph analytics

## Sources

- [YouTube: Practical GraphRAG: Making LLMs smarter with Knowledge Graphs](https://www.youtube.com/watch?v=XNneh6-eyPg)
