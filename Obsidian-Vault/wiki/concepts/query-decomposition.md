---
title: "Query Decomposition"
category: concepts
tags: [rag, retrieval, query-processing, llm, voyage-ai, document-enrichment, aief2025]
summary: "RAG enhancement technique that expands and decomposes a query into multiple sub-queries using an LLM, then searches for different document subsets for each sub-query."
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
  - target: "[[concepts/document-enrichment]]"
    type: related_to
  - target: "[[concepts/hybrid-search]]"
    type: related_to
---

# Query Decomposition

Query decomposition is a RAG enhancement technique that uses an LLM to improve the retrieval step by expanding and decomposing the original query into multiple sub-queries, each targeting a different subset of the document corpus.

## How It Works

The process has two steps:

1. **Query expansion**: Use an LLM to make the original query longer and more specific, adding context and clarifying intent
2. **Query decomposition**: Break the expanded query into smaller sub-queries, each designed to retrieve a different subset of relevant documents

Each sub-query is then executed against the vector database (or other retrieval system), and the results are combined before the LLM generates the final answer.

## Why It Helps

A single query may not capture all the information needs of a complex question. Decomposition allows the retrieval system to find documents that address different aspects of the question, rather than relying on a single embedding match. ^[extracted]

## Relation to Document Enrichment

Query decomposition operates on the query side; [[concepts/document-enrichment|document enrichment]] operates on the document side. Together they form a complete RAG enhancement strategy:

- **Query decomposition**: Make the query better → find more relevant documents
- **Document enrichment**: Make the documents better → each document is more searchable

Document enrichment involves adding metadata such as titles and headers to documents before embedding, improving their semantic signal. ^[extracted]

## Limitations

- Adds LLM call overhead to the retrieval pipeline
- More sub-queries = more database lookups = higher latency
- Decomposition quality depends on the LLM used — poor decomposition can retrieve irrelevant documents

## Related

- [[concepts/rag-pipeline-architecture]] — where query decomposition fits
- [[concepts/document-enrichment]] — the document-side counterpart
- [[concepts/hybrid-search]] — can be combined with hybrid search for each sub-query
- [[concepts/re-ranking]] — results from multiple sub-queries can be re-ranked

## Sources

- AIEF2025 - RAG in 2025: State of the Art and the Road Forward — Tengyu Ma, MongoDB (acq. Voyage AI) - https://www.youtube.com/watch?v=W_CYk2ogcDI
