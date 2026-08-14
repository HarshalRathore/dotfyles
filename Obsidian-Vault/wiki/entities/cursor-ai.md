---
title: Cursor
category: entities
tags: [tool, AI-coding, IDE, chat-style-engineering, code-rag, semantic-search]
aliases: [cursor, Cursor AI]
relationships:
  - target: '[[concepts/iteration-friction]]'
    type: related_to
  - target: '[[concepts/codebase-rag]]'
    type: implements
sources:
  - https://www.youtube.com/watch?v=4sX_He5c4sI
  - https://towardsdatascience.com/how-cursor-actually-indexes-your-codebase/
  - https://cursor.com/blog/semsearch
summary: AI-powered code editor exemplifying the shift from IDE-based development to chat-style engineering, with a codebase RAG pipeline (AST chunking, embeddings, Turbopuffer, Merkle-tree sync).
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: 2026-07-06
tier: supporting
created: 2026-07-06T00:00:00Z
updated: 2026-08-11T00:00:00Z
---

# Cursor

**Cursor** is an AI-powered code editor that exemplifies the shift from traditional IDE-based development to **chat-style engineering**. ^[extracted]

## Chat-Style Engineering

Aurel Zion described the shift: "Back then when we thought that we would still be using our IDEs, just maybe slightly better... now we already switched to like chat style engineering when we discuss with CloudCode, Codex, Cursor, whatever." ^[extracted]

## Codebase Indexing & Semantic Search

Cursor grounds its agents in the codebase through a full [[concepts/codebase-rag|codebase RAG]] pipeline (surfaced in the "Index & Docs" settings tab): ^[extracted]

1. **Chunking** — code split into semantically coherent units (functions/classes/blocks) via AST-aware chunking
2. **Embeddings + metadata** — a **custom embedding model** (see below) vectorizes chunks; file path + line range stored as filtering metadata
3. **Privacy** — client-side [[concepts/file-path-obfuscation|file path obfuscation]]; `.cursorignore` excludes content; raw code never leaves the machine
4. **Storage** — embeddings cached in AWS (keyed by chunk hash) and served from [[entities/turbopuffer|Turbopuffer]] (vector + full-text on object storage)
5. **Retrieval** — query embedded with the same model; candidates returned as masked paths + line ranges; local client fetches the actual code; agents combine semantic search with grep/ripgrep regex search

**Index sync:** a [[concepts/merkle-tree|Merkle tree]] of file hashes is synced to Cursor's server (checks ~every 5 minutes), pinpointing changed files for targeted, batched re-embedding.

**The custom embedding model** ([[references/cursor-semantic-search|Cursor research blog]], Nov 2025) is trained on **agent session traces** — an LLM ranks what should have been retrieved at each step, and the model aligns similarity scores to those rankings. Results: +12.5% average answer accuracy (6.5–23.5% across models), +0.3% code retention overall (+2.6% on 1,000+ file codebases), and −2.2% dissatisfied follow-up requests vs grep-only agents. Evaluated on **Cursor Context Bench**. ^[extracted]

## Related

- [[concepts/codebase-rag|Codebase RAG]] — the indexing pipeline Cursor implements
- [[concepts/iteration-friction|Iteration Friction]] — the problem Cursor addresses
- [[concepts/10x-generalist-hiring|10x Generalist Hiring]] — the broader 10× productivity theme
- [[entities/opencode|OpenCode]] — open-source alternative using LSP/text search instead of embeddings
- [[entities/turbopuffer|Turbopuffer]] — Cursor's vector store

## Sources

- AI Engineer World's Fair 2026: https://www.youtube.com/watch?v=4sX_He5c4sI
- Towards Data Science: https://towardsdatascience.com/how-cursor-actually-indexes-your-codebase/
- Cursor research blog: https://cursor.com/blog/semsearch
