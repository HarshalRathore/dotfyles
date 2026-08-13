---
title: "Chonkie CodeChunker — AST-Based Code Chunking (Official Docs)"
category: references
tags: [chonkie, chunking, tree-sitter, ast, code-rag, retrieval, open-source]
sources:
  - "https://docs.chonkie.ai/oss/chunkers/code-chunker"
source_url: "https://docs.chonkie.ai/oss/chunkers/code-chunker"
created: "2026-08-11"
updated: "2026-08-11"
summary: "Official Chonkie docs for CodeChunker: splits code into chunks based on structure via ASTs — 165+ languages, tree-sitter-language-pack parsing, Magika auto-detection, and the Chunk dataclass contract."
affinity: {}
promotion_status: misc
stub: false
provenance:
  extracted: 0.95
  inferred: 0.05
  ambiguous: 0.0
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: "2026-08-11"
tier: supporting
---

# Chonkie CodeChunker

> **TL;DR** — Chonkie's `CodeChunker` splits code into chunks based on code structure rather than character counts, using Abstract Syntax Trees. 165+ languages via tree-sitter-language-pack, optional Magika auto-detection, token-bounded chunks, and a uniform `Chunk` return type.

**Source:** official Chonkie documentation — https://docs.chonkie.ai/oss/chunkers/code-chunker
Linked from: [[misc/web-towardsdatascience-com-how-cursor-actually-indexes|How Cursor Actually Indexes Your Codebase]] as the example implementation of semantic code chunking.

## Overview

- Splits code into chunks **based on its structure**, leveraging **Abstract Syntax Trees (ASTs)** to create contextually relevant segments
- **165+ languages** supported
- Powered by **tree-sitter-language-pack** for parsing
- **Auto language detection** via **Magika** (Google's language detection library)

Language coverage spans general-purpose languages (Python, Rust, Go, Java, JS/TS, C/C++, C#, Zig, Swift…), web/UI/markup (HTML, CSS, Vue, Svelte, TSX, Markdown, Mermaid, YAML, XML…), config/build/DevOps (Bash, Dockerfile, Make, Ninja, Prisma…), and systems/GPU/low-level (ASM, CUDA, GLSL, HLSL, LLVM, Verilog, VHDL, WGSL, WASM/WAT). ^[extracted]

## Installation & Initialization

```bash
pip install "chonkie[code]"
```

```python
from chonkie import CodeChunker

chunker = CodeChunker(
    language="python",      # or "auto" for Magika detection
    tokenizer="character",  # default; or "gpt2", or a custom Tokenizer
    chunk_size=2048,        # maximum tokens per chunk
    include_nodes=False     # optionally include AST nodes in output
)
```

Note: automatic language detection via Magika can impact performance — specify the language directly for best results. ^[extracted]

## Parameters

- `language` (required) — the programming language; accepts anything supported by tree-sitter-language-pack, or `"auto"`
- `tokenizer` (default `"character"`) — tokenizer or token-counting function used to measure chunk size
- `chunk_size` (default `2048`) — maximum tokens per chunk
- `include_nodes` (default `False`) — whether to include AST node information (base Chunk type does not store node info)

## Usage

- **Single chunking:** `chunker.chunk(code)` → list of `Chunk`
- **Batch chunking:** `chunker.chunk_batch(codes)` → list of chunk lists
- **Callable:** `chunker(code)` / `chunker([code1, code2])` works for both forms

## Return Type

```python
@dataclass
class Chunk:
    text: str           # the chunk text (code snippet)
    start_index: int    # starting position in original code
    end_index: int      # ending position in original code
    token_count: int    # tokens in chunk
    context: Optional[Context] = None    # optional context metadata
    embedding: Union[list[float], "np.ndarray", None] = None  # optional embedding vector
```

As of version **1.3.0**, CodeChunker returns the base `Chunk` type instead of the specialized `CodeChunk` type — simplifying integration with other chunkers and refineries. ^[extracted]

## Concepts
- [[concepts/code-chunking|Code Chunking]] — the technique this library implements
- [[concepts/chunking-for-retrieval|Chunking for Retrieval]] — general chunking strategies
- [[concepts/codebase-rag|Codebase RAG]] — where code chunking fits in the pipeline
- [[concepts/tree-sitter|tree-sitter]] — the parsing foundation (stub)

## Entities
- [[entities/chonkie|Chonkie]]
- [[entities/cursor-ai|Cursor]] — uses this pattern of chunking in its indexing pipeline

## Sources
- https://docs.chonkie.ai/oss/chunkers/code-chunker
