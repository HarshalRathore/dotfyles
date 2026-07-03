---
title: "Knowledge Cards"
tags:
  - retrieval
  - structured-data
  - kag
  - rag
  - function-calling
aliases:
  - Knowledge Card Retrieval
  - Structured Data Cards
sources:
  - "AIEF2025 - Wisdom-Driven Knowledge Augmented Generation at Scale - Chin Keong Lam, Patho AI - https://www.youtube.com/watch?v=9AQOvT8LnMI"
summary: "A structured data retrieval pattern where entity data is stored in queryable card structures (e.g., financial metrics) enabling precise numerical answers via function calls, as opposed to passage retrieval which yields imprecise text snippets."
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.35
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
relationships:
  - target: "[[concepts/kag-knowledge-augmented-generation|KAG]]"
    type: uses
  - target: "[[concepts/graphrag|GraphRAG]]"
    type: related_to
  - target: "[[concepts/information-retrieval|Information Retrieval]]"
    type: related_to
---

# Knowledge Cards

Knowledge Cards are structured data representations for entity attributes — financial metrics, competitor data, market statistics — stored in a queryable format within a [[concepts/kag-knowledge-augmented-generation|KAG]] system. They enable precise quantitative answers through function-call-based retrieval, in contrast to vector RAG which returns semantically similar passage text. ^[extracted]

## The Problem They Solve

Vector RAG is reliably poor at numerical reasoning. When asked "What was Apple's revenue growth between 2021 and 2022?", a vector RAG system returns passages that contain the numbers somewhere in the text — but the answer is embedded in prose that the LLM must then parse and compute from. The result is imprecise and hard to verify. ^[extracted]

Knowledge Cards address this by storing structured data in a format that makes it directly queryable: ^[extracted]

| Approach | Query | Result |
|---|---|---|
| Vector RAG | "Apple revenue 2021-2022" | Passage of text with revenue figures embedded in prose |
| Knowledge Cards | Same query | `{ revenue_2021: 365.8B, revenue_2022: 394.3B, growth: 7.8% }` via function call |

## Architecture

In a KAG system, knowledge cards are: ^[extracted]

1. **Pre-defined structured representations** — entity attributes are extracted and stored as queryable cards (e.g., "Apple Financial Data" card with revenue, profit, market cap fields)
2. **Cypher-query accessible** — stored in a [[entities/neo4j|Neo4j]] graph database, the query engine runs a Cypher query to select exact values
3. **Function-call mediated** — the query engine resolves the structured data via a function call, returning precise numbers rather than passage text

This enables **evidence-based decision-making** — the output is a verified number, not a retrieved text that may or may not be accurate. ^[extracted]

## When to Use

Knowledge Cards are particularly valuable for:
- Financial analysis — revenue, profit margins, growth rates, market share
- Competitive analysis — precise comparisons of market metrics
- Any domain where decisions depend on exact numbers, not textual descriptions
- KAG and GraphRAG systems that need to combine structured quantitative data with unstructured text retrieval ^[inferred]

## Sources

- [[references/aief2025-wisdom-driven-kag-chin-keong-lam|AIEF2025 — Wisdom-Driven Knowledge Augmented Generation at Scale — Chin Keong Lam, Patho AI]] — Conference talk
