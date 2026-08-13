---
title: Code Chunking
category: concepts
tags: [chunking, code-rag, tree-sitter, ast, retrieval, semantic-search]
aliases:
  - semantic code chunking
  - AST-based chunking
sources:
  - "https://towardsdatascience.com/how-cursor-actually-indexes-your-codebase/"
  - "https://docs.chonkie.ai/oss/chunkers/code-chunker"
created: "2026-08-11"
updated: "2026-08-11"
summary: "Splitting source code into semantically coherent units (functions, classes, logical blocks) using ASTs rather than character counts — chunk boundaries land between functions, not inside them."
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.7
lifecycle: draft
lifecycle_changed: "2026-08-11"
tier: supporting
relationships:
  - target: '[[concepts/chunking-for-retrieval]]'
    type: extends
---

# Code Chunking

**Code chunking** is the practice of breaking source code into meaningful, semantically coherent units — functions, classes, and logical code blocks — rather than splitting text arbitrarily. It is the first stage of [[concepts/codebase-rag|codebase RAG]]: chunks that respect code semantics produce more accurate retrieval and more useful generation downstream. ^[extracted]

## Why Code Chunking Differs from Text Chunking

Unlike documents, source code is already well structured, so pipelines skip document parsing and go straight to chunking. Splits tend to be created **between functions rather than inside them**, and **between statements rather than mid-line**. A chunk is only split mid-block when size constraints require it. ^[extracted]

## AST-Based Approach

Naive character-count or regex splitting doesn't preserve code structure. The standard approach: ^[extracted]

1. Parse the code with a source-code parser (e.g. [[concepts/tree-sitter|tree-sitter]]) into an **abstract syntax tree (AST)** — a tree-shaped representation of logical units (functions, classes, methods, blocks).
2. Traverse AST nodes, grouping adjacent ones until a **token limit** is reached.

This yields chunks that are both semantically coherent and size-bounded. Example: `x = a + b` is seen as `Assignment → Variable(x) + BinaryExpression(+) → Variable(a), Variable(b)`, not as a string. ^[extracted]

## Implementation: Chonkie CodeChunker

[[entities/chonkie|Chonkie]]'s `CodeChunker` is a reference implementation: 165+ languages via tree-sitter-language-pack, Magika auto-detection, `chunk_size` token bound (default 2048), batch chunking, and a uniform `Chunk` dataclass (text, start/end index, token_count, optional context and embedding). ^[extracted] See [[references/chonkie-code-chunker|the deep-dive]].

## Relationship to General Chunking

General [[concepts/chunking-for-retrieval|chunking for retrieval]] (by page/paragraph/sentence/overlap) applies to unstructured documents. Code chunking is the structured-code specialization: the "paragraph" boundary is the function/class boundary, and the syntax tree supplies the segmentation signal. ^[inferred]

## Related
- [[concepts/codebase-rag|Codebase RAG]] — the pipeline code chunking feeds
- [[concepts/chunking-for-retrieval|Chunking for Retrieval]] — general strategies this extends
- [[concepts/embedding-based-search|Embedding-Based Search]] — what consumes the chunks
- [[entities/chonkie|Chonkie]] — open-source implementation
- [[entities/cursor-ai|Cursor]] — production user of this pattern

## Sources
- https://towardsdatascience.com/how-cursor-actually-indexes-your-codebase/
- https://docs.chonkie.ai/oss/chunkers/code-chunker
