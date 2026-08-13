---
title: "How Cursor Actually Indexes Your Codebase — Kenneth Leung (Towards Data Science)"
category: misc
tags: [cursor, code-rag, code-indexing, semantic-search, chunking, vector-database, merkle-tree, privacy]
sources:
  - "https://towardsdatascience.com/how-cursor-actually-indexes-your-codebase/"
source_url: "https://towardsdatascience.com/how-cursor-actually-indexes-your-codebase/"
created: "2026-08-11"
updated: "2026-08-11"
summary: "TDS article (Jan 2026) walking through Cursor's codebase RAG pipeline: AST-based code chunking, custom embeddings with metadata, client-side path obfuscation, Turbopuffer storage, hybrid semantic+regex search, and Merkle-tree-driven index sync."
affinity: {}
promotion_status: misc
stub: false
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.45
lifecycle: draft
lifecycle_changed: "2026-08-11"
tier: supporting
---

# How Cursor Actually Indexes Your Codebase

**Author:** Kenneth Leung — Towards Data Science, Jan 26, 2026 (10 min read)
**URL:** https://towardsdatascience.com/how-cursor-actually-indexes-your-codebase/

Explains the [[concepts/codebase-rag|codebase RAG]] pipeline that gives Cursor's coding agents contextual awareness of a project. The core thesis: codebase understanding is built via **retrieval-augmented generation (RAG) with semantic search** — code is indexed and retrieved by meaning, not raw text. ^[extracted]

## (1) The Codebase RAG Pipeline — Five Steps

### Step 1 — Chunking
Source code is already well-structured (unlike arbitrary documents), so Cursor-style pipelines skip document parsing and go straight to chunking. The goal is **semantically coherent units** — functions, classes, logical code blocks — never arbitrary splits. Chunk splits land *between* functions rather than inside them, and between statements rather than mid-line. ^[extracted]

The article's example uses **[[entities/chonkie|Chonkie]]**, an open-source code-chunking framework. See [[references/chonkie-code-chunker|Chonkie CodeChunker deep-dive]].

**Under the hood** ([Optional Reading] section): chunking is driven by syntax, not character counts or regex. A source-code parser (e.g. [[concepts/tree-sitter|tree-sitter]]) converts raw code into an **abstract syntax tree (AST)** — a tree-shaped representation of logical units (functions, classes, methods, blocks). The chunker traverses AST nodes and groups adjacent ones until a token limit is reached, producing chunks that are both semantically coherent and size-bounded. ^[extracted]

### Step 2 — Generating Embeddings and Metadata
A **custom embedding model** generates a vector for each chunk, capturing semantic meaning so retrieval works even when exact keywords don't overlap. Alongside each vector, Cursor stores **metadata**: the file path and the code line range of the chunk. This metadata (a) provides provenance context and (b) enables **metadata-based keyword filtering** during retrieval. ^[extracted]

### Step 3 — Enhancing Data Privacy
File paths are treated as **sensitive metadata** — file/directory names reveal internal project structure, product codenames, client identifiers, and ownership boundaries. Cursor applies **file path obfuscation (path masking) client-side** before any data is transmitted: each path component (split by `/` and `.`) is masked with a secret key and a small fixed nonce, hiding real names while preserving directory structure for retrieval/filtering. Example: `src/payments/invoice_processor.py` → `a9f3/x72k/qp1m8d.f4`. ^[extracted] See [[concepts/file-path-obfuscation|File Path Obfuscation]].

Users control what gets shared via a **`.cursorignore`** file — Cursor makes a best effort to prevent listed content from being transmitted or referenced in LLM requests. ^[extracted]

### Step 4 — Storing Embeddings
Chunk embeddings + metadata are stored in a **vector database built on [[entities/turbopuffer|Turbopuffer]]** — a serverless, high-performance search engine combining vector and full-text search, backed by low-cost object storage. ^[extracted]

- **Embedding caching:** embeddings are cached in AWS, keyed by the **hash of each chunk**, so unchanged code is reused across indexing runs (fast re-indexing).
- **Privacy invariant:** only embeddings and metadata live in the cloud — **raw source code never leaves the local machine** and is never stored on Cursor servers or in Turbopuffer. ^[extracted]

### Step 5 — Running Semantic Search
1. A user query is embedded with the **same embedding model** used for chunks, so queries and code live in the same semantic space.
2. Cursor compares the query embedding against code embeddings; Turbopuffer returns candidates ranked by similarity.
3. Since raw code is never stored remotely, search results are **metadata only**: masked file paths + line ranges.
4. The local client decrypts paths, resolves line ranges, and pulls the **actual code chunks from the local codebase**.
5. Retrieved chunks (original text) are passed as context alongside the query to the LLM.

The agent also uses **regex-based tools** (grep, ripgrep) for exact string matches — a **hybrid semantic + regex strategy**. ^[extracted] See [[concepts/hybrid-retrieval|Hybrid Retrieval]].

**Comparison — [[entities/opencode|OpenCode]]:** the open-source coding agent works directly on the codebase using text search, file matching, and LSP-based navigation rather than embedding-based semantic search — strong structural awareness but without Cursor's deeper semantic retrieval. ^[extracted]

**Inference-time note:** although code isn't stored remotely, relevant original chunks are temporarily passed to the coding agent at inference time (embeddings can't reconstruct code). Plain-text code is retrieved only for the specific files/lines needed, only during the short-lived inference runtime. ^[extracted]

## (2) Keeping the Codebase Index Up to Date

- **Sync cadence:** automatic periodic checks, typically **every five minutes**, plus on workspace open (indexing begins automatically).
- **Change detection:** Cursor scans the opened folder and computes a **[[concepts/merkle-tree|Merkle tree]] of file hashes** — each file becomes a short fingerprint; fingerprints combine hierarchically into a single top-level fingerprint for the folder. The tree is synced to the Cursor server, which detects fingerprint mismatches to pinpoint exactly which files changed.
- **Targeted refresh:** only affected files are updated — outdated embeddings removed, new ones generated; files processed in **batches** to minimize disruption.
- **Per-file-type handling:**
  - *New files* → automatically added to the index
  - *Modified files* → old embeddings removed, fresh ones created
  - *Deleted files* → promptly removed from the index
  - *Large/complex files* → may be skipped for performance ^[extracted]

## (3) Wrapping It Up

By chunking code along meaningful boundaries, indexing it efficiently, and continuously refreshing that context as the codebase evolves, coding agents deliver far more relevant and reliable suggestions. ^[extracted]

## Concepts
- [[concepts/codebase-rag|Codebase RAG]] — the pipeline as a whole
- [[concepts/code-chunking|Code Chunking]] — AST-based semantic chunking
- [[concepts/file-path-obfuscation|File Path Obfuscation]] — client-side path masking
- [[concepts/merkle-tree|Merkle Tree]] — change detection for index sync
- [[concepts/embedding-based-search|Embedding-Based Search]] — semantic retrieval foundation
- [[concepts/hybrid-retrieval|Hybrid Retrieval]] — semantic + regex search
- [[concepts/context-engine-vs-rag|Context Engine vs RAG]] — adjacent approach (Windsurf)

## Entities
- [[entities/cursor-ai|Cursor]]
- [[entities/turbopuffer|Turbopuffer]]
- [[entities/chonkie|Chonkie]]
- [[entities/opencode|OpenCode]]
- [[entities/kenneth-leung|Kenneth Leung]]

## Open Questions
- Whether Cursor's five-minute Merkle-tree sync also drives the "Index & Docs" UI progress state, or whether that reflects a separate one-time ingest pass. ^[ambiguous]
- Exact chunk-size/token limits and embedding model dimensions used in production are not disclosed. ^[ambiguous]

## Related
- [[references/cursor-semantic-search|Cursor's Official Semantic Search Blog]] — the linked engineering source: Cursor Context Bench, agent-trace-trained embeddings, A/B results
- [[references/chonkie-code-chunker|Chonkie CodeChunker Docs]] — the linked chunking framework

## Sources
- https://towardsdatascience.com/how-cursor-actually-indexes-your-codebase/
