---
title: Information Retrieval
tags: [search, retrieval, fundamentals]
sources: ["AI Engineer World's Fair 2025 - Information Retrieval from the Ground Up - Philipp Krenn, Elastic - https://www.youtube.com/watch?v=4Xe_iMYxBQc"]
summary: "The field of finding relevant information from a collection of documents. Encompasses keyword/lexical search, vector search, hybrid methods, and evaluation. The 'R' in RAG."
provenance:
  extracted: 0.80
  inferred: 0.20
  ambiguous: 0.00
base_confidence: 0.80
lifecycle: draft
tier: supporting
created: 2026-07-03T08:30:00Z
updated: 2026-07-03T08:30:00Z
---

# Information Retrieval

The field of finding relevant information from a collection of documents. Depending on how you define it, the field is 50–70+ years old. ^[extracted] It is the "R" in RAG (Retrieval-Augmented Generation), though most RAG discussions focus on generation while the retrieval half is equally important. ^[extracted]

## The Retrieval Stack

Information retrieval systems combine multiple techniques:

1. **Lexical/Keyword search** — fast, scalable, predictable. Matches on string identity after an analysis pipeline (tokenization, stemming, stop word removal). Dumb but effective for exact matches. ^[extracted]
2. **Dense vector search** — learned semantic similarity via embeddings. Always returns something (no clean cutoff), quality depends on model choice and evaluation. ^[extracted]
3. **Sparse vector search** — learned term expansion (ELSER/SPLADE). More interpretable than dense but expensive at query time due to many OR clauses. ^[extracted]
4. **Hybrid search** — combining multiple methods via Reciprocal Rank Fusion (RRF) or score blending. Increasingly recognized as necessary for production systems. ^[extracted]
5. **Re-ranking** — cheap retrieval followed by expensive, higher-quality scoring on a candidate subset. ^[extracted]

Vector search is a feature of retrieval, not a replacement for it. ^[extracted]

## Evaluation

Search quality evaluation approaches range from golden datasets and clickstream analysis to LLM-as-judge. Robust evaluation is rare but critical — tuning can improve one query while degrading twenty others. ^[extracted]

## Related

- [[concepts/lexical-search]]
- [[concepts/inverted-index]]
- [[concepts/bm25-scoring]]
- [[concepts/hybrid-search]]
- [[concepts/search-evaluation-methods]]
- [[concepts/query-rewriting]]
- [[references/information-retrieval-ground-up-philipp-krenn-elastic-2025]]

## Sources

- AI Engineer World's Fair 2025 — Philipp Krenn, Elastic: <https://www.youtube.com/watch?v=4Xe_iMYxBQc>
