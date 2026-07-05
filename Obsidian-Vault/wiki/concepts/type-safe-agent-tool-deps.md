---
title: "Type-Safe Agent Tool Dependencies"
category: concepts
tags:
  - type-safety
  - agent-tools
  - dependency-injection
  - pydantic
  - agent-framework
summary: "Pattern where agent tool signatures are parameterized by a dependency type, creating compile-time guarantees that tool inputs and outputs match the agent's expectations."
sources:
  - "AIEF2025 - Human seeded Evals — Samuel Colvin, Pydantic - https://www.youtube.com/watch?v=o_LRtAomJCs"
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.87
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/type-safety-ai]]"
    type: implements
  - target: "[[concepts/agent-tool-calling]]"
    type: extends
  - target: "[[entities/pydantic-ai]]"
    type: implemented_by
---

# Type-Safe Agent Tool Dependencies

**Type-safe agent tool dependencies** is a pattern where agent tool signatures are parameterized by a dependency type (`deptype`), creating compile-time guarantees that tool inputs and outputs match the agent's expectations. ^[extracted]

## The Pattern

In [[entities/pydantic-ai|Pydantic AI]], when an agent is defined with a `deptype`, tools registered with that agent via the `@agent.tool` decorator receive the `deptype` as a parameter through a `RunContext` object. This creates a chain of type guarantees: ^[extracted]

1. The agent's `deptype` defines what dependencies it has (e.g., a `Memory` dataclass)
2. When a tool is registered, its signature includes `RunContext[deptype]`
3. Accessing `context.dependencies` returns the typed `deptype` instance
4. If a tool accesses the wrong type (e.g., treats a `str` as an `int`), a type error is raised at development time

## Why It Matters

This pattern solves a common agent problem: tools are defined independently of the agent that uses them, making it easy to create mismatches between what a tool expects and what the agent provides. With type-safe dependencies: ^[extracted]

- **Mismatch detection is deferred to compile time** — type errors are caught before the agent runs
- **Refactoring is safe** — changing a dependency type propagates type errors to all affected tools
- **Documentation is automatic** — the type signature documents what dependencies a tool needs

## Implementation

[[entities/samuel-colvin|Samuel Colvin]] demonstrated this with a memory example: a `record_memory` tool and a `retrieve_memory` tool, both parameterized by a `Memory` `deptype`. The tools access `context.dependencies` to interact with the memory store, and the type system guarantees the interface is correct. ^[extracted]

## Tradeoffs

- **Setup complexity** — more boilerplate to define `deptype` and register tools
- **Learning curve** — developers need to understand the typing system
- **Not all frameworks support it** — Samuel claims Pydantic AI is "the only agent framework that works this hard to be type-safe" ^[extracted]

## Related

- [[concepts/type-safety-ai]] — Type safety in AI applications
- [[concepts/agent-tool-calling]] — Agent tool calling patterns
- [[entities/pydantic-ai]] — Implementation example
