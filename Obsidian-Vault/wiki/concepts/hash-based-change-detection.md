---
title: Hash-Based Change Detection
category: concepts
tags: [hashing, change-detection, sync, indexing]
aliases: []
sources:
  - "https://towardsdatascience.com/how-cursor-actually-indexes-your-codebase/"
created: "2026-08-11"
updated: "2026-08-11"
summary: "Detecting which files changed by comparing hashes or hierarchical fingerprints — the principle behind Merkle-tree-based index synchronization."
provenance:
  extracted: 0.75
  inferred: 0.2
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: "2026-08-11"
tier: peripheral
---

# Hash-Based Change Detection

**Hash-based change detection** identifies modified files by comparing fingerprints (hashes) rather than scanning full contents. In hierarchical form — a [[concepts/merkle-tree|Merkle tree]] of file hashes — it lets a remote server pinpoint exactly which files changed so only those are re-processed (e.g. [[entities/cursor-ai|Cursor]]'s [[concepts/codebase-rag|codebase RAG]] index sync).

## Related
- [[concepts/merkle-tree|Merkle Tree]]
- [[concepts/codebase-rag|Codebase RAG]]

## Sources
- https://towardsdatascience.com/how-cursor-actually-indexes-your-codebase/
