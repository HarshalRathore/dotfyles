---
title: "Checklist-Based Evaluation"
tags:
  - ai
  - evaluation
  - llm-as-judge
  - testing
  - methodology
sources:
  - "[[sources/watchv=-t6uzyyzkww]]"
summary: "For each AI use case, define a specific criteria checklist of required information and use an LLM-as-a-judge to evaluate whether outputs satisfy every item."
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.58
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Checklist-Based Evaluation

Rather than scoring AI outputs on abstract quality dimensions, define a concrete checklist of required information for each specific question or use case, then use an LLM-as-a-judge to evaluate whether the output satisfies every item on the list. ^[extracted]

## How It Works

For a customer support bot answering "how do I reset my password?", the criteria checklist might include:
- The answer must mention receiving an SMS code for mobile validation
- The answer must explain what to do if the user has no mobile number (contact support)
- The answer must include all steps from the FAQ materials

Each question has its own unique checklist derived from the source materials. This is fundamentally different from scoring answers on a generic rubric — the criteria are specific to each thing the user might ask. ^[extracted]

## LLM-as-a-Judge

A capable LLM evaluates each response against the checklist for that specific question. This enables:
- Objective pass/fail determination on each criterion
- Detailed failure analysis — exactly which piece of information was missing
- Consistent evaluation across different response phrasings ^[inferred]

## Advantages

- **Explainability** — you know exactly what the solution is or isn't doing
- **Precision** — catches specific information gaps that aggregate metrics would miss
- **Iteration guidance** — failure details show exactly what needs to change ^[inferred]

## Relation to Other Evaluation Approaches

- [[concepts/task-specific-evals|Task-Specific Evals]] — the philosophy that drives checklist-based evaluation
- [[concepts/synthetic-eval-generation|Synthetic Eval Generation]] — how checklists are created from source materials
- [[concepts/voice-agent-evals|Voice Agent Evals]] — uses LLM-as-a-judge as part of its multi-tier evaluation strategy
- [[concepts/skills-checklist-framework|Skills Checklist Framework]] — parallel concept of checklist-based assessment in skill design

## Sources

- [[references/ai-eng-worlds-fair-2025-talk-practical-tactics-reliable-ai|Practical tactics to build reliable AI apps — Dmitry Kuchin, Multinear]] — Conference talk
