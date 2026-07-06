---
title: Wisdom Graph
tags:
- knowledge-graph
- architecture
- decision-making
- agent
- feedback-loop
aliases:
- Wisdom Engine
- Wisdom Graph State Machine
sources:
- 'https://www.youtube.com/watch?v=9aqovt8lnmi'
summary: A state-machine conceptual model for AI systems where Wisdom guides Decision-Making by analyzing Situations using Knowledge, Experience, and Insight — with a continuous feedback loop that enriches...
provenance:
  extracted: 0.6
  inferred: 0.3
  ambiguous: 0.1
base_confidence: 0.35
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
relationships:
- target: '[[concepts/kag-knowledge-augmented-generation|KAG]]'
  type: extends
- target: '[[concepts/knowledge-graph-ontology-design|Knowledge Graph Ontology Design]]'
  type: related_to
category: concepts
---

# Wisdom Graph

The Wisdom Graph is a conceptual state-machine model for building AI systems that perform research and advisory roles. It models how expert decision-making emerges from the interplay of knowledge, experience, insight, and situational awareness — organized as a graph where each node has a specific role and the edges form continuous feedback loops. ^[extracted]

## The State Machine

The core state machine has four interconnected nodes:

```
Wisdom (core) → Decision-Making → Situation (analysis) → feedback
    ↑                    ↓
    └── Knowledge ──────┘
    └── Experience ─────┘
    └── Insight ────────┘
```

Each element has a distinct role: ^[extracted]

| Node | Role | Example |
|---|---|---|
| **Wisdom** | Core orchestrator; actively guides decisions, not passive storage. "Wisdom isn't a trophy you earn, it's a muscle you exercise." | Synthesizes data after knowledge ingestion; derives patterns from chaos (e.g., tracking product sentiment from messy social media data) |
| **Knowledge** | Facts, data, and learned information. "The recipe." | Market data, encyclopedia, Wikipedia — structured and unstructured information stores |
| **Experience** | What worked before. "Knowing your oven burns the crust." | Past campaign performance, historical outcomes, accumulated operational patterns |
| **Insight** | Novel connections and creative leaps. "Adding honey to the crust for perfect caramelization." | Competitor weakness identification, pattern discovery across disparate datasets |
| **Situation** | Real-world context. "How is my product selling right now?" | Current market conditions, competitor positioning, real-time metrics |

## The Feedback Loop

The critical property of the Wisdom Graph is that feedback isn't one-way — it propagates back to enrich every node: ^[extracted]

- **Situation → Wisdom**: Real-world outcomes inform future wisdom
- **Experience → Wisdom**: Past results deepen the system's judgment
- **Insight → Wisdom**: Novel connections sharpen the system's intuition

As the system operates, "the more feedback, the stronger it gets" — analogous to a tree growing roots. ^[extracted] This makes the Wisdom Graph a self-improving decision engine, not a static knowledge store.

## Mapping to System Architecture

In practice, the conceptual state machine maps to concrete system components: ^[extracted]

| Concept Node | System Component |
|---|---|
| Wisdom | Supervisory orchestration agent (routes queries, decides which sub-agents to invoke) |
| Decision-Making | Strategy generator module |
| Knowledge | Market data databases, vector stores, knowledge graphs |
| Experience | Historical campaign / performance databases |
| Insight | Social media sentiment analysis, pattern detection, competitor weakness identification |
| Situation | Current product performance metrics, real-time dashboards |

## Relationship to KAG

The Wisdom Graph is the conceptual foundation for [[concepts/kag-knowledge-augmented-generation|KAG (Knowledge Augmented Generation)]]. Where KAG describes the retrieval-generation architecture, the Wisdom Graph describes the underlying cognitive model — why the architecture is structured that way and how the system is expected to improve over time. ^[inferred]

## Sources

- [[references/aief2025-wisdom-driven-kag-chin-keong-lam|AIEF2025 — Wisdom-Driven Knowledge Augmented Generation at Scale — Chin Keong Lam, Patho AI]] — Conference talk
