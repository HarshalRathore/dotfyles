---
title: Search Evaluation Methods
tags: [search, evaluation, quality, metrics]
sources: ["[[sources/ai-engineer-worlds-fair-2025-information-retrieval-from-the-ground-up-philipp-krenn]]", "[[sources/watchv=4xe_imyxbqc]]"]
summary: "Methods for measuring search result quality: golden datasets, clickstream analysis, LLM-as-judge, and human+LLM evaluation. Robust evaluation is rare but critical."
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

# Search Evaluation Methods

Evaluating search quality is notoriously difficult but essential. The fundamental challenge: tuning can improve one query while degrading twenty others, so you need systematic measurement. ^[extracted]

## Four Approaches

### 1. Golden Dataset (Gold Standard)
Human experts create a curated set of queries with known-good results. The most rigorous approach — and the rarest in practice. Requires ongoing maintenance as the corpus changes. ^[extracted]

### 2. Clickstream Analysis
Infer quality from user behavior signals:
- Clicked on top result and stayed → likely relevant ^[extracted]
- Paged through many results → poor ranking ^[extracted]
- Searched again immediately (bounced) → bad result set ^[extracted]
- No clicks at all → possibly no relevant results found ^[extracted]

### 3. LLM-as-Judge
Use an LLM to evaluate result relevance for a set of queries. A more scalable alternative to human judges. Quality depends on the LLM's own reliability as a rater. ^[extracted]

### 4. Human + LLM (Mixed)
Combine human expertise with LLM scalability — LLM pre-scores, humans spot-check. Probably the best practical compromise. ^[inferred]

## The YOLO Problem

"A lot of people YOLO it" — despite the importance of evaluation, rigorous evaluation sets are rare. For many e-commerce applications, this works "well enough" because showing somewhat relevant results is better than showing nothing (as long as results are fast). ^[extracted] However, for domains like legal case databases, poor search quality can have serious consequences. ^[extracted]

## Domain Specificity

Search quality is inherently domain-specific. The same retrieval pipeline that works for e-commerce (always show something) would be dangerous for legal research (accuracy matters more than coverage). ^[extracted]

## Related

- [[concepts/information-retrieval]]
- [[concepts/hybrid-search]]
- [[concepts/re-ranking]]
- [[concepts/bm25-scoring]]
- [[concepts/rag-evaluation]]

## Sources

- AI Engineer World's Fair 2025 — Philipp Krenn, Elastic: <https://www.youtube.com/watch?v=4Xe_iMYxBQc>
