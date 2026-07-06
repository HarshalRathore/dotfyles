---
title: pgvector
category: concepts
tags:
- pgvector
- postgres
- vector-database
- vector-search
- embeddings
- database
summary: A PostgreSQL extension that adds vector similarity search capabilities, enabling storage and retrieval of embeddings directly within PostgreSQL. Randall Hunt calls it 'my favorite right now' for en...
provenance:
  extracted: 0.9
  inferred: 0.1
  ambiguous: 0.0
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[concepts/vector-database-migration]]'
  type: related_to
- target: '[[concepts/embedding-models]]'
  type: related_to
- target: '[[concepts/vector-similarity-vs-relevance]]'
  type: related_to
sources: []
---

**pgvector** is an open-source PostgreSQL extension that adds vector similarity search capabilities to PostgreSQL databases. It enables storage, indexing, and querying of embedding vectors directly within PostgreSQL, eliminating the need for a separate vector database in many cases.

## The Extension

pgvector adds a new `vector` data type to PostgreSQL and supports three similarity measures:

- **Cosine distance** — Most common for embedding similarity
- **Euclidean (L2) distance** — Useful for certain embedding spaces
- **Inner product** — Equivalent to cosine similarity when vectors are normalized

It supports multiple indexing strategies:

- **IVF (Inverted File Index)** — Good for large datasets, configurable number of lists
- **HNSW (Hierarchical Navigable Small World)** — Fastest for queries, higher memory usage

## Why Randall Hunt Likes It

**[[entities/randall-hunt|Randall Hunt]]** of **[[entities/caylent|Caylent]]** described pgvector as "my favorite right now" for enterprise AI systems. The reasons:

1. **Single database** — No need to maintain a separate vector database alongside PostgreSQL
2. **Transaction support** — Embedding operations participate in PostgreSQL transactions
3. **Familiar tooling** — Uses SQL, which most teams already know
4. **Mature ecosystem** — PostgreSQL's mature ecosystem (backup, replication, monitoring) applies to vector data
5. **Cost-effective** — No additional infrastructure for a dedicated vector store

## Use Cases in Enterprise AI

- **RAG systems** — Store document embeddings alongside metadata in the same database as application data
- **User preference storage** — Store user embeddings for recommendation systems
- **Semantic search** — Enable vector search over application data without a separate infrastructure layer
- **Embedding management** — Version and track embeddings alongside the data they represent

## Contrast with Dedicated Vector Databases

| Feature | pgvector | Dedicated (Pinecone, Weaviate, etc.) |
|---------|----------|-------------------------------------|
| Setup complexity | Low (extension) | Medium-High |
| Scalability | Bounded by PostgreSQL | Built for scale |
| Query flexibility | SQL + vector | Vector-native query languages |
| Cost | PostgreSQL license | Additional infrastructure |
| Maintenance | One database | Two databases |
| Transactions | Full ACID | Varies |

## Limitations

- **Scale** — For very large datasets (billions of vectors), dedicated vector databases may outperform pgvector
- **Feature set** — Lacks some advanced features of dedicated vector databases (hybrid search, filtering, metadata management)
- **Performance** — HNSW indexes in pgvector are good but may not match the performance of purpose-built vector engines

## Related

- [[concepts/vector-database-migration]] — Patterns for choosing between pgvector and dedicated vector databases
- [[concepts/embedding-models]] — Models that produce the embeddings stored in pgvector
- [[concepts/vector-similarity-vs-relevance]] — The relationship between vector similarity and retrieval relevance

## Sources

- AIEF2025 - POC to PROD: Hard Lessons from 200+ Enterprise GenAI Deployments - Randall Hunt, Caylent - https://www.youtube.com/watch?v=vW8wLsb3Nnc
