---
title: tree-sitter
category: concepts
tags: [parser, ast, code-analysis, chunking]
aliases: [Tree-sitter]
sources:
  - "https://towardsdatascience.com/how-cursor-actually-indexes-your-codebase/"
  - "https://docs.chonkie.ai/oss/chunkers/code-chunker"
created: "2026-08-11"
updated: "2026-08-11"
summary: "Incremental source-code parser that produces syntax trees for hundreds of languages; the parsing foundation for AST-based code chunking."
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.7
lifecycle: draft
lifecycle_changed: "2026-08-11"
tier: peripheral
---

# tree-sitter

**tree-sitter** is an incremental source-code parser that converts raw code into an **abstract syntax tree (AST)** for hundreds of languages. It is the standard parsing foundation for AST-based [[concepts/code-chunking|code chunking]] — e.g. [[entities/chonkie|Chonkie]]'s CodeChunker is powered by tree-sitter-language-pack — and is widely used in editors and code analysis tooling. ^[extracted]

## Related
- [[concepts/code-chunking|Code Chunking]] — built on tree-sitter parsing
- [[concepts/codebase-rag|Codebase RAG]] — the pipeline that consumes chunked code
- [[entities/treesitter|TreeSitter]] — the parser project (entity)

## Sources
- https://towardsdatascience.com/how-cursor-actually-indexes-your-codebase/
- https://docs.chonkie.ai/oss/chunkers/code-chunker
