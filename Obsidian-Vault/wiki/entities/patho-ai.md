---
title: "Patho AI"
tags:
  - company
  - ai
  - knowledge-graph
  - kag
  - consulting
aliases:
  - Patho.ai
  - Pato AI
  - Pato.ai
sources:
  - "AIEF2025 - Wisdom-Driven Knowledge Augmented Generation at Scale - Chin Keong Lam, Patho AI - https://www.youtube.com/watch?v=9AQOvT8LnMI"
summary: "AI consulting company founded by Chin Keong Lam, specializing in expert AI systems that use knowledge-augmented generation (KAG) and wisdom graphs for research and advisory tasks."
provenance:
  extracted: 0.55
  inferred: 0.35
  ambiguous: 0.10
base_confidence: 0.30
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
relationships:
  - target: "[[entities/chin-keong-lam|Chin Keong Lam]]"
    type: related_to
  - target: "[[concepts/kag-knowledge-augmented-generation|KAG (Knowledge Augmented Generation)]]"
    type: related_to
  - target: "[[concepts/wisdom-graph|Wisdom Graph]]"
    type: related_to
---

# Patho AI

Patho AI is an AI consulting company founded by [[entities/chin-keong-lam|Chin Keong Lam]]. The company started two years ago with an NSF SBIR grant investigating LLM-driven discovery applications, then expanded to building expert AI systems for enterprise clients. ^[extracted]

## Focus

Patho AI builds AI systems that go beyond traditional RAG. Their systems perform tasks like research and advisory roles — competitive analysis, market intelligence, strategic recommendations — based on their clients' areas of interest. The core technology is the [[concepts/wisdom-graph|Wisdom Graph]] state machine powering [[concepts/kag-knowledge-augmented-generation|KAG (Knowledge Augmented Generation)]] systems. ^[extracted]

## Approach

- Uses structured [[entities/neo4j|Neo4j]] knowledge graphs as the primary retrieval index
- Combines automated LLM extraction with expert domain knowledge for graph construction
- Multi-agent architecture with a supervisory wisdom agent orchestrating sub-agents (insight, market data, etc.)
- Knowledge cards for precise quantitative retrieval via function calls ^[extracted]

## Sources

- [[references/aief2025-wisdom-driven-kag-chin-keong-lam|AIEF2025 — Wisdom-Driven Knowledge Augmented Generation at Scale — Chin Keong Lam, Patho AI]] — Conference talk
