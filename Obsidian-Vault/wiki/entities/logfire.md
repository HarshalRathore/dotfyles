---
title: "Logfire"
category: entities
tags:
  - observability
  - monitoring
  - pydantic
  - ai-observability
  - agent-tracing
summary: "Observability platform by Samuel Colvin for AI applications. Provides execution traces, tool call details, and model interaction histories for Pydantic AI agents."
sources:
  - "AIEF2025 - Human seeded Evals — Samuel Colvin, Pydantic - https://www.youtube.com/watch?v=o_LRtAomJCs"
provenance:
  extracted: 0.80
  inferred: 0.18
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[entities/samuel-colvin]]"
    type: created_by
  - target: "[[entities/pydantic-ai]]"
    type: integrates_with
  - target: "[[entities/pydantic]]"
    type: created_by
---

# Logfire

**Logfire** is an observability platform created by [[entities/samuel-colvin|Samuel Colvin]] for monitoring and debugging AI applications, particularly those built with [[entities/pydantic-ai|Pydantic AI]]. ^[extracted]

## Capabilities

Logfire provides:

- **Agent run traces** — step-by-step execution of agent behavior
- **Model call details** — inputs, outputs, and timing for each LLM call
- **Tool call instrumentation** — which tools were called, with what inputs and outputs
- **Exchange history** — full conversation history between the agent and the LLM, including validation error feedback

In a Pydantic AI demo, Logfire showed a two-call sequence to Gemini Flash: the first call returned an incorrect date of birth, the validation error was returned as a tool response, and the second call succeeded with the corrected value. ^[extracted]

## Relationship to Agent Observability

Logfire exemplifies the [[concepts/agent-observability|agent observability]] pattern: providing run-level traces that allow developers to understand exactly what happened in an agent execution, why a specific decision was made, and what tools were called. ^[inferred]

## Related

- [[entities/samuel-colvin]] — Creator
- [[entities/pydantic-ai]] — Primary integration
- [[concepts/agent-observability]] — Agent observability patterns
- [[concepts/validation-error-feedback]] — Validation error feedback visible in traces
