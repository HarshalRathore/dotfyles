---
title: "Graffiti (Temporal Graph Framework)"
category: concepts
tags: [temporal-graph, knowledge-graph, open-source, zep, domain-aware-memory, graph-database]
summary: "Zep's open-source temporal graph framework that allows developers to build custom entities and edges for their particular business domain. Powers Zep's domain-aware memory system."
sources:
  - "https://www.youtube.com/watch?v=t5imo5ntyha"
provenance:
  extracted: 0.90
  inferred: 0.07
  ambiguous: 0.03
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/zep]]"
    type: created_by
  - target: "[[concepts/domain-aware-memory]]"
    type: enables
  - target: "[[concepts/knowledge-graph-ontology-design]]"
    type: implements
---

# Graffiti (Temporal Graph Framework)

**Graffiti** is Zep's open-source temporal graph framework that allows developers to build custom entities and edges for their particular business domain. It is the underlying technology that powers Zep's [[concepts/domain-aware-memory|domain-aware memory]] system. ^[extracted]

## Purpose

Graffiti provides a structured graph substrate where developer-defined entity types (e.g., `FinancialGoal`, `Debt`, `IncomeSource`) are stored as nodes with typed fields and relationships. Unlike free-form text storage in vector databases, Graffiti stores structured entities that can be queried precisely by type and field values. ^[extracted]

## Key Features

- **Custom entity types** — Developers define entities specific to their domain, not generic fact templates
- **Typed fields with business rules** — Each field has a type, constraints, and allowed values
- **Temporal graph** — Stores the history of entity changes over time, not just current state
- **Multi-language SDKs** — Available for Python (Pydantic), TypeScript (Zod), and Go (structs)
- **Developer-defined ontology** — The graph schema is determined by the developer's domain model, not by automated extraction ^[extracted]

## Usage Pattern

1. Developer defines entity types with fields and business rules
2. Entity types are registered with Graffiti/Zep
3. Graffiti builds the corresponding ontology in the graph
4. Agent conversations are parsed and facts are captured as structured entity instances
5. Retrieval filters by entity type, returning only business-relevant facts ^[extracted]

## Relationship to Other Concepts

Graffiti is the implementation of [[concepts/knowledge-graph-ontology-design|Knowledge Graph Ontology Design]] for the domain-aware memory use case. It is distinct from general-purpose graph databases because it is specifically designed for agent memory: entities are captured from natural language conversations and stored with temporal context. ^[inferred]

## Related Pages

- [[entities/zep]] — Zep, the company that created Graffiti
- [[concepts/domain-aware-memory]] — The memory paradigm Graffiti enables
- [[concepts/knowledge-graph-ontology-design]] — Ontology design principles Graffiti implements
- [[concepts/semantic-similarity]] — The retrieval approach Graffiti replaces for memory

## Sources

- AIEF2025 - Stop Using RAG as Memory — Daniel Chalef, Zep - https://www.youtube.com/watch?v=T5IMo5ntyhA
