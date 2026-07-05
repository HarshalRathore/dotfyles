---
title: "Samuel Colvin"
category: entities
tags:
  - person
  - pydantic
  - pydantic-ai
  - python
  - type-safety
  - ai-agents
summary: "Creator of Pydantic and Pydantic AI. Strong advocate for type safety in AI application development. Speaker at AI Engineer World's Fair 2025 on human-seeded evals."
sources:
  - "AIEF2025 - Human seeded Evals — Samuel Colvin, Pydantic - https://www.youtube.com/watch?v=o_LRtAomJCs"
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.92
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[entities/pydantic]]"
    type: creator_of
  - target: "[[entities/pydantic-ai]]"
    type: creator_of
  - target: "[[entities/logfire]]"
    type: creator_of
---

# Samuel Colvin

**Samuel Colvin** is the creator of [[entities/pydantic|Pydantic]], the widely-used Python data validation library, and [[entities/pydantic-ai|Pydantic AI]], a type-safe AI agent framework built on top of Pydantic. He is also the creator of [[entities/logfire|Logfire]], an observability platform for AI applications. ^[inferred]

## Type Safety in AI Applications

Samuel is a strong advocate for type safety in AI application development. He argues that building applications with type safety from the start enables faster, more confident refactoring — especially critical in the rapidly evolving AI landscape where applications need to be restructured multiple times. ^[extracted]

His key thesis: type-safe frameworks allow coding agents like Cursor to "mark their own homework" by using type-checking to verify their own work, something that frameworks like LangChain or LangGraph cannot support because they "decided not to build something that's type-safe." ^[extracted]

## Pydantic AI

Samuel demonstrated [[entities/pydantic-ai|Pydantic AI]] at the AI Engineer World's Fair 2025, showing how it provides:

- **Structured data extraction** from unstructured inputs (text, PDFs, large documents) using Pydantic schemas
- **Validation error feedback loops** where validation errors are returned to the LLM for self-correction
- **Type-safe tool dependencies** via the `deptype` pattern, ensuring tool signatures match agent expectations
- **Runtime type guarantees** through Pydantic validation at every step

He claims Pydantic AI is "the only agent framework that works this hard to be type-safe." ^[extracted]

## Speaking

- **AI Engineer World's Fair 2025**: "Human seeded Evals" — demonstrated Pydantic AI with structured extraction, validation error feedback, and type-safe tool dependencies. Based on his PyCon talk "Building AI Applications the Pydantic Way."

## Related

- [[entities/pydantic]] — Pydantic data validation library
- [[entities/pydantic-ai]] — Pydantic AI agent framework
- [[entities/logfire]] — Observability platform
- [[concepts/type-safety-ai]] — Type safety as a foundation for reliable AI applications
- [[concepts/validation-error-feedback]] — Validation error feedback loop in agent design
