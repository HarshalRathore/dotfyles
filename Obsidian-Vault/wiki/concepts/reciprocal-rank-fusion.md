---
title: Reciprocal Rank Fusion
tags:
- search
- ranking
- fusion
- rrf
aliases:
- RRF
sources:
- '[[sources/ai-engineer-worlds-fair-2025-information-retrieval-from-the-ground-up-philipp-krenn]]'
- 'https://www.youtube.com/watch?v=4xe_imyxbqc'
summary: Simple, position-based method for blending ranked results from multiple retrieval methods. Ignores absolute scores, uses only rank positions. Described in a ~2-page paper.
provenance:
  extracted: 0.9
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.8
lifecycle: draft
tier: supporting
created: 2026-07-03 08:30:00+00:00
updated: 2026-07-03 08:30:00+00:00
category: concepts
---

# Reciprocal Rank Fusion

A method for blending ranked result lists from different retrieval methods into a single ranking. RRF is popular in [[concepts/hybrid-search|hybrid search]] because it bypasses the problem of normalizing incomparable scores from different methods. ^[extracted]

## The Formula

```
RRF_score(d) = Σ 1 / (60 + rank_method(d))
```

For each document `d`, sum its reciprocal rank (with constant 60) across all methods. The constant 60 was empirically determined in the original paper. ^[extracted]

## Why RRF Works

- BM25 scores and dense vector similarity scores have different ranges, no natural ceiling, and are not directly comparable ^[extracted]
- RRF ignores absolute score values entirely, using only position ^[extracted]
- Simple to implement — the paper is ~2 pages ^[extracted]

## Example

If lexical search ranks document X at position 4, and dense vector search ranks it at position 2:
- RRF contribution = 1/(60+4) + 1/(60+2) = 1/64 + 1/62 ≈ 0.0313

## Related

- [[concepts/hybrid-search]]
- [[concepts/re-ranking]]
- [[concepts/bm25-scoring]]
- [[concepts/dense-vector-search]]
- [[entities/elastic]]

## Sources

- AI Engineer World's Fair 2025 — Philipp Krenn, Elastic: <https://www.youtube.com/watch?v=4Xe_iMYxBQc>
