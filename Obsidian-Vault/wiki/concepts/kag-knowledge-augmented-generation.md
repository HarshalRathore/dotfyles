---
title: KAG (Knowledge Augmented Generation)
tags:
- rag
- knowledge-graph
- retrieval
- kag
- architecture
- structured-data
aliases:
- Knowledge Augmented Generation
- KAG
sources:
- 'https://www.youtube.com/watch?v=9aqovt8lnmi'
summary: A retrieval-generation architecture that integrates structured knowledge graphs with LLMs to produce accurate, insight-driven responses. Unlike RAG (which retrieves passages), KAG retrieves structu...
provenance:
  extracted: 0.75
  inferred: 0.2
  ambiguous: 0.05
base_confidence: 0.4
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
relationships:
- target: '[[concepts/graphrag|GraphRAG]]'
  type: related_to
- target: '[[concepts/hybridrag|HybridRAG]]'
  type: related_to
- target: '[[concepts/wisdom-graph|Wisdom Graph]]'
  type: extends
- target: '[[concepts/knowledge-cards|Knowledge Cards]]'
  type: uses
- target: '[[concepts/hybrid-graph-extraction|Hybrid Graph Extraction]]'
  type: uses
category: concepts
---

# KAG (Knowledge Augmented Generation)

KAG (Knowledge Augmented Generation) is a retrieval-generation architecture that goes beyond traditional RAG by integrating structured [[concepts/knowledge-graph-ontology-design|knowledge graphs]] as the primary retrieval index. Unlike RAG which retrieves passage chunks by semantic similarity, KAG retrieves entity-relationship subgraphs, performs multi-hop reasoning across structured nodes, and can execute precise quantitative lookups via [[concepts/knowledge-cards|knowledge cards]]. ^[extracted]

The central claim of KAG is that it **doesn't just retrieve — it understands.** By structuring knowledge as a graph of entities with typed relationships, KAG systems can answer complex queries that require reasoning across multiple facts, numerical precision, and evidence-based decision-making — areas where vector RAG consistently underperforms. ^[extracted]

## KAG vs RAG

| Dimension | Traditional RAG | KAG |
|---|---|---|
| Retrieval unit | Passage chunks (text) | Entity-relationship subgraphs (structured) |
| Reasoning | Semantic similarity | Graph traversal + multi-hop reasoning |
| Numerical queries | Poor — retrieves passages with numbers hidden in text | Strong — knowledge cards return exact values via function calls |
| Complex queries | Struggles with multi-hop ("how can I beat competitor X given my market share?") | Excels — Cypher queries traverse multiple relationship edges |
| Noise | High — retrieves semantically similar but irrelevant passages | Low — structured retrieval filters irrelevant content |
| Evidence | Retrieved passage text | Structured data with traceable relationships |

## Architecture

KAG systems combine:
1. **Knowledge Graph** — entities, typed relationships, and attributes stored in a graph database (e.g., [[entities/neo4j|Neo4j]]). Domain-specific taxonomy designed with domain experts. ^[extracted]
2. **Knowledge Cards** — structured data representations for entities, enabling function-call-based precise retrieval of quantitative values (e.g., exact revenue figures, market share percentages). ^[extracted]
3. **Wisdom Engine** (orchestration layer) — a supervisory agent that routes queries to sub-agents (insight agent, market data agent, etc.), each updating and querying the shared knowledge graph. ^[extracted]
4. **Multi-Hop Query Engine** — Cypher queries that traverse multi-level relationships for complex analytical questions. ^[extracted]

## When to Use KAG

KAG is particularly valuable for:
- **Competitive analysis** — "What are my competitor's weaknesses given my current market share?"
- **Research and advisory** — systems that must produce evidence-based recommendations, not just retrieved text
- **Quantitative domains** — financial analysis, market intelligence, any domain where numbers drive decisions
- **Enterprise expert systems** — replacing manual research workflows (e.g., marketing departments) with AI that can reason across structured and unstructured data ^[extracted]

Simple product information queries can still be served by lightweight RAG. ^[inferred]

## Relationship to GraphRAG and HybridRAG

KAG is related to [[concepts/graphrag|GraphRAG]] and [[concepts/hybridrag|HybridRAG]] but distinguishes itself by emphasizing:
- A **wisdom-driven** architecture with explicit feedback loops (knowledge → experience → insight → wisdom) rather than pure retrieval
- **Knowledge cards** for structured quantitative data, enabling precise function-call-based answers rather than passage retrieval
- **Domain-expert-defined taxonomy** that guides extraction and retrieval, rather than fully automated triplet extraction ^[inferred]

See [[concepts/wisdom-graph|Wisdom Graph]] for the conceptual model that drives KAG decision-making.

## Sources

- [[references/aief2025-wisdom-driven-kag-chin-keong-lam|AIEF2025 — Wisdom-Driven Knowledge Augmented Generation at Scale — Chin Keong Lam, Patho AI]] — Conference talk
