---
title: Eval-Driven Iteration
category: concepts
tags:
- evals
- iteration
- development-methodology
- prompt-engineering
- braintrust
sources:
- AIEF2025 - Evals 101 — Doug Guthrie, Braintrust - https://www.youtube.com/watch?v=bk0TmxoZlUY
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/eval-driven-development|Eval-Driven Development]]'
  type: implements
- target: '[[concepts/eval-playground-as-ide|Eval Playground as IDE]]'
  type: uses
- target: '[[concepts/eval-flywheel-effect|Eval Flywheel Effect]]'
  type: feeds
summary: Eval-Driven Iteration
---

# Eval-Driven Iteration

Eval-driven iteration replaces subjective "vibe checks" with data-driven decision making: every change to a prompt, model, or workflow is measured against eval scores to determine whether it improved or degraded quality. ^[extracted]

## The Iteration Loop

1. **Make a change** — Modify a prompt, switch a model, adjust a tool definition
2. **Run the eval** — Execute the task against the dataset with the same scores
3. **Compare scores** — Did the change improve or degrade the score?
4. **Decide** — Keep the change if it improved quality, revert if it degraded

> "As we make those changes, as we change the underlying model, what is the impact to that particular task or that application?" ^[extracted]

## What Can Be Iterated

Eval-driven iteration applies to every component of the AI application:

| Component | What to iterate | How evals help |
|---|---|---|
| **Prompt** | System prompt text, structure, examples | Score comparison shows which version works better |
| **Model** | Model provider, model version | Score comparison shows quality/cost tradeoffs |
| **Tool definition** | Tool names, parameters, descriptions | Score comparison shows which tools the LLM uses effectively |
| **Workflow** | Chain order, branching logic, retries | Score comparison shows which architecture produces better outputs |
| **Dataset** | Test case coverage, edge cases | Score comparison shows whether new cases reveal gaps |

## The Feedback Speed

The faster the iteration loop, the faster the improvement. This is why [[concepts/eval-playground-as-ide|playground-based iteration]] and [[concepts/eval-sdk-first-workflow|SDK-first workflows]] matter — they reduce the time between making a change and seeing its impact.

## Related

- [[concepts/eval-driven-development|Eval-Driven Development]] — The broader methodology
- [[concepts/eval-playground-as-ide|Eval Playground as IDE]] — The tool for rapid iteration
- [[concepts/eval-flywheel-effect|Eval Flywheel Effect]] — How iteration compounds over time
- [[concepts/ai-iteration-loop|AI Iteration Loop]] — The operational cycle iteration is part of
