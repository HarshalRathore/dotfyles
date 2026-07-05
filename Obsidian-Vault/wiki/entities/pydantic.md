---
title: "Pydantic"
category: entities
tags: [library, python, schema-validation, data-models, agent-memory, ai-agents, type-safety]
summary: "Python library for data validation using type annotations. Foundation for Pydantic AI (type-safe agent framework), Zep entity types, and domain-aware memory schemas."
sources:
  - "[[sources/watchv=t5imo5ntyha]]"
  - "AIEF2025 - Human seeded Evals — Samuel Colvin, Pydantic - https://www.youtube.com/watch?v=o_LRtAomJCs"
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.88
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-04
updated: 2026-07-05
relationships:
  - target: "[[entities/zep]]"
    type: used_by
  - target: "[[entities/zod]]"
    type: similar_to
  - target: "[[entities/pydantic-ai]]"
    type: foundation_for
  - target: "[[entities/samuel-colvin]]"
    type: created_by
---

# Pydantic

**Pydantic** is a Python data validation library that uses Python type annotations to define structured data models. It is widely used for API schemas, configuration, and data validation in Python applications. It is also the foundation for [[entities/pydantic-ai|Pydantic AI]], a type-safe AI agent framework created by [[entities/samuel-colvin|Samuel Colvin]]. ^[extracted]

## Use in Domain-Aware Memory

Pydantic is used by [[entities/zep|Zep]] to define entity types with fields and business rules for domain-aware memory. Developers specify entity types (e.g., `FinancialGoal`, `Debt`) using Pydantic models, and Zep registers these with its temporal graph to build the corresponding ontology. ^[extracted]

## Use in AI Agent Frameworks

Pydantic is the foundation of [[entities/pydantic-ai|Pydantic AI]], where it provides schema validation for structured LLM output, field validators that act as automated evals, and type-safe tool dependency registration. Samuel Colvin argues that type safety is essential for building reliable, refactorable AI applications, and Pydantic's validation system enables [[concepts/validation-error-feedback|validation error feedback loops]] where schema errors are returned to the LLM for self-correction. ^[extracted]

## Similar Tools

- **[[entities/zod|Zod]]** — TypeScript equivalent for schema validation
- **Go structs** — Native Go equivalent used by Zep for Go SDK

## Related Pages

- [[entities/zep]] — Zep uses Pydantic for entity type definitions
- [[concepts/domain-aware-memory]] — Domain-aware memory uses Pydantic for entity schemas
- [[entities/zod]] — TypeScript equivalent
- [[entities/pydantic-ai]] — Type-safe agent framework built on Pydantic
- [[concepts/validation-error-feedback]] — Validation error feedback using Pydantic validators

## Sources

- AIEF2025 - Stop Using RAG as Memory — Daniel Chalef, Zep - https://www.youtube.com/watch?v=T5IMo5ntyhA
- AIEF2025 - Human seeded Evals — Samuel Colvin, Pydantic - https://www.youtube.com/watch?v=o_LRtAomJCs
