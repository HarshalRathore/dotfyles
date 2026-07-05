---
title: "AIEF2025 - When Vectors Break Down: Graph-Based RAG for Dense Enterprise Knowledge — Sam Julien, Writer"
tags:
  - rag
  - graphrag
  - vector-search
  - knowledge-graph
  - enterprise
  - chunking
  - hybrid-retrieval
  - conference-talk
  - aief2025
sources:
  - "AIEF2025 - When Vectors Break Down: Graph-Based RAG for Dense Enterprise Knowledge - Sam Julien, Writer - https://www.youtube.com/watch?v=XlAIgmi_Vow"
summary: "Sam Julien (Writer) traces the journey from naive vector search to graph-based RAG, explaining why vector retrieval fails on dense enterprise data and how Writer built a specialized model for graph construction."
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/graphrag|GraphRAG]]"
    type: related_to
  - target: "[[concepts/vector-similarity-vs-relevance|Vector Similarity vs. Relevance]]"
    type: related_to
  - target: "[[concepts/enterprise-rag|Enterprise RAG]]"
    type: extends
  - target: "[[entities/writer|Writer]]"
    type: related_to
  - target: "[[entities/sam-julien|Sam Julien]]"
    type: related_to
---

# AIEF2025 - When Vectors Break Down: Graph-Based RAG for Dense Enterprise Knowledge — Sam Julien, Writer

> Talk at AI Engineer World's Fair 2025. Sam Julien (Director of Developer Relations, Writer) traces the journey from naive vector search to graph-based RAG, explaining why vector retrieval fails on dense enterprise data and how Writer built a specialized model for graph construction.

## Summary

Sam Julien presents Writer's journey from standard vector-based RAG to a hybrid graph-based retrieval system, grounded in real-world experience building for Fortune 500 and Global 2000 companies in highly regulated industries (healthcare, finance). The core thesis: **vector search alone is insufficient for enterprise RAG at scale**, a point echoed by Joe Christian Burgum's analysis of the "rise and fall of the vector database infrastructure category."

## The Problem: Why Vector Search Breaks

Writer started with the standard pipeline: chunk → embed → vector DB → similarity search → LLM. Two major failure modes emerged:

### 1. Chunking and Nearest Neighbors Give Inaccurate Answers

Naive chunking can cause the nearest neighbor search to return incorrect facts. Sam's example: a text about Apple's founding timeline. When chunked naively, a nearest neighbor query for "when was Macintosh created" returns 1983 instead of 1984, because the Macintosh fact lands in the same chunk as the Lisa introduction (which was earlier). The vector embedding conflates proximity with correctness. ^[extracted]

### 2. Vector Search Fails on Concentrated Data

Enterprise documents tend to be highly concentrated in vocabulary — a mobile phone company's thousands of documents all discuss megapixels, cameras, battery life. When asked to compare two phone models, vector search returns a flood of semantically similar but unstructured results with no way to distinguish which facts apply to which model. ^[extracted]

## The Graph-Based RAG Solution

Writer moved to querying a graph database and returning relevant documents via keys, generating answers from structured context. This preserves relationships between text chunks and provides richer context to the model. ^[extracted]

The approach is especially powerful when combined with full-text and similarity search — a hybrid retrieval pattern. ^[extracted]

## Challenges Encountered

Writer's team ran into four specific challenges with graph databases:

1. **Converting data to structured graph was costly at scale** — As the graph scaled, they hit limits of team expertise and cost constraints. ^[extracted]
2. **Cypher struggled with advanced similarity matching** — LLMs performed better with text-based queries than complex graph structures. ^[extracted]
3. **Team expertise mismatch** — The problems were not fundamental to graph technology but reflected Writer's specific team capabilities. ^[extracted]
4. **Flexibility vs. specialization trade-off** — Deciding whether to build custom solutions or leverage existing tools. ^[inferred]

## Writer's Solution: Build a Specialized Model

The team's response was characteristically pragmatic: go back to their core expertise (building models) and build a specialized model trained to map enterprise data into graph structures of nodes and edges. This model could scale and run on CPUs or smaller GPUs. ^[extracted]

Sam notes this was necessary at the time because fast small models for this specific task didn't exist yet. Today, fine-tuning an existing small model might be the simpler path. ^[inferred]

## Writer's Research Team Structure

Writer's research team has four areas of focus:

1. **Enterprise models** — Palmyra X5 (the model powering the AI Engineer website)
2. **Practical evaluations** — Failsafe QA (finance benchmark)
3. **Domain-specific specialization** — Palmyra Med, Palmyra Fin
4. **Retrieval and knowledge integration** — Bringing enterprise data to work with models securely and reliably

The meta-lesson: the team is driven by **solving customer problems** rather than chasing hype or implementing specific solutions. This customer-first approach is what Sam considers the key to their success. ^[extracted]

## Key Takeaway

There are many ways to get the benefits of knowledge graphs in RAG. The journey and lessons learned along the way are often as valuable as the end result itself. Graph-based RAG is not a silver bullet — it's one component in a hybrid retrieval system that also includes full-text and similarity search. ^[extracted]

## Related

- [[concepts/graphrag|GraphRAG]] — the architecture discussed
- [[concepts/vector-similarity-vs-relevance|Vector Similarity vs. Relevance]] — why similarity ≠ relevance
- [[concepts/enterprise-rag|Enterprise RAG]] — the domain context
- [[concepts/hybrid-search|Hybrid Search]] — combining retrieval strategies
- [[references/aief2025-practical-graphrag-michael-jesus-stephen-neo4j|AIEF2025 — Practical GraphRAG (Neo4j)]] — complementary perspective
