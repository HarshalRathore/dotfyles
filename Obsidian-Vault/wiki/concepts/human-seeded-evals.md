---
title: Human-Seeded Evals
category: concepts
tags:
- evals
- validation
- schema-validation
- pydantic
- agent-loop
- self-correction
summary: Pattern where human-defined schema validators act as deterministic evals that the LLM learns from in real-time. Validation errors are returned to the model for self-correction, creating a feedback...
sources:
- AIEF2025 - Human seeded Evals — Samuel Colvin, Pydantic - https://www.youtube.com/watch?v=o_LRtAomJCs
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[concepts/eval-driven-development]]'
  type: implements
- target: '[[concepts/validation-error-feedback]]'
  type: implements
- target: '[[concepts/llm-as-judge-evaluation]]'
  type: contrasts_with
- target: '[[concepts/evals-are-custom-and-subjective]]'
  type: relates_to
---

# Human-Seeded Evals

**Human-seeded evals** are deterministic evaluation checks defined by humans (typically as schema validators) that are fed back to the LLM in real-time, enabling the model to self-correct its output. The pattern was demonstrated by [[entities/samuel-colvin|Samuel Colvin]] at AIEF2025 using [[entities/pydantic-ai|Pydantic AI]]. ^[extracted]

## How It Works

1. Humans define validation rules as schema constraints (e.g., Pydantic field validators)
2. The LLM generates structured output
3. The output is validated against the schema
4. If validation fails, the error message is returned to the LLM
5. The LLM uses the error to correct its output and retries

## Why "Human-Seeded"?

Unlike LLM-as-judge evaluations (where a second LLM scores the output), human-seeded evals are:

- **Defined by humans** — the constraints encode human domain knowledge
- **Deterministic** — no ambiguity about what passes/fails
- **Fast** — validation is local, no additional LLM call for scoring
- **Precise** — error messages identify exactly which field failed and why ^[extracted]

## Demo Example

[[entities/samuel-colvin|Samuel Colvin]] demonstrated this at AIEF2025:

- A `Person` schema required date of birth before 1900
- The LLM returned `1987` (interpreting "87" as 1987)
- A field validator rejected it (must be 19th century)
- The validation error was returned to Gemini Flash as feedback
- The model self-corrected to `1887` on the second attempt ^[extracted]

## Relationship to Other Patterns

Human-seeded evals complement [[concepts/llm-as-judge-evaluation|LLM-as-judge]] evaluations: deterministic validators catch structural/domain errors quickly, while LLM-as-judge handles subjective checks (tone, helpfulness, hallucination). They are not mutually exclusive — a robust eval system uses both. ^[inferred]

## Benefits

- **Earlier feedback** — errors caught at the first iteration, not after deployment
- **Self-correction** — the LLM fixes issues without human intervention
- **Domain-specific** — validators encode domain knowledge that general LLMs don't have
- **Token-efficient** — no additional LLM call needed for scoring ^[inferred]

## Related

- [[concepts/validation-error-feedback]] — Validation error feedback loop
- [[concepts/eval-driven-development]] — Eval-driven development practices
- [[concepts/llm-as-judge-evaluation]] — LLM-as-judge vs. deterministic validation
- [[entities/pydantic-ai]] — Implementation with Pydantic AI
