---
title: Local and Global Queries in GraphRAG
category: concepts
tags:
- graphrag
- retrieval
- querying
- knowledge-graph
- code-understanding
sources:
- AIEF2025 - GraphRAG methods to create optimized LLM context windows for Retrieval — Jonathan Larson, Microsoft - https://www.youtube.com/watch?v=c5qJHr3DnT4
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/graphrag|GraphRAG]]'
  type: extends
- target: '[[concepts/graphrag-code|GraphRAG for Code]]'
  type: used-in
- target: '[[concepts/multi-hop-retrieval|Multi-Hop Retrieval]]'
  type: related_to
summary: Local and Global Queries in GraphRAG
---

# Local and Global Queries in GraphRAG

Local and global queries are two distinct query paradigms in [[concepts/graphrag|GraphRAG]] systems, distinguished by the scope of the knowledge graph that must be traversed to answer a question. ^[extracted]

## Global Queries

A **global query** requires understanding the entire repository or corpus to answer correctly. It cannot be answered by examining any single file or document in isolation. ^[extracted]

**Example:** "Describe what this application is and how it works" applied to a 200-line terminal game across 7 files. A standard [[concepts/retrieval-augmented-generation|RAG]] system returns a generic, useless answer ("it's a game configured through a main function"). GraphRAG returns a precise answer: "a terminal-based interactive game featuring a player character that can jump vertically, obstacles that move horizontally, and keyboard controls via space bar." ^[extracted]

Global queries exploit the graph's ability to aggregate information across many disconnected source nodes through multi-hop traversal. ^[inferred]

## Local Queries

A **local query** focuses on a specific file, module, or entity within the corpus. It can be answered by examining a narrower slice of the knowledge graph. ^[extracted]

**Example:** "What does this specific file do?" or "Show me the details of the sound system module in Doom." Local queries provide drill-down capability from global summaries to specific implementation details. ^[extracted]

## The Contrast with Standard RAG

The local/global distinction reveals a fundamental limitation of standard vector-based RAG: it cannot perform true global queries because vector search operates on individual chunks. A standard RAG system retrieves the most similar chunks to a query, but if no single chunk contains the answer to a global question, the retrieval fails. ^[inferred]

GraphRAG solves this by constructing a knowledge graph that connects entities across files, enabling aggregation queries that no single chunk can answer. ^[inferred]

## Applications in Code Understanding

In the coding domain, local and global queries map to different developer workflows: ^[inferred]

- **Global:** "What is the overall architecture of this repository?" "Translate this Python codebase to Rust." "What features can be added to Doom?"
- **Local:** "What does this function do?" "Show me the implementation of the jump mechanic." "Which files handle sound?"

## Sources

- AIEF2025 - GraphRAG methods to create optimized LLM context windows for Retrieval — Jonathan Larson, Microsoft - https://www.youtube.com/watch?v=c5qJHr3DnT4
