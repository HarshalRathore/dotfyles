---
title: Merkle Tree
category: concepts
tags: [data-structure, hashing, change-detection, cryptography, indexing, sync]
aliases:
  - hash tree
sources:
  - "https://towardsdatascience.com/how-cursor-actually-indexes-your-codebase/"
created: "2026-08-11"
updated: "2026-08-11"
summary: "Cryptographic-fingerprint data structure: each file becomes a hash; hashes combine hierarchically into a single top-level fingerprint — enabling efficient change detection across large file sets."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.7
lifecycle: draft
lifecycle_changed: "2026-08-11"
tier: supporting
---

# Merkle Tree

A **Merkle tree** (hash tree) is a data structure that works like a system of digital cryptographic fingerprints, allowing changes across a large set of files to be tracked efficiently. ^[extracted]

## How It Works

- Each file is converted into a short **fingerprint** (hash).
- Fingerprints are combined **hierarchically** into a single top-level fingerprint representing the entire folder.
- When one file changes, only its fingerprint and a small number of related fingerprints need updating — the rest of the tree is untouched.

## Use in Codebase Index Sync

[[entities/cursor-ai|Cursor]] scans the opened folder and computes a Merkle tree of file hashes, then syncs the tree to its server. The server periodically checks for **fingerprint mismatches**, pinpoints which files changed, and updates only those files during index synchronization — keeping the [[concepts/codebase-rag|codebase RAG]] index fast and efficient. ^[extracted]

## Other Contexts

Merkle trees are also the foundation of **append-only transparency logs** — e.g. [[concepts/verifiable-transparency|verifiable transparency]] systems record every deployment so contents cannot be modified after the fact. ^[extracted]

## Related
- [[concepts/codebase-rag|Codebase RAG]] — index sync via Merkle trees
- [[concepts/verifiable-transparency|Verifiable Transparency]] — Merkle-tree-based audit logs
- [[concepts/hash-based-change-detection|Hash-Based Change Detection]] (stub)

## Sources
- https://towardsdatascience.com/how-cursor-actually-indexes-your-codebase/
