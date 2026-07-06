---
title: Vector Retrieval Limitations for Code
category: concepts
tags:
- rag
- code-understanding
- vector-search
- retrieval
- graphrag
aliases:
- vector RAG code limitations
- why vector search fails for code
sources:
- AIEF2025 - GraphRAG methods to create optimized LLM context windows for Retrieval — Jonathan Larson, Microsoft - https://www.youtube.com/watch?v=c5qJHr3DnT4
provenance:
  extracted: 0.75
  inferred: 0.2
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/graphrag|GraphRAG]]'
  type: solved-by
- target: '[[concepts/retrieval-augmented-generation|Retrieval Augmented Generation]]'
  type: contrasts-with
- target: '[[concepts/graphrag-code|GraphRAG for Code]]'
  type: motivates
summary: Vector Retrieval Limitations for Code
---

# Vector Retrieval Limitations for Code

Standard vector-based retrieval (the foundation of conventional RAG) has fundamental limitations when applied to code repositories. These limitations explain why [[concepts/graphrag-code|GraphRAG for Code]] outperforms standard RAG for repository-level code understanding. ^[extracted]

## The Aggregation Problem

Vector retrieval operates on individual chunks. When a question requires understanding information spread across multiple files — such as "describe what this application is and how it works" — no single chunk contains the complete answer. Vector search retrieves the most similar chunks, but if the answer requires aggregation across files, retrieval fails. ^[inferred]

**Example:** A 200-line terminal game across 7 files. Each file contains only a piece of the puzzle. Standard RAG retrieves chunks similar to the query but cannot aggregate the pieces into a coherent answer. ^[extracted]

## The Result: Generic, Useless Answers

When standard RAG fails to find a complete answer, it returns the best partial match — which is typically a generic description of code structure rather than code behavior: ^[extracted]

> "The application is designed as a game that is configured and initiated through a main function. The game leverages a configuration file and has its main components such as the game screen, game logic encapsulated in separate classes and functions."

This answer is technically accurate but contains zero actionable information. ^[extracted]

## Why GraphRAG Solves This

[[concepts/graphrag|GraphRAG]] constructs a knowledge graph that connects entities across files. When a global query arrives, the graph can be traversed to aggregate information from all relevant files before passing context to the LLM. This enables the system to answer questions that no single file can answer. ^[inferred]

## Implications for AI Coding Tools

The aggregation problem affects all AI coding tools that rely on vector-based retrieval: code search, code explanation, code translation, and feature development. Without structural understanding of cross-file dependencies, these tools produce superficial or incorrect results. ^[inferred]

## Sources

- AIEF2025 - GraphRAG methods to create optimized LLM context windows for Retrieval — Jonathan Larson, Microsoft - https://www.youtube.com/watch?v=c5qJHr3DnT4
