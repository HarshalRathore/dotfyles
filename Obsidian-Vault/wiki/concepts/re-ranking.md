---
title: Re-ranking
tags: [search, ranking, two-stage-retrieval]
sources: ["AI Engineer World's Fair 2025 - Information Retrieval from the Ground Up - Philipp Krenn, Elastic - https://www.youtube.com/watch?v=4Xe_iMYxBQc"]
summary: "Two-stage retrieval: retrieve a broad set of candidates with a cheap method, then re-score the top N with a more expensive, higher-quality model. Increasingly popular for improving search quality."
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

# Re-ranking

A two-stage retrieval architecture that balances cost and quality:

1. **First stage** — use a cheap retrieval method (keyword search, vector ANN) to get a broad set of candidate documents (e.g., top 1000)
2. **Second stage** — apply a more expensive, higher-quality scoring model to re-rank the candidate subset

This avoids running an expensive model across the entire corpus. ^[extracted]

## Built-in Re-ranking

[[entities/elastic|Elasticsearch]] now includes a built-in neural re-ranking model accessible via the inference API. On customer datasets, this model reportedly boosts evaluation scores by ~10 points. ^[extracted]

## Key Parameters

- **Candidate window size** — larger window = slower but potentially higher quality results ^[extracted]
- **Minimum score cutoff** — discard clearly irrelevant candidates before re-ranking to reduce cost ^[extracted]
- **Per-method weights** — in score-based hybrid fusion (vs [[concepts/reciprocal-rank-fusion|RRF]]), each retrieval method can be weighted independently ^[extracted]

## Compared to RRF

Re-ranking applies a *single* high-quality model to a pooled candidate set, while [[concepts/reciprocal-rank-fusion|RRF]] blends the *original* scores/positions from different methods. They can be combined: retrieve with multiple methods, pool candidates, then re-rank the pool. ^[inferred]

## Related

- [[concepts/hybrid-search]]
- [[concepts/reciprocal-rank-fusion]]
- [[concepts/dense-vector-search]]
- [[concepts/lexical-search]]
- [[concepts/information-retrieval]]

## Sources

- AI Engineer World's Fair 2025 — Philipp Krenn, Elastic: <https://www.youtube.com/watch?v=4Xe_iMYxBQc>
