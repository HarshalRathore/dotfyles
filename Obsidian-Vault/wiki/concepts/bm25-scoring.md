---
title: BM25 Scoring
tags: [search, ranking, algorithm]
aliases: [BM25, Best Match 25, Okapi BM25]
sources: ["AI Engineer World's Fair 2025 - Information Retrieval from the Ground Up - Philipp Krenn, Elastic - https://www.youtube.com/watch?v=4Xe_iMYxBQc"]
summary: "The standard ranking algorithm for lexical search. Replaces TF-IDF with a saturated term frequency curve. Combines term frequency, inverse document frequency, and field length normalization."
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

# BM25 Scoring

BM25 (Best Match, 25th iteration) is the standard scoring algorithm for [[concepts/lexical-search|lexical search]] in [[entities/apache-lucene|Apache Lucene]]-based search engines. It replaced classic TF-IDF with a key improvement: saturated term frequency. ^[extracted]

## Three Components

### 1. Term Frequency (saturated)
How often the search term appears in the document. Unlike TF-IDF where relevance grows linearly, BM25 saturates: after ~5 occurrences, additional matches add minimal relevance. The assumption: a document mentioning "droid" once is relevant; one mentioning it ten times is not ten times more relevant. ^[extracted]

### 2. Inverse Document Frequency
Over the entire corpus, how common is the term? Rare terms are more relevant than common ones. "Father" in a small corpus is highly discriminative; "your" is not. ^[extracted]

### 3. Field Length Norm
A match in a short field (e.g., a title) is more relevant than the same match in a long field (e.g., a full page). ^[extracted]

## Critical Caveat: Scores Are Not Percentages

BM25 scores are **relative within a single query**:

- Adding or removing a document changes corpus statistics and shifts all scores ^[extracted]
- They are not comparable across queries ^[extracted]
- A "perfect" match on one query might score 3.2; after deleting that document and re-searching, a different document scoring 2.1 is now the new best match — neither is "100%" ^[extracted]
- Lucene documentation explicitly warns against treating scores as percentages ^[extracted]

## Multi-Term Scoring

For multi-term queries, each term's BM25 contribution is combined via:
- **Vector space model** — the query and each document are vectors in term space; cosine similarity between query vector and document vector determines relevance ^[extracted]
- **Coordination factor** — documents containing more of the search terms receive a proportional boost (3 matching terms → multiply by 3/3, 2 terms → 2/3) ^[extracted]

## Debugging

Use the `explain` parameter in Elasticsearch to see the detailed breakdown of how each score component was calculated for a match. ^[extracted]

## Customization

Scores can be modified with:
- **Boosts** — weight certain fields or queries higher (e.g., 2x for title matches) ^[extracted]
- **Rank features** — incorporate non-text signals (product margin, rating, stock level, click-through rate) ^[extracted]
- **Random scoring** — for testing or randomization use cases ^[extracted]

## Related

- [[concepts/lexical-search]]
- [[concepts/inverted-index]]
- [[entities/apache-lucene]]
- [[concepts/information-retrieval]]
- [[concepts/hybrid-search]]

## Sources

- AI Engineer World's Fair 2025 — Philipp Krenn, Elastic: <https://www.youtube.com/watch?v=4Xe_iMYxBQc>
