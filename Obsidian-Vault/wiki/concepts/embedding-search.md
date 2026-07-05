---
title: "Embedding Search"
category: concepts
tags: [search, embeddings, semantic-search, natural-language, books, retrieval]
summary: "Search method using vector embeddings to find content by meaning rather than exact text matching — useful for finding scenes or passages when you can't remember exact keywords."
sources:
  - "[[sources/watchv=kcka7rzcxlk]]"
provenance: { extracted: 0.9, inferred: 0.1, ambiguous: 0.0 }
base_confidence: 0.9
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05T00:30:00Z
updated: 2026-07-05T00:30:00Z
relationships:
  - target: "[[concepts/agentic-rag]]"
    type: related_to
  - target: "[[concepts/graph-vs-document-retrieval]]"
    type: related_to
  - target: "[[concepts/multi-hop-retrieval]]"
    type: related_to
---

## Embedding Search

Embedding search is a retrieval method that uses vector embeddings to find content by semantic meaning rather than exact text matching. Instead of searching for keywords, you describe what you're looking for in natural language and the system finds the most semantically similar content.

### How It Works

When a user asks "find the scene where Winston met O'Brien," exact text search fails because those words may not appear together. Embedding search converts both the query and the document passages into vector embeddings, then finds the nearest neighbors in vector space. This captures the meaning behind the query even when the exact words differ.

### Application in Books

[[entities/lukasz-gandecki|Łukasz Gądecki]] demonstrated embedding search in Books Reimagined as a superior alternative to exact search for literary content. The human brain doesn't memorize exact text — it remembers scenes, contexts, and relationships. Embedding search matches this cognitive pattern.

The workflow includes:
1. Find the matching scene via embeddings
2. Navigate directly to that position in the book
3. Read the passage
4. Return to the original reading position

### Related Approaches

Embedding search is one layer in a broader retrieval strategy. It works alongside [[concepts/deep-research-reading|deep research]] (where the system reads the entire book to answer questions) and [[concepts/graph-vs-document-retrieval|graph-based retrieval]] for more complex queries.
