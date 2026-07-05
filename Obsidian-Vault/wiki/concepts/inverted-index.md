---
title: Inverted Index
tags: [search, data-structure, fundamentals]
sources: ["[[sources/ai-engineer-worlds-fair-2025-information-retrieval-from-the-ground-up-philipp-krenn]]", "[[sources/watchv=4xe_imyxbqc]]"]
summary: "The fundamental data structure behind search engines. An alphabetically sorted mapping from every token to the documents containing it, including term frequency and position data."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
tier: supporting
created: 2026-07-03T08:30:00Z
updated: 2026-07-03T08:30:00Z
---

# Inverted Index

The core data structure behind search engines built on [[entities/apache-lucene|Apache Lucene]] ([[entities/elastic|Elasticsearch]], Solr, OpenSearch). The key insight: do the hard work at **ingestion time** so retrieval is fast. ^[extracted]

## Structure

An alphabetically sorted list of every token extracted during analysis, with per-document metadata:

```
Term        Doc ID  Frequency  Positions
─────────────────────────────────────────
droid       1       1          [4]
father      2       1          [3]
father      3       1          [5]
look        1       1          [5]
machine     4       1          [2]
...
```

Each entry stores:
- **Document ID** — which documents contain this token
- **Term frequency** — how many times the token appears (for BM25 scoring)
- **Position list** — where in the document each occurrence appears (for phrase queries and highlighting)

This structure is what differentiates a search engine from a database: a database stores raw data and processes at query time; a search engine pre-processes at write time. ^[inferred]

## What Positions Enable

- **Phrase search** — match "these droids" only if "these" at position 3 and "droids" at position 4 ^[extracted]
- **Highlighting** — show where a match occurred without re-analyzing the source text (which could be pages long) ^[extracted]
- **Slop** — allow adjustable gaps in phrase matching ^[extracted]

## Related

- [[concepts/lexical-search]]
- [[concepts/bm25-scoring]]
- [[concepts/analysis-pipeline]]
- [[entities/apache-lucene]]
- [[entities/elastic]]

## Sources

- AI Engineer World's Fair 2025 — Philipp Krenn, Elastic: <https://www.youtube.com/watch?v=4Xe_iMYxBQc>
