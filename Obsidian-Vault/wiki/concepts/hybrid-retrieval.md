---
title: Hybrid Retrieval
tags:
- retrieval
- search
- vector-search
- keyword-search
- semantic-search
- filtering
- aief2025
aliases:
- Multi-Strategy Retrieval
sources:
- 'https://www.youtube.com/watch?v=w1mizchnkfa'
summary: Combining vector search, keyword matching, semantic search, temporal filtering, and domain-specific filtering in a single retrieval pipeline to handle complex queries.
provenance:
  extracted: 0.8
  inferred: 0.2
  ambiguous: 0.0
base_confidence: 0.7
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/hybrid-search|Hybrid Search]]'
  type: extends
- target: '[[concepts/enterprise-rag|Enterprise RAG]]'
  type: uses
category: concepts
---

# Hybrid Retrieval

Hybrid retrieval is the practice of combining multiple retrieval strategies — vector search, keyword matching, semantic search, temporal filtering, and domain-specific filtering — into a single pipeline to handle queries that no single method can solve alone. ^[extracted]

## Why Hybrid Is Necessary

Enterprise queries, particularly in domains like legal, combine multiple retrieval signals in a single question. A query like "What is the applicable regime to covered bonds issued before 9 July 2022 under the directive EU 2019-2062 and article 129 of the CRR?" requires: ^[extracted]

- **Semantic search** — understanding "applicable regime" and "covered bonds"
- **Temporal filtering** — results must be applicable before a specific date
- **Dataset reference** — querying a specific corpus (EU laws and directives)
- **Keyword matching** — exact IDs like "EU 2019-2062" and "article 129"
- **Multi-part reasoning** — applying rules across two different regulatory instruments
- **Jargon resolution** — resolving abbreviations like "CRR" (capital requirements regulation)

No single retrieval technology handles all of these signals effectively. ^[extracted]

## Infrastructure Requirements

A hybrid retrieval system requires a database or lakehouse that supports: ^[extracted]

- Vector similarity search
- Full-text keyword search
- Metadata filtering (dates, categories, jurisdictions)
- Sorting and pagination
- Dynamic or agentic navigation patterns

## RAG Enhancement Techniques

Beyond hybrid retrieval, two complementary techniques improve RAG quality: ^[extracted]

- **Query decomposition**: Expand the query using an LLM, then decompose into sub-queries targeting different document subsets
- **Document enrichment**: Add metadata (titles, headers) to documents before embedding, improving their semantic signal

These operate on the query and document sides respectively, forming a complete RAG enhancement strategy. ^[extracted]

This is why [[entities/lance-db|LanceDB]] positions itself as an AI-native multimodal lake house rather than just a vector database — enterprise systems need all these capabilities on a unified foundation. ^[extracted]

## Related

- [[concepts/hybrid-search|Hybrid Search]] — combining multiple search strategies
- [[concepts/enterprise-rag|Enterprise RAG]] — where hybrid retrieval is essential
- [[concepts/legal-ai|Legal AI]] — domain driving hybrid retrieval needs
- [[entities/lance-db|LanceDB]] — infrastructure supporting hybrid retrieval

## Sources

- AIEF2025 - Scaling Enterprise-Grade RAG: Lessons from Legal Frontier - Calvin Qi (Harvey), Chang She (Lance) - https://www.youtube.com/watch?v=W1MiZChnkfA

- AIEF2025 - RAG in 2025: State of the Art and the Road Forward — Tengyu Ma, MongoDB (acq. Voyage AI) - https://www.youtube.com/watch?v=W_CYk2ogcDI
