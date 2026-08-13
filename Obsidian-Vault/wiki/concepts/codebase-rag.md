---
title: Codebase RAG
category: concepts
tags: [rag, code-indexing, semantic-search, coding-agents, retrieval, embeddings, cursor]
aliases:
  - code RAG
  - codebase indexing
  - code retrieval
sources:
  - "https://towardsdatascience.com/how-cursor-actually-indexes-your-codebase/"
  - "https://cursor.com/blog/semsearch"
created: "2026-08-11"
updated: "2026-08-11"
summary: "The RAG pipeline that grounds coding agents in a codebase: AST-aware chunking, custom embeddings with file-path/line-range metadata, privacy-preserving path masking, vector storage, and hybrid semantic+regex retrieval — as built by Cursor."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.6
lifecycle: draft
lifecycle_changed: "2026-08-11"
tier: supporting
relationships:
  - target: '[[concepts/code-chunking]]'
    type: uses
  - target: '[[concepts/embedding-based-search]]'
    type: uses
  - target: '[[entities/cursor-ai]]'
    type: related_to
---

# Codebase RAG

**Codebase RAG** is the application of retrieval-augmented generation to source code: a pipeline that indexes a repository by meaning and retrieves the right code for a coding agent's natural-language queries. It is the mechanism behind features like [[entities/cursor-ai|Cursor]]'s "Index & Docs" tab. ^[extracted]

## The Pipeline

1. **[[concepts/code-chunking|Code chunking]]** — source code is already structured, so document parsing is skipped; code is split into semantically coherent units (functions, classes, logical blocks) using AST-aware chunkers (e.g. [[entities/chonkie|Chonkie]]).
2. **Embedding + metadata** — each chunk is embedded with a custom embedding model; the **file path and line range** are stored alongside the vector as metadata, enabling keyword filtering during retrieval.
3. **Privacy layer** — file paths are sensitive (project structure, codenames, client identifiers); [[concepts/file-path-obfuscation|path masking]] is applied client-side before transmission. `.cursorignore` lets users exclude content.
4. **Vector storage** — embeddings + metadata live in a vector database ([[entities/turbopuffer|Turbopuffer]]: vector + full-text, object-storage-backed); embeddings are cached keyed by **chunk hash** for fast re-indexing. **Raw code never leaves the local machine.**
5. **Semantic search** — the query is embedded with the same model; the vector DB returns ranked candidates as metadata only (masked paths + line ranges); the local client decrypts paths and pulls the actual code from disk; chunks go to the LLM as context. Agents combine this with **regex search** (grep/ripgrep) — a hybrid semantic + exact-match strategy.

## Index Synchronization

Codebases change constantly, so the index must stay fresh: ^[extracted]

- Periodic sync (typically **every ~5 minutes**), plus automatic indexing on workspace open
- A **[[concepts/merkle-tree|Merkle tree]] of file hashes** is synced to the server; fingerprint mismatches pinpoint exactly which files changed
- Only affected files are refreshed (new → added, modified → re-embedded, deleted → removed, large/complex → may be skipped), processed in batches

## Evidence That It Works

[[references/cursor-semantic-search|Cursor's engineering blog]] reports that semantic search over the codebase index yields **+12.5% average answer accuracy** (6.5–23.5% across models), **+0.3% code retention** overall (**+2.6% on 1000+ file codebases**), and **−2.2% dissatisfied follow-up requests**, versus grep-only agents. Their embedding model is trained on **agent session traces** — LLM-ranked retrospectives of what agents should have retrieved. ^[extracted]

## Alternatives

- **[[entities/opencode|OpenCode]]** — text search + file matching + LSP-based navigation; structural awareness without embedding-based semantic retrieval.
- **[[concepts/context-engine-vs-rag|Context engines]]** (Windsurf) — multi-pronged context retrieval beyond pure embedding similarity.

## Open Questions
- Chunk-size limits and embedding dimensions used in production Cursor are undisclosed. ^[ambiguous]
- Whether the Merkle-tree sync also drives the "Index & Docs" UI state. ^[ambiguous]

## Related
- [[concepts/code-chunking|Code Chunking]] — first pipeline stage
- [[concepts/embedding-based-search|Embedding-Based Search]] — retrieval foundation
- [[concepts/embedding-models|Embedding Models]] — including agent-trace-trained models
- [[concepts/hybrid-retrieval|Hybrid Retrieval]] — semantic + regex
- [[concepts/chunking-for-retrieval|Chunking for Retrieval]] — general chunking strategies
- [[concepts/merkle-tree|Merkle Tree]] — change detection
- [[concepts/file-path-obfuscation|File Path Obfuscation]] — privacy layer
- [[entities/cursor-ai|Cursor]] — the reference implementation

## Sources
- https://towardsdatascience.com/how-cursor-actually-indexes-your-codebase/
- https://cursor.com/blog/semsearch
