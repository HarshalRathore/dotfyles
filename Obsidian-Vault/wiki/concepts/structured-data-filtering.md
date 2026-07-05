---
title: Structured Data Filtering in Search
category: concepts
tags: [search, filtering, structured-data, hybrid-retrieval, metadata, vector-store]
aliases: [metadata filtering, structured filtering, hybrid search filtering]
summary: "The practice of combining semantic embedding search with structured data filters (metadata predicates) in search systems — embeddings alone are often insufficient for powerful retrieval."
sources:
  - "AIEF2025 - The State of AI Powered Search and Retrieval — Frank Liu, MongoDB (prev Voyage AI) - https://www.youtube.com/watch?v=pIPtpBZ6TKk"
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/hybrid-search]]"
    type: related_to
  - target: "[[concepts/ai-powered-search]]"
    type: used_in
  - target: "[[concepts/dense-vector-search]]"
    type: extends
---

# Structured Data Filtering in Search

Embeddings alone are often insufficient for building a powerful search and retrieval system. Structured data — metadata predicates applied as filters — must be combined with semantic search to achieve the precision that real-world applications require. ^[extracted]

## The Limitation of Embeddings-Only Search

Frank Liu (MongoDB, formerly Voyage AI) explicitly notes that "it's hard for me [coming from a company that builds embedding models] to say this, but embeddings alone are not enough." The reasons are practical: ^[extracted]

- Embedding similarity is fuzzy — it cannot enforce hard constraints like "only documents from California" or "only official documents"
- Users often need to narrow results by attributes that are better expressed as structured predicates than semantic similarity
- Domain-specific constraints (jurisdiction, document type, date range) are naturally structured

## Example: Legal Document Search

When embedding legal documents with Voyage Law 2, the embedding captures semantic similarity. But the search system also needs to filter by: ^[extracted]

- **State/jurisdiction** — only documents from a particular state
- **Document type** — only official documents, not drafts or commentary
- **Specific details** — documents containing particular clauses, parties, or dates

These filters are applied at the retrieval stage, typically directly inside the vector store or as a post-retrieval filter.

## Where Filtering Happens

Structured data filtering can be applied: ^[extracted]

1. **Pre-filtering** — Before embedding search, narrow the candidate set using metadata predicates (more efficient, but may exclude relevant documents)
2. **Post-filtering** — After embedding search, filter the results (preserves retrieval quality but wastes compute on discarded results)
3. **Integrated** — The vector store natively supports hybrid semantic + structured filtering in a single query

## Relationship to Hybrid Search

Structured data filtering complements [[concepts/hybrid-search|hybrid search]] — while hybrid search combines BM25 (lexical) and vector (semantic) signals, structured filtering adds a third dimension: hard constraints on metadata attributes. ^[inferred]

## Related

- [[concepts/hybrid-search]] — combining multiple retrieval signals
- [[concepts/ai-powered-search]] — where filtering is applied
- [[concepts/dense-vector-search]] — the embedding baseline
- [[concepts/domain-specific-embedding-models]] — domain-specific models that work alongside filters

## Sources

- AIEF2025 - The State of AI Powered Search and Retrieval — Frank Liu, MongoDB (prev Voyage AI) - https://www.youtube.com/watch?v=pIPtpBZ6TKk
