---
title: Vector Database
category: concepts
tags: [vector-database, embeddings, search, rag, infrastructure]
aliases: [vector db, vector store]
sources:
  - "https://turbopuffer.com/"
created: "2026-08-11"
updated: "2026-08-11"
summary: "Database specialized for storing embedding vectors and performing similarity search at scale; often combined with full-text search (hybrid)."
provenance:
  extracted: 0.7
  inferred: 0.2
  ambiguous: 0.1
base_confidence: 0.6
lifecycle: draft
lifecycle_changed: "2026-08-11"
tier: peripheral
---

# Vector Database

A **vector database** stores embedding vectors alongside metadata and performs similarity (k-NN / ANN) search over them. Modern offerings (e.g. [[entities/turbopuffer|Turbopuffer]]) also support full-text search and hybrid retrieval, and may be built on object storage for cost efficiency. Vector stores are the backbone of [[concepts/embedding-based-search|embedding-based search]] and [[concepts/codebase-rag|codebase RAG]] pipelines.

## Related
- [[entities/turbopuffer|Turbopuffer]] — object-storage-backed vector + full-text engine
- [[concepts/embedding-based-search|Embedding-Based Search]]
- [[concepts/codebase-rag|Codebase RAG]]

## Sources
- https://turbopuffer.com/
