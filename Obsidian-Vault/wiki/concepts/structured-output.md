---
title: "Structured Output for Agent Termination"
category: concepts
tags:
  - structured-output
  - agent-loop
  - agent-termination
  - schema-validation
  - json-mode
  - pydantic
summary: "Using LLM structured output capabilities (JSON mode, schema-constrained generation) to produce parseable output that serves dual purposes: data extraction and agent loop termination signals."
sources:
  - "AIEF2025 - Human seeded Evals — Samuel Colvin, Pydantic - https://www.youtube.com/watch?v=o_LRtAomJCs"
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/agent-loop]]"
    type: implements
  - target: "[[concepts/validation-error-feedback]]"
    type: enables
  - target: "[[concepts/agent-tool-calling]]"
    type: relates_to
  - target: "[[entities/pydantic-ai]]"
    type: implemented_by
---

# Structured Output for Agent Termination

**Structured output** in AI agents refers to using LLM capabilities (JSON mode, schema-constrained generation, structured output types) to produce parseable, validated output that serves dual purposes: extracting meaningful data and signaling agent loop termination. ^[extracted]

## The Agent Loop Exit Problem

One of the hardest problems in agent design is determining when to exit the agent loop. [[entities/samuel-colvin|Samuel Colvin]] noted that even a simple six-line pseudocode agent definition has a bug: "there is no exit from that loop." ^[extracted]

Common exit strategies:

1. **Plain text output** — when the LLM returns plain text instead of calling a tool, the run ends
2. **Final result tools** — specific tools that, when called, trigger the end of the run
3. **Structured output types** — when models support structured output (OpenAI, Google), the LLM's structured response can serve as the termination signal ^[extracted]

## Structured Output as Dual Purpose

Structured output is particularly powerful because it serves two purposes simultaneously:

- **Data extraction** — the LLM produces structured data matching a schema (e.g., a `Person` object with name, age, DOB)
- **Termination signal** — the fact that the LLM produced structured output (rather than calling another tool) signals that the task is complete ^[extracted]

## Schema-Driven Validation

The structured output is validated against a schema (e.g., Pydantic model). If validation fails, the error is returned to the LLM for correction, creating a [[concepts/validation-error-feedback|validation error feedback loop]]. ^[extracted]

## Implementation

[[entities/pydantic-ai|Pydantic AI]] demonstrates this pattern: a simple schema defines the expected output structure, and Pydantic AI handles the extraction, validation, and error feedback. The framework uses a "final result tool" pattern internally — when the LLM returns valid structured data, Pydantic AI validates it and returns the result. ^[extracted]

## Limitations

- **Model dependency** — not all models support structured output natively
- **Schema complexity** — complex nested schemas may cause LLMs to produce invalid output more frequently
- **Validation overhead** — each validation failure adds a retry cycle ^[inferred]

## Related

- [[concepts/agent-loop]] — Agent loop architecture and exit strategies
- [[concepts/validation-error-feedback]] — Validation error feedback loop
- [[concepts/agent-tool-calling]] — Tool calling vs. structured output
- [[entities/pydantic-ai]] — Implementation example
