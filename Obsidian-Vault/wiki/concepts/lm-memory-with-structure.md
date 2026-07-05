---
title: "LM Memory with Structure"
category: concepts
tags:
  - llm
  - memory
  - knowledge-graph
  - ai-applications
  - graphrag
aliases:
  - structured memory for LMs
sources:
  - "AIEF2025 - GraphRAG methods to create optimized LLM context windows for Retrieval — Jonathan Larson, Microsoft - https://www.youtube.com/watch?v=c5qJHr3DnT4"
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.65
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/graphrag|GraphRAG]]"
    type: implements
  - target: "[[concepts/agentic-rag|Agentic RAG]]"
    type: enables
  - target: "[[concepts/knowledge-graph-ontology-design|Knowledge Graph Ontology Design]]"
    type: uses
---

# LM Memory with Structure

**LM memory with structure** is the principle that structured memory — specifically knowledge graphs — is a key enabler for building effective AI applications. Unstructured memory (raw text, embeddings) is insufficient for complex reasoning tasks that require understanding relationships between entities. ^[extracted]

## Core Insight

Jonathan Larson's key thesis at AIEF2025: "LM memory with structure is just an absolutely key enabler for building effective AI applications." ^[extracted]

The idea is that LLMs, despite their generative capabilities, lack persistent structured memory. They can process text and generate responses, but they cannot maintain a persistent, queryable representation of how entities relate to each other across a corpus. Knowledge graphs fill this gap. ^[inferred]

## Structure vs. Unstructured Memory

| | Unstructured Memory | Structured Memory |
|---|---|---|
| Representation | Raw text, embeddings | Knowledge graph (entities + relationships) |
| Query type | Semantic similarity | Relationship traversal, aggregation |
| Multi-entity reasoning | Limited | Native |
| Explainability | Low | High (explicit paths) |
| Cross-document synthesis | Poor | Strong |

## Relationship to Agents

Larson's second key point: "Agents, paired with these structures, can provide something even more powerful." ^[extracted]

Agents that operate on structured memory (knowledge graphs) can perform operations that agents operating on unstructured memory cannot: precise aggregation, relationship-based filtering, and multi-hop reasoning. ^[inferred]

This connects to [[concepts/agentic-rag|Agentic RAG]] patterns where agents use the knowledge graph as their data layer rather than querying documents directly. ^[inferred]

## Sources

- AIEF2025 - GraphRAG methods to create optimized LLM context windows for Retrieval — Jonathan Larson, Microsoft - https://www.youtube.com/watch?v=c5qJHr3DnT4
