---
title: Query Rewriting
tags: [search, llm, query-processing, rag]
aliases: [query expansion, query transformation]
sources: ["AI Engineer World's Fair 2025 - Information Retrieval from the Ground Up - Philipp Krenn, Elastic - https://www.youtube.com/watch?v=4Xe_iMYxBQc"]
summary: "Using an LLM to transform a user's natural language query into something more search-engine-friendly before retrieval. Includes HyDE (synthetic document generation for vector search)."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-03T08:30:00Z
updated: 2026-07-03T08:30:00Z
---

# Query Rewriting

Using an LLM to transform a user's query before passing it to a search engine. This bridges the gap between how users naturally ask questions and how search engines (especially [[concepts/lexical-search|lexical search]]) expect input. ^[extracted]

## Common Patterns

### Query Rewriting (Generation First)
The LLM converts a vague or descriptive query into precise search terms:

> User: "What's that Italian dish with layered pasta and meat?"  
> LLM: "lasagna"  
> Search: keyword search for "lasagna" recipes

This is especially useful when the user doesn't know the exact terminology but can describe what they want. ^[extracted]

### HyDE (Hypothetical Document Embeddings)
The LLM generates a synthetic document that looks like an ideal result, then uses its embedding for vector similarity search. This works well when queries and documents are structurally different (e.g., short query vs long product description) — the generated document bridges the gap. ^[extracted]

### E-commerce and Themed Queries
For complex requests like "I'm going to a 1920s-themed party, give me suggestions," the LLM decomposes the request into actionable search queries, retrieves relevant items, then synthesizes suggestions from the results. ^[extracted]

## When to Rewrite

- When the user describes a concept but doesn't know the exact name ^[extracted]
- When documents and queries have very different structure (HyDE) ^[extracted]
- When the query encodes implicit constraints that need expansion ^[inferred]
- NOT when the user already has precise search terms — unnecessary LLM calls add latency and cost ^[inferred]

## Related

- [[concepts/lexical-search]]
- [[concepts/dense-vector-search]]
- [[concepts/information-retrieval]]
- [[concepts/hybrid-search]]
- [[concepts/hybridrag]]

## Sources

- AI Engineer World's Fair 2025 — Philipp Krenn, Elastic: <https://www.youtube.com/watch?v=4Xe_iMYxBQc>
