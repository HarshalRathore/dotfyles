---
title: "AIEF2025 — Human Seeded Evals — Samuel Colvin, Pydantic"
category: references
tags:
  - aief2025
  - pydantic
  - type-safety
  - agent-framework
  - validation
  - structured-output
  - evals
summary: "Samuel Colvin's talk at AI Engineer World's Fair 2025 demonstrating Pydantic AI's type-safe agent framework, validation error feedback loops, and structured output extraction."
sources:
  - "AIEF2025 - Human seeded Evals — Samuel Colvin, Pydantic - https://www.youtube.com/watch?v=o_LRtAomJCs"
provenance:
  extracted: 0.95
  inferred: 0.04
  ambiguous: 0.01
base_confidence: 0.90
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[entities/samuel-colvin]]"
    type: about
  - target: "[[entities/pydantic-ai]]"
    type: about
  - target: "[[entities/logfire]]"
    type: about
  - target: "[[entities/pydantic]]"
    type: about
  - target: "[[entities/gemini]]"
    type: uses
---

# AIEF2025 — Human Seeded Evals — Samuel Colvin, Pydantic

**Speaker:** [[entities/samuel-colvin|Samuel Colvin]], creator of Pydantic and Pydantic AI
**Event:** AI Engineer World's Fair 2025
**Video:** https://www.youtube.com/watch?v=o_LRtAomJCs
**Based on:** PyCon talk "Building AI Applications the Pydantic Way"

## Summary

Samuel Colvin demonstrated [[entities/pydantic-ai|Pydantic AI]], a type-safe AI agent framework, at the AI Engineer World's Fair 2025. The talk covered structured data extraction, validation error feedback loops, type-safe tool dependencies, and the broader thesis that type safety is essential for building reliable, refactorable AI applications.

## Key Topics

### Type Safety as Foundation

Colvin argues that type safety is one of the most important parts of building AI applications. Building with type safety from the start enables faster, more confident refactoring — critical when AI applications need to be restructured multiple times. Type-safe frameworks also allow coding agents like Cursor to "mark their own homework" by using type-checking to verify their own work. ^[extracted]

### Agent Definition

Colvin presented the widely-accepted definition of an agent (from [[entities/barry-zhang|Barry Zhang]]'s talk at AI Engineer NYC, adopted by Anthropic, OpenAI, and Google's ADK): an agent has an environment, tools, a system prompt, and a while loop that calls the LLM, runs tools, updates state, and repeats. He noted a bug in this definition: "there is no exit from that loop." ^[extracted]

### Structured Data Extraction Demo

Colvin demonstrated Pydantic AI extracting structured data from unstructured text using a simple `Person` schema (name, age, date of birth). The same mechanism scales to complex nested schemas and large documents. ^[extracted]

### Validation Error Feedback Loop

The key demo: a field validator requiring date of birth before 1900. The LLM returned `1987`, validation failed, the error was returned to Gemini Flash as feedback, and the model self-corrected to `1887` on the second attempt. This demonstrated the **human-seeded eval** pattern — schema validators as automated checks that the LLM can learn from. ^[extracted]

### Type-Safe Tool Dependencies

Colvin showed tools registered with an agent via `@agent.tool` decorator, parameterized by a `deptype`. The tool's signature guarantees that inputs and outputs match the agent's expectations at compile time. ^[extracted]

### Observability

The demos were instrumented with [[entities/logfire|Logfire]], showing execution traces, model call details, and tool call histories. ^[extracted]

## Quotes

- "We still want to build reliable, scalable applications, and that is still hard. Arguably, it's actually harder with Gen AI." ^[extracted]
- "Type safety is one of the really important parts of that." ^[extracted]
- "If you use a coding agent like Cursor, it can use type-safe or running type-checking to basically mark its own homework." ^[extracted]
- "Langchain or Langgraph, who either through decision or inability decided not to build something that's type-safe." ^[extracted]
- "As far as I know, we're the only agent framework that works this hard to be type-safe." ^[extracted]

## Models Used

- **Gemini Flash** — primary model in demos
- OpenAI and Google mentioned as supporting structured output types

## Related Pages

- [[entities/samuel-colvin]] — Speaker
- [[entities/pydantic-ai]] — Framework demonstrated
- [[entities/pydantic]] — Foundation library
- [[entities/logfire]] — Observability platform
- [[concepts/type-safety-ai]] — Type safety thesis
- [[concepts/validation-error-feedback]] — Validation error feedback pattern
- [[concepts/structured-output]] — Structured output for termination
- [[concepts/agent-exit-strategies]] — Agent exit problem
