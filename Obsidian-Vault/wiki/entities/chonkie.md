---
title: Chonkie
category: entities
tags: [chunking, open-source, rag, python, retrieval, library]
aliases: [Chonkie]
sources:
  - "https://docs.chonkie.ai/oss/chunkers/code-chunker"
  - "https://towardsdatascience.com/how-cursor-actually-indexes-your-codebase/"
created: "2026-08-11"
updated: "2026-08-11"
summary: "Lightweight open-source chunking framework for RAG pipelines, with a dedicated CodeChunker that splits code by AST structure across 165+ languages (tree-sitter based)."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: "2026-08-11"
tier: supporting
---

# Chonkie

**Chonkie** is a lightweight open-source framework designed specifically for **code chunking** and other chunking techniques in RAG pipelines. ^[extracted]

## CodeChunker

Its flagship code-focused component splits code into chunks based on code structure using **Abstract Syntax Trees** — producing semantically coherent units (functions, classes, logical blocks) rather than arbitrary text splits. Supports 165+ languages via tree-sitter-language-pack, with optional Magika-based auto language detection. ^[extracted] See [[references/chonkie-code-chunker|CodeChunker deep-dive]].

## Significance

Featured in [[misc/web-towardsdatascience-com-how-cursor-actually-indexes|How Cursor Actually Indexes Your Codebase]] as the concrete example of the semantic code chunking step — the pattern of AST-driven chunking that production codebase RAG pipelines (like [[entities/cursor-ai|Cursor]]'s) use before embedding. ^[extracted]

## Concepts
- [[concepts/code-chunking|Code Chunking]]
- [[concepts/chunking-for-retrieval|Chunking for Retrieval]]
- [[concepts/codebase-rag|Codebase RAG]]

## Sources
- https://docs.chonkie.ai/oss/chunkers/code-chunker
- https://towardsdatascience.com/how-cursor-actually-indexes-your-codebase/
