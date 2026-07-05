---
title: "Validation Error Feedback Loop"
category: concepts
tags:
  - agent-loop
  - validation
  - self-correction
  - structured-output
  - evals
  - pydantic
summary: "Pattern where validation errors from schema checks are returned to the LLM as feedback, enabling the model to self-correct its output in subsequent iterations of the agent loop."
sources:
  - "AIEF2025 - Human seeded Evals — Samuel Colvin, Pydantic - https://www.youtube.com/watch?v=o_LRtAomJCs"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/agent-loop]]"
    type: implements
  - target: "[[concepts/structured-output]]"
    type: complements
  - target: "[[concepts/eval-driven-development]]"
    type: relates_to
  - target: "[[concepts/llm-as-judge-evaluation]]"
    type: contrasts_with
---

# Validation Error Feedback Loop

The **validation error feedback loop** is a pattern in which schema validation errors are returned to the LLM as feedback, enabling the model to self-correct its output in subsequent iterations of the agent loop. ^[extracted]

## How It Works

1. The LLM generates structured output (e.g., a person object with name, age, date of birth)
2. The output is validated against a schema (e.g., Pydantic model with field validators)
3. If validation fails, the error message is returned to the LLM as a tool response
4. The LLM uses the error information to correct its output and retries
5. The cycle repeats until validation passes or a maximum iteration count is reached ^[extracted]

## Demo Example

[[entities/samuel-colvin|Samuel Colvin]] demonstrated this at AIEF2025 using [[entities/pydantic-ai|Pydantic AI]]:

- A `Person` schema required date of birth to be before 1900
- The LLM returned `1987` (interpreting "87" as 1987)
- A field validator rejected it (must be 19th century)
- The validation error was returned to Gemini Flash as feedback
- The model self-corrected to `1887` on the second attempt ^[extracted]

## Why It Matters

This pattern turns schema validators into **human-seeded evals** — automated checks defined by the developer that the LLM can learn from in real-time. Unlike LLM-as-judge evaluations (which require a second LLM call to score output), validation errors are deterministic, fast, and precise. ^[extracted]

Key advantages:

- **Deterministic** — no ambiguity about what "correct" means
- **Fast** — validation is local, no additional LLM call for scoring
- **Precise** — error messages identify exactly which field failed and why
- **Self-correcting** — the LLM can fix the issue without human intervention ^[inferred]

## Relationship to Agent Loop

The validation error feedback loop is a specific pattern within the [[concepts/agent-loop|agent loop]] architecture. It transforms the loop from a simple "generate → execute → repeat" cycle into a "generate → validate → correct → retry" cycle, adding a quality gate at each iteration. ^[inferred]

## Limitations

- **Requires structured output** — only works when the LLM produces parseable structured data
- **Schema design matters** — poorly designed validators produce unhelpful error messages
- **Token cost** — each retry consumes additional tokens
- **Not all errors are fixable** — some validation failures indicate fundamental misunderstandings by the model ^[inferred]

## Related

- [[concepts/agent-loop]] — Agent loop architecture
- [[concepts/structured-output]] — Structured output for agent termination
- [[concepts/eval-driven-development]] — Eval-driven development practices
- [[concepts/llm-as-judge-evaluation]] — LLM-as-judge vs. deterministic validation
- [[entities/pydantic-ai]] — Implementation with Pydantic AI
