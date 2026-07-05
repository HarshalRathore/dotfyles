---
title: "Document Enrichment"
category: concepts
tags: [rag, retrieval, document-processing, metadata, voyage-ai, aief2025]
summary: "RAG enhancement technique that adds metadata (titles, headers) to documents before embedding, improving their semantic signal and retrieval quality."
sources:
  - "AIEF2025 - RAG in 2025: State of the Art and the Road Forward — Tengyu Ma, MongoDB (acq. Voyage AI) - https://www.youtube.com/watch?v=W_CYk2ogcDI"
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.70
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/rag-pipeline-architecture]]"
    type: used_in
  - target: "[[concepts/query-decomposition]]"
    type: related_to
---

# Document Enrichment

Document enrichment is a RAG enhancement technique that adds metadata — such as titles, headers, and other structural information — to documents before they are embedded. This improves the semantic signal of each document chunk, making retrieval more accurate.

## How It Works

Before embedding, the document processing pipeline augments each chunk with contextual metadata:

- **Titles**: The document or section title is prepended to the chunk
- **Headers**: Section and subsection headers are included
- **Other metadata**: Author, date, tags, or other structured fields

The enriched text is then passed to the embedding model, producing a vector that captures both the chunk content and its structural context.

## Why It Helps

A bare text chunk lacks context about where it appears in the document. Adding titles and headers gives the embedding model additional signal about the chunk's topic and importance, leading to better retrieval matches. ^[extracted]

## Relation to Query Decomposition

Document enrichment operates on the document side; [[concepts/query-decomposition|query decomposition]] operates on the query side. Together they form a complete RAG enhancement strategy — making both queries and documents more searchable. ^[extracted]

## Limitations

- Adds preprocessing complexity to the ingestion pipeline
- Enrichment quality depends on document structure — flat text files have fewer enrichment opportunities
- May increase embedding dimensionality if metadata is concatenated rather than structured

## Related

- [[concepts/rag-pipeline-architecture]] — where document enrichment fits in the pipeline
- [[concepts/query-decomposition]] — the query-side counterpart
- [[concepts/chunking-strategies]] — chunking interacts with enrichment (chunk boundaries affect what metadata is included)

## Sources

- AIEF2025 - RAG in 2025: State of the Art and the Road Forward — Tengyu Ma, MongoDB (acq. Voyage AI) - https://www.youtube.com/watch?v=W_CYk2ogcDI
