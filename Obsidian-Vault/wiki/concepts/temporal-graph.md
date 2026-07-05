---
title: "Temporal Graph"
category: concepts
tags: [graph-database, temporal-data, knowledge-graph, versioning, agent-memory]
summary: "A graph data structure that stores not just entities and relationships but also their state changes over time. Enables time-travel queries and audit trails for agent memory systems."
sources:
  - "[[sources/watchv=t5imo5ntyha]]"
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.72
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/zep]]"
    type: used_by
  - target: "[[concepts/graffiti-temporal-graph]]"
    type: implements
  - target: "[[concepts/knowledge-graph-ontology-design]]"
    type: extends
---

# Temporal Graph

A **temporal graph** is a graph data structure that stores not just entities and their relationships, but also the **history of changes** to those entities over time. This enables time-travel queries, audit trails, and versioned entity states. ^[extracted]

## Core Difference from Static Graphs

A standard knowledge graph stores the current state of entities and relationships. A temporal graph additionally stores:

- **When** an entity was created
- **When** entity properties changed
- **When** relationships were formed or dissolved
- **Previous states** of entities at any point in time

This is critical for agent memory because an agent's understanding of a user evolves — the user's financial goals, debts, and income sources change over time. A temporal graph captures this evolution, not just the current snapshot. ^[extracted]

## Use in Agent Memory

[[entities/zep|Zep]] uses a temporal graph as the substrate for [[concepts/domain-aware-memory|domain-aware memory]]. When a user tells their finance coach agent "I pay $5,000/month in rent," the agent captures this as a `Debt` entity with a timestamp. If the user later says "Actually, I moved and now pay $4,000/month," the temporal graph records the change while preserving the original value. ^[extracted]

## Graffiti

[[concepts/graffiti-temporal-graph|Graffiti]] is Zep's open-source temporal graph framework that provides this capability. It allows developers to define custom entities and edges for their business domain while automatically maintaining temporal history. ^[extracted]

## Related Pages

- [[concepts/graffiti-temporal-graph]] — Graffiti, Zep's implementation of temporal graphs
- [[entities/zep]] — Zep's domain-aware memory system
- [[concepts/knowledge-graph-ontology-design]] — Ontology design for knowledge graphs
- [[concepts/domain-aware-memory]] — Domain-aware memory uses temporal graphs

## Sources

- AIEF2025 - Stop Using RAG as Memory — Daniel Chalef, Zep - https://www.youtube.com/watch?v=T5IMo5ntyhA
