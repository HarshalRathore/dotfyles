---
title: "Neo4j"
category: entities
tags:
  - entity
  - company
  - graph-database
  - ai
  - neo4j
aliases:
  - Neo4j Inc
sources:
  - "[[sources/watchv=XNneh6-eyPg]]"
  - "[[sources/watchv=cbir9xs2skq]]"
  - "[[sources/watchv=czm3cw6fdbs]]"
  - "[[sources/watchv=9aqovt8lnmi]]"
  - "[[sources/watchv=-tgqa8fzf80]]"
  - "[[sources/watchv=1nOTQsfe1RU]]"
  - "AIEF2025 - Knowledge Graphs in Litigation Agents — Tom Smoker, WhyHow - https://www.youtube.com/watch?v=yYxr6LdXNWM"
  - "AIEF2025 - Top Ten Challenges to Reach AGI — Stephen Chin, Andreas Kollegger - https://www.youtube.com/watch?v=ypyvj_56sBU"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-03
updated: 2026-07-05
relationships:
  - target: "[[concepts/graphrag|GraphRAG]]"
    type: promotes
  - target: "[[concepts/ontology-driven-retrieval|Ontology-Driven Retrieval]]"
    type: developed-pattern
---

# Neo4j

Neo4j is a graph database platform that has become a central platform for [[concepts/graphrag|GraphRAG]] implementations. ^[extracted]

## Neo4j's GraphRAG Advocacy

Neo4j actively promotes GraphRAG as a retrieval architecture. At AIEF2025, multiple Neo4j speakers presented on GraphRAG patterns: ^[extracted]

- **Michael Hunger, Stephen Shin, and Jesús Barrasa** — Introduced the GraphRAG Patterns Catalog (GraphRAG.com) and framed GraphRAG as breathing new life into the AI ecosystem
- **Jesús Barrasa** — Presented ontology-driven retrieval, where the domain ontology is stored as data in the graph to control retriever behavior dynamically
- **Alison Cosette and Andreas** — Demonstrated graph analytics for RAG curation (Connect → Cluster → Curate framework)
- **Stephen Chin and Andreas Kollegger** — Presented "Top Ten Challenges to Reach AGI" using sci-fi movie memes to frame AGI challenges (memory, alignment, simulation, emotions, language, multi-agent, epistemology)

## Neo4j's Card Game Demo

Neo4j created a card game to demonstrate graph exploration concepts, which [[entities/jonathan-larson|Jonathan Larson]] (Microsoft Research) cited as one of his favorite derivative works from the GraphRAG paper. Larson is described as "a huge board game fanatic." ^[inferred]

## Key People

- **Jesús Barrasa** — Field CTO for AI at Neo4j
- **Michael Hunger** — Neo4j speaker on GraphRAG patterns
- **Stephen Shin** — Neo4j speaker on GraphRAG patterns
- **Alison Cosette** — Neo4j speaker on graph analytics for RAG curation
- **Andreas Kollegger** — Neo4j speaker on AGI challenges and graph analytics for RAG curation

## Ecosystem Relationships

Tom Smoker, technical founder of [[entities/whyhow|WhyHow]], maintains a good relationship with the Neo4j team. WhyHow uses graph-based state management (capture, expand, prune, structure, query) for litigation agent workflows, operating in the same ecosystem of graph-powered AI tools that Neo4j enables. ^[extracted]

## Sources

- AIEF2025 - Practical GraphRAG: Making LLMs smarter with Knowledge Graphs — Michael, Jesus, and Stephen, Neo4j - https://www.youtube.com/watch?v=XNneh6-eyPg
- AIEF2025 - Why Your Agent's Brain Needs a Playbook: Practical Wins from Using Ontologies — Jesús Barrasa, Neo4j - https://www.youtube.com/watch?v=CbiR9xS2skQ
- AIEF2025 - Graph Intelligence: Enhancing Reasoning and Retrieval Using Graph Analytics — Alison Cosette & Andreas, Neo4j - https://www.youtube.com/watch?v=...
- AIEF2025 - Knowledge Graphs in Litigation Agents — Tom Smoker, WhyHow - https://www.youtube.com/watch?v=yYxr6LdXNWM
