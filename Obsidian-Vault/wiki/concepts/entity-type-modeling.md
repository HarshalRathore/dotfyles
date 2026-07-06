---
title: "Entity Type Modeling"
category: concepts
tags: [data-modeling, knowledge-graph, ontology, schema, agent-memory, domain-driven-design]
summary: "The practice of defining structured entity types with typed fields and business rules as the primary unit of memory or knowledge storage, instead of free-form text or unstructured facts."
sources:
  - "https://www.youtube.com/watch?v=t5imo5ntyha"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.74
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/knowledge-graph-ontology-design]]"
    type: implements
  - target: "[[concepts/domain-aware-memory]]"
    type: used_by
  - target: "[[concepts/graphrag|GraphRAG]]"
    type: used_by
---

# Entity Type Modeling

**Entity type modeling** is the practice of defining structured entity types — with typed fields, constraints, and business rules — as the primary unit of memory or knowledge storage, rather than free-form text or unstructured facts. ^[extracted]

## How It Works

An entity type definition includes:

1. **Entity name** — e.g., `FinancialGoal`, `Debt`, `IncomeSource`, `Playlist`
2. **Description** — Human-readable description of what this entity represents
3. **Fields** — Typed properties with constraints (e.g., `monthly_payment: number`, `currency: string`)
4. **Business rules** — Validations and constraints on field values

These definitions are typically expressed using schema validation libraries:
- **Python**: Pydantic models
- **TypeScript**: Zod schemas
- **Go**: Struct definitions

## Contrast with Free-Form Facts

| Aspect | Free-Form Facts | Entity Type Modeling |
|---|---|---|
| Structure | Unstructured text | Typed fields with constraints |
| Validation | None | Schema-based validation |
| Retrieval | Semantic similarity | Filtered by entity type + field values |
| Domain separation | None | Explicit via entity type |
| Example | "User pays $5000 rent" | `Debt { type: "rent", amount: 5000, currency: "USD" }` |

## Use Cases

- **Agent memory** — [[entities/zep|Zep]] uses entity types for domain-aware memory
- **Knowledge graphs** — [[concepts/graphrag|GraphRAG]] systems use entity types as graph nodes
- **Business applications** — Any domain with well-defined entities (finance, healthcare, e-commerce)

## Relationship to Ontology Design

Entity type modeling is the practical implementation of [[concepts/knowledge-graph-ontology-design|Knowledge Graph Ontology Design]]. The ontology defines the schema; entity types are the concrete instantiations of that schema. ^[inferred]

## Related Pages

- [[concepts/domain-aware-memory]] — Domain-aware memory uses entity type modeling
- [[concepts/knowledge-graph-ontology-design]] — Ontology design principles
- [[concepts/graphrag|GraphRAG]] — GraphRAG uses entity types as graph nodes
- [[entities/zep]] — Zep's implementation of entity type modeling

## Sources

- AIEF2025 - Stop Using RAG as Memory — Daniel Chalef, Zep - https://www.youtube.com/watch?v=T5IMo5ntyhA
