---
title: "Aspect-Based Evals"
category: concepts
tags:
  - evals
  - evaluation
  - aspect-based
  - llm-as-judge
  - code-based-evals
  - human-in-the-loop
  - enterprise-ai
aliases:
  - aspect-based evaluation
  - component evals
  - eval techniques
sources:
  - "AIEF2025 - How to Build Planning Agents without losing control - Yogendra Miraje, Factset - https://www.youtube.com/watch?v=sl3icG-IjHo"
  - "AIEF2025 - Evals 101 — Doug Guthrie, Braintrust - https://www.youtube.com/watch?v=bk0TmxoZlUY"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/llm-evaluation-framework|LLM Evaluation Framework]]"
    type: extends
  - target: "[[concepts/blueprint-generator-pattern|Blueprint Generator Pattern]]"
    type: used_by
  - target: "[[concepts/llm-as-judge|LLM as Judge]]"
    type: uses
  - target: "[[concepts/human-seeded-evals|Human-Seeded Evals]]"
    type: related_to
---

# Aspect-Based Evals

**Aspect-based evaluation** is the practice of matching evaluation techniques to the specific aspect of an agentic system being measured, rather than using a single evaluation method for everything. Different components of an agentic workflow require different eval techniques for accurate assessment.

## Core Principle

You should write evals for metrics that you actually care about, and use the correct technique for each metric. A single eval strategy is insufficient for a multi-component agentic system. ^[extracted]

## Technique Mapping

Miraje's framework maps eval techniques to specific aspects of the agentic workflow:

| Aspect | Eval Technique | Rationale |
|--------|---------------|-----------|
| Blueprint similarity (does generated Blueprint resemble golden Blueprint?) | LLM-as-judge | Semantic comparison of natural language plans |
| Tool selection correctness | Code-based eval | Deterministic check: was the right tool called? |
| Plan-Blueprint alignment (is the plan consistent with the Blueprint?) | LLM-as-judge | Semantic validation of plan against higher-level plan |
| Report formatting | Human-in-the-loop | Formatting quality is subjective and context-dependent |

## Why Component Evals Matter

Agentic workflows have multiple components (Blueprint Generator, Planner, Executor, Joiner), each with different failure modes. Component-level evals enable targeted debugging — if tool selection is wrong but Blueprint quality is good, you know to fix the Planner, not the Blueprint Generator. ^[inferred]

## Evals Framework Requirements

A robust eval framework for agentic workflows needs:

1. **Component evals** — Evaluate each node independently
2. **End-to-end evals** — Evaluate the complete workflow
3. **Multiple techniques** — LLM-as-judge, code-based, human-in-the-loop
4. **Aspect-specific metrics** — Metrics aligned with what each component does

## Golden Blueprints

For Blueprint evaluation, maintain golden Blueprints — manually crafted reference Blueprints for common workflows. The LLM-as-judge compares generated Blueprints against these golden references. ^[extracted]

## Related

- [[concepts/llm-evaluation-framework|LLM Evaluation Framework]] — The broader evaluation paradigm
- [[concepts/blueprint-generator-pattern|Blueprint Generator Pattern]] — Blueprint evals use golden Blueprints
- [[concepts/llm-as-judge|LLM as Judge]] — Technique used for semantic evals
- [[concepts/human-seeded-evals|Human-Seeded Evals]] — Human-in-the-loop eval approach
