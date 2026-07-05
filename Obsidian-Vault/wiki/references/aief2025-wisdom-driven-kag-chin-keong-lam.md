---
title: "AIEF2025 — Wisdom-Driven Knowledge Augmented Generation at Scale — Chin Keong Lam, Patho AI"
category: references
tags:
  - ai-engineering
  - knowledge-graph
  - kag
  - retrieval
  - neo4j
  - aief2025
aliases:
  - Chin Keong Lam AIEF2025
  - Wisdom-Driven KAG
sources:
  - "[[sources/watchv=9aqovt8lnmi]]"
summary: "Chin Keong Lam, founder of Patho AI, presents KAG (Knowledge Augmented Generation) — a wisdom-driven architecture using structured knowledge graphs with knowledge cards for precise quantitative reasoning, contrasting it with traditional vector RAG across five dimensions."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.40
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
relationships:
  - target: "[[concepts/kag-knowledge-augmented-generation|KAG (Knowledge Augmented Generation)]]"
    type: related_to
  - target: "[[concepts/wisdom-graph|Wisdom Graph]]"
    type: related_to
  - target: "[[concepts/knowledge-cards|Knowledge Cards]]"
    type: related_to
  - target: "[[concepts/hybrid-graph-extraction|Hybrid Graph Extraction]]"
    type: related_to
  - target: "[[entities/chin-keong-lam|Chin Keong Lam]]"
    type: related_to
  - target: "[[entities/patho-ai|Patho AI]]"
    type: related_to
---

# AIEF2025 — Wisdom-Driven Knowledge Augmented Generation at Scale

> Chin Keong Lam, Founder/CEO of [[entities/patho-ai|Patho AI]], argues that structured knowledge graphs with a wisdom-driven feedback architecture significantly outperform vector RAG for complex analytical and advisory queries, particularly when precise quantitative answers are required.

## Overview

Chin Keong Lam, founder and CEO of [[entities/patho-ai|Patho AI]], presents KAG (Knowledge Augmented Generation) — an architecture that integrates structured knowledge graphs with LLMs to produce more accurate and insightful responses than traditional RAG. The talk introduces the **Wisdom Graph** state machine, a conceptual model where Wisdom guides Decision-Making by analyzing Situations using Knowledge, Experience, and Insight — with continuous feedback loops that make the system self-improving. ^[extracted]

Patho AI started with an NSF SBIR grant for LLM-driven discovery and now builds expert AI systems for enterprise clients requiring research and advisory capabilities.

## Key Ideas

### KAG vs RAG

KAG differs from RAG in that it doesn't just retrieve passages — it understands relationships. By using structured knowledge graphs as the primary retrieval index, KAG systems can: ^[extracted]

1. **Answer complex multi-hop queries** — "How can I beat my competitor given my current market share?"
2. **Return precise quantitative answers** — exact revenue figures, growth rates, and market share via knowledge cards + function calls, not passage text
3. **Reduce noise** — structured retrieval eliminates semantically similar but irrelevant passages
4. **Provide traceable evidence** — every answer traces back to structured data with clear relationships

### The Wisdom Graph State Machine

The central conceptual contribution: a state machine where Wisdom (core) → Decision-Making → Situation (analysis) → feedback loop back to Wisdom. Knowledge, Experience, and Insight feed into Wisdom, and each node updates the others. The system becomes self-improving: "the more feedback, the stronger it gets." ^[extracted]

### Five Reasons to Use Knowledge Graphs over Vector RAG

1. **Complex relationships** — KGs capture entity relationships that vector databases miss, enabling deeper contextual understanding
2. **Improved accuracy** — structured data semantics reduce noise and provide more relevant, precise information
3. **Scalability and flexibility** — KGs integrate new data sources and relationships continuously; correct taxonomy ensures continuous improvement
4. **Rich query capability** — Cypher queries traverse multiple relationship edges for multi-hop questions
5. **Enhanced data integration** — diverse data sources (text, images, videos with OCR) can be integrated into a single graph ^[extracted]

### Knowledge Cards for Quantitative Precision

A key weakness of vector RAG: it retrieves passages with numbers embedded in text, making numerical answers imprecise. KAG solves this with **knowledge cards** — structured representations (e.g., "Apple Financial Data" card) that are retrieved via Cypher query and returned as exact values via function calls. This enables evidence-based decision-making with verified numbers. ^[extracted]

### Recommended Architecture: RAG + KAG Spectrum

Lam recommends a spectrum approach: simple Chroma DB + LLM for basic product info queries, escalating to KAG with Neo4j + Cypher for complex multi-hop questions. The decision depends on query complexity. ^[extracted]

### Hybrid Graph Extraction

Recommended methodology: automated LLM graph extraction followed by expert pruning and taxonomy refinement. Domain experts interview → auto-extraction → prune incorrect relationships → refine taxonomy. This balances speed with quality. ^[extracted]

### Benchmark Results

Lam claims the following benchmark results for their KAG system: ^[extracted]

| Dimension | Score |
|---|---|
| Accuracy | 91% |
| Flexibility | 85% |
| Reproducibility (deterministic) | High |
| Traceability | High |
| Scalability | High |

## Notable Quotes

> "KAG doesn't just retrieve. It understands." ^[extracted]

> "Wisdom isn't a trophy you earn. It is a muscle you exercise. The more you feed knowledge, experience, insight, the more they guide you." ^[extracted]

> "Feedback isn't a one-way street. It learns from itself." ^[extracted]

> "Knowledge tells you what it is. Experience tells you what worked before. Insight invents what to try next." ^[extracted]

> "If your taxonomy is correct, you will continue to improve and reach." ^[extracted]

## Tools Mentioned

- [[entities/neo4j|Neo4j]] — graph database for storing the knowledge graph; their LLM Graph Builder (open-source Docker stack) converts text to graph out of the box
- [[entities/n8n|N8N]] — workflow automation tool used for rapid prototyping of multi-agent KAG systems
- Chroma DB — for simple RAG use cases
- LangChain — framework option for building RAG/KAG pipelines

## Open Questions

- The benchmark methodology (accuracy 91%) was described briefly — it's unclear what dataset and metrics were used. ^[ambiguous]
- The scalability claims are asserted but not backed with specific numbers on graph size or query latency. ^[ambiguous]

## Related

- [[concepts/kag-knowledge-augmented-generation|KAG (Knowledge Augmented Generation)]] — core architecture of this talk
- [[concepts/wisdom-graph|Wisdom Graph]] — conceptual state machine model
- [[concepts/knowledge-cards|Knowledge Cards]] — structured data retrieval pattern
- [[concepts/hybrid-graph-extraction|Hybrid Graph Extraction]] — recommended KG construction methodology
- [[concepts/graphrag|GraphRAG]] — related graph-based retrieval architecture
- [[concepts/hybridrag|HybridRAG]] — graph + vector fusion approach

## Sources

- <https://www.youtube.com/watch?v=9AQOvT8LnMI> — Full talk recording
