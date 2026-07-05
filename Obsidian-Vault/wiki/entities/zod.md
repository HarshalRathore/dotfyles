---
title: "Zod"
category: entities
tags: [library, typescript, schema-validation, data-models, agent-memory]
summary: "TypeScript-first schema validation library. Used by Zep to define entity types with fields and business rules for domain-aware memory."
sources:
  - "[[sources/watchv=t5imo5ntyha]]"
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.88
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/zep]]"
    type: used_by
  - target: "[[entities/pydantic]]"
    type: similar_to
---

# Zod

**Zod** is a TypeScript-first schema validation library that enables type-safe definition of data structures. It is widely used for API validation, configuration, and data modeling in TypeScript applications. ^[extracted]

## Use in Domain-Aware Memory

Zod is used by [[entities/zep|Zep]] to define entity types with fields and business rules for domain-aware memory. Developers specify entity types (e.g., `FinancialGoal`, `Debt`) using Zod schemas, and Zep registers these with its temporal graph to build the corresponding ontology. ^[extracted]

## Similar Tools

- **[[entities/pydantic|Pydantic]]** — Python equivalent for schema validation
- **Go structs** — Native Go equivalent used by Zep for Go SDK

## Related Pages

- [[entities/zep]] — Zep uses Zod for entity type definitions
- [[concepts/domain-aware-memory]] — Domain-aware memory uses Zod for entity schemas
- [[entities/pydantic]] — Python equivalent

## Sources

- AIEF2025 - Stop Using RAG as Memory — Daniel Chalef, Zep - https://www.youtube.com/watch?v=T5IMo5ntyhA
