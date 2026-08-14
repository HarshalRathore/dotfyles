---
title: Turbopuffer
category: entities
tags: [vector-database, full-text-search, object-storage, search, infrastructure, serverless]
aliases: [turbopuffer]
sources:
  - "https://turbopuffer.com/"
  - "https://towardsdatascience.com/how-cursor-actually-indexes-your-codebase/"
created: "2026-08-11"
updated: "2026-08-11"
summary: "Serverless vector + full-text search database on object storage (S3): 10x cheaper than alternatives, sub-10ms p50 latency, 1T+ docs in production; used by Cursor for code-chunk embeddings."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: "2026-08-11"
tier: supporting
relationships:
  - target: '[[concepts/codebase-rag]]'
    type: related_to
---

# Turbopuffer

**Turbopuffer** is a serverless search engine combining **vector and full-text search**, built from first principles on **object storage** (S3) with a memory/SSD cache layer in front. Positioning: fast, ~10x cheaper than alternatives, and extremely scalable. ^[extracted]

## Key Capabilities & Scale

- **Production scale:** 1T+ documents, 10M+ writes/s, 25k+ queries/s across production systems
- **Latency:** sub-10ms p50 vector search
- **Features:** automatic scaling, billions of vectors, full-text search (BM25), hybrid search, metadata filtering, namespace branching (copy-on-write namespaces), embedded attributes (max 4 per namespace)
- **Limits (seen in production):** 128B docs / 256TB per namespace (100B @ 200TB observed), 250M+ namespaces, vector search recall 90–100% @ top-10

## Architecture

`client → API → Memory/SSD Cache → Object Storage (S3)` — the object-store backbone is what makes storage costs an order of magnitude lower than dedicated vector databases. ^[extracted]

## Why It Matters for Coding Agents

[[entities/cursor-ai|Cursor]] stores code-chunk embeddings (with masked-path metadata) in Turbopuffer for semantic search across millions of code chunks — relying on its hybrid vector + full-text capabilities and low cost at scale. ^[extracted]

## Notable Customers

Anthropic, Cognition, Notion, Atlassian, Ramp, Bridgewater Associates, Linear, Grammarly, Superhuman, Harvey, Granola, Pylon, Clay, Fal, Legora, Telus. ^[extracted]

## Concepts
- [[concepts/codebase-rag|Codebase RAG]] — Cursor's pipeline that stores embeddings in Turbopuffer
- [[concepts/embedding-based-search|Embedding-Based Search]]
- [[concepts/vector-database|Vector Database]] (stub)
- [[concepts/hybrid-retrieval|Hybrid Retrieval]]

## Sources
- https://turbopuffer.com/
- https://towardsdatascience.com/how-cursor-actually-indexes-your-codebase/
