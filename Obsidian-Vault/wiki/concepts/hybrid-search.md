---
title: Hybrid Search
tags: [search, retrieval, hybrid, fusion]
sources: ["AI Engineer World's Fair 2025 - Information Retrieval from the Ground Up - Philipp Krenn, Elastic - https://www.youtube.com/watch?v=4Xe_iMYxBQc"]
summary: "Combining multiple search methods (keyword + dense vector + sparse vector) to get the best of each. Increasingly recognized as necessary for production retrieval systems. Uses RRF or score normalization for fusion."
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

# Hybrid Search

Combining multiple retrieval methods into a single ranked result set. Defined as any search using more than one type of retrieval — keyword + dense vector, dense + sparse vector, or even multiple dense vector models against different field representations. ^[extracted]

## Why Hybrid?

**Vector search is not a replacement for keyword search.** Each method has complementary strengths:

| Method | Strength | Weakness |
|---|---|---|
| **Lexical** | Exact brand/ID/name matching, predictable, fast, clear cutoff | No semantic understanding, zero results for vocabulary mismatch |
| **Dense vector** | Semantic similarity, handles paraphrasing | No exact-match guarantee, always returns something (potentially unrelated) |
| **Sparse vector** | Learned term expansion, interpretable | Expensive at query time, English-only in practice |

Most production systems need hybrid search because users get angry when a known term doesn't match — and vector search alone can't guarantee exact-match retrieval for brand names and identifiers. ^[extracted]

## Fusion Methods

### Reciprocal Rank Fusion (RRF)
The recommended approach. Ignores absolute scores and blends by position:
`score = 1 / (60 + rank_per_method)`
Scores from each sub-query are summed per document. Bypasses the score normalization problem entirely. ^[extracted]

### Score Normalization
Convert sub-scores to a common scale (min-max, z-score) before blending with per-method weights. More fragile than RRF because BM25 and vector similarity have incomparable ranges and no natural ceiling. ^[extracted]

## Practical Patterns

- **Query-length routing**: single-word queries → keyword search; multi-word queries → vector search or hybrid ^[inferred]
- **Multi-field storage**: store text with/without stop words, with n-grams, each with different boost weights ^[inferred]
- **LLM rewriting → hybrid search**: rewrite natural language query for better retrieval, then run hybrid search on the rewritten form ^[extracted]

## Related

- [[concepts/reciprocal-rank-fusion]]
- [[concepts/re-ranking]]
- [[concepts/dense-vector-search]]
- [[concepts/sparse-vector-retrieval]]
- [[concepts/lexical-search]]
- [[concepts/information-retrieval]]
- [[concepts/hybridrag]]

## Sources

- AI Engineer World's Fair 2025 — Philipp Krenn, Elastic: <https://www.youtube.com/watch?v=4Xe_iMYxBQc>
