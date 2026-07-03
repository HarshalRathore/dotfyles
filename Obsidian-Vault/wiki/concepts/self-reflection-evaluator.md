---
title: "Self-Reflection Evaluator-Optimizer"
tags:
  - agent
  - ai
  - architecture
  - design-pattern
  - evaluation
  - loop
sources:
  - "AI Engineer World's Fair 2025 - Effective agent design patterns in production — Laurie Voss, LlamaIndex - https://www.youtube.com/watch?v=72XxWkd8Jrk"
summary: "Agent design pattern where an LLM evaluates its own output against the original goal, generates feedback, and iteratively improves — implemented as a generate-evaluate-feedback loop."
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.60
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Self-Reflection Evaluator-Optimizer

The evaluator-optimizer (also called self-reflection) is one of the five [[concepts/agent-design-patterns|agent design patterns]] codified by [[entities/anthropic|Anthropic]]. The LLM evaluates its own output against the original goal, generates specific feedback, and sends itself back to improve — forming a loop until the output meets criteria.

## How It Works

1. **Generate** — The LLM produces an initial output based on the original input and goal
2. **Evaluate** — The same or a different LLM evaluates the output against the goal: "Did you actually reach the goal? Did you hallucinate something? Did you miss a part of the question?"
3. **Feedback** — If evaluation fails, the evaluator generates specific feedback describing what needs improvement
4. **Repeat** — The output and feedback are sent back to the generation step for another iteration

## Implementation

In [[entities/llamaindex|LlamaIndex]] Workflows, this is implemented as a loop — the workflow sends itself back to step one when the evaluator flags issues. This is a natural fit for the event-driven model, where the same function receives either the initial input or the feedback-augmented input.

## Relationship to Agent Loop

This pattern is a specific instance of the [[concepts/agent-loop|agent loop]] pattern, specialized in three ways:
- The evaluation is done by the LLM itself (LLM-as-judge) rather than deterministic tests
- The improvement is generative (the model revises its output) rather than parametric
- The goal is a fixed output quality target rather than a pass/fail test result

## When to Use

- **Extraction pipelines** — Re-extract fields when the LLM-as-judge flags inconsistencies
- **Code generation** — Self-review and fix coding issues before presenting output
- **Content generation** — Iterative refinement of writing, summaries, or reports
- **Any high-accuracy application** — Where a single-pass output needs quality assurance

## Related

- [[concepts/agent-design-patterns]] — The pattern taxonomy this belongs to
- [[concepts/agent-loop]] — The broader iterative loop pattern
- [[concepts/evaluation-first-development]] — Evaluation methodology that complements this pattern
- [[concepts/checklist-based-evaluation]] — Structured evaluation approach for agent outputs

## Sources

- [[references/agent-design-patterns-production-laurie-voss-llamaindex]] — Talk at AI Engineer World's Fair 2025
