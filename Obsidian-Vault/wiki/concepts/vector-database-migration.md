---
title: Vector Database Migration
tags:
- vector-database
- migration
- embeddings
- search-infrastructure
- pgvector
- puffer
aliases:
- vector database migration
- embedding storage migration
summary: Patterns for migrating vector search infrastructure — from PG Vector on GCP to specialized vector databases like Turbo Puffer, and from OpenAI embeddings to domain-optimized providers like Cohere.
sources:
- '[[sources/aief2025-building-the-platform-for-agent-coordination-—-tom-moor]]'
- 'https://www.youtube.com/watch?v=ug9iadmi2dg'
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
tier: supporting
created: 2026-07-04 00:00:00+00:00
updated: 2026-07-04 00:00:00+00:00
relationships:
- target:
  - - concepts/hybrid-search|Hybrid Search
  type: related_to
- target:
  - - concepts/pragmatic-ai|Pragmatic AI
  type: related_to
category: concepts
---

# Vector Database Migration

Vector database migration refers to the process of upgrading or replacing the underlying infrastructure for storing and querying embeddings — a common evolution as AI features mature from prototype to production scale. ^[inferred]

## Linear's Migration Journey

Linear went through two significant infrastructure migrations:

### Phase 1: Pragmatic Start (2023)

- **Storage:** PostgreSQL Vector (PG Vector) on GCP
- **Embeddings:** OpenAI embeddings
- **Rationale:** "The most classic Linear decision" — pragmatic, using "solid things" that already existed in their stack
- **Limitation:** PG Vector had "no vector offering" or a very poor one at the time, and it was so large that it couldn't be placed in their main database

### Phase 2: Production Scale (2024)

- **Storage:** Turbo Puffer (a specialized search index)
- **Embeddings:** Cohere embeddings (deemed "a lot better for our domain" than OpenAI's after comparison)
- **Rationale:** Needed hybrid search capabilities that PG Vector alone couldn't provide
- **Cost:** Backfilling "hundreds of millions of rows of embeddings" took significant time ^[extracted]

## Migration Decision Framework

The key decision points when migrating vector infrastructure:

1. **Storage layer:** Does your current vector store support the query patterns you need? PG Vector works for simple cosine similarity but may lack hybrid search, re-ranking, or performance at scale. ^[extracted]
2. **Embedding model:** Does your current embedding model perform well in your domain? OpenAI embeddings are general-purpose; domain-specific models (like Cohere's) may outperform on specialized content. ^[extracted]
3. **Hybrid search:** Do you need to combine keyword and vector search? If so, the storage layer must support both and fuse results effectively. ^[extracted]

## Why Migration Matters

As AI features move from experimental to core product, the underlying infrastructure often becomes a bottleneck. The migration from PG Vector to Turbo Puffer represents the shift from "can we make this work" to "can we make this work well at scale." ^[inferred]

## Related

- [[concepts/hybrid-search|Hybrid Search]]
- [[concepts/pragmatic-ai|Pragmatic AI]]
- [[concepts/vector-database-comparison|Vector Database Comparison]]
- [[entities/linear|Linear]]
