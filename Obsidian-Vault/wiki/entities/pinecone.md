---
title: "Pinecone"
category: entities
tags:
  - vector-database
  - ai-infrastructure
  - embeddings
  - similarity-search
  - managed-service
summary: Pinecone is a managed vector database for similarity search, used by 11x for Alice's knowledge base. Offers bundled embedding models, cloud hosting, and SDKs.
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/dense-vector-search]]"
    type: implements
  - target: "[[entities/alice-ai-sdr]]"
    type: uses
---

# Pinecone

Pinecone is a managed **vector database** designed for similarity search. It was selected by 11x for their Alice knowledge base pipeline to store and retrieve embedded chunks of seller context.

## Selection Rationale (per 11x)

1. **Market leader** — Well-known solution, low risk for a team new to the space
2. **Cloud-hosted** — No infrastructure to spin up or manage
3. **Easy to get started** — Great getting-started guides and SDKs
4. **Bundled embedding models** — No need to find or host a separate embedding model provider
5. **Customer support** — Active engagement helping teams evaluate options including graph databases and graph RAG

## Usage in Alice's Knowledge Base

Chunks parsed from seller resources are upserted to Pinecone with embeddings. Alice's deep research agent queries Pinecone during email generation to retrieve the most relevant seller context for each lead.

## Sources

- AIEF2025 talk: "Building Alice's Brain" by Sherwood & Satwik, 11x
