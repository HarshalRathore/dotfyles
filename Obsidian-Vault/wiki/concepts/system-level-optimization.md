---
title: System-Level Optimization
category: concepts
tags:
- optimization
- evals
- prompt-engineering
- production-ai
- braintrust
- aief2025
sources:
- AIEF2025 - Five hard earned lessons about Evals — Ankur Goyal, Braintrust - https://www.youtube.com/watch?v=a4BV0gGmXgA
summary: Optimize the entire AI system — data, task, and scorers — not just the prompt. System-level optimization produces dramatically better results than prompt-only optimization.
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
base_confidence: 0.42
lifecycle: draft
lifecycle_changed: '2026-07-04'
tier: supporting
created: '2026-07-04'
updated: '2026-07-04'
---

# System-Level Optimization

When optimizing your prompts, you must optimize the entire system, not just the prompt. ^[extracted] This means thinking holistically about the AI system as the data used for evals, the task (the prompt and agentic system), and the scoring functions — all together. ^[extracted]

## Prompt-Only vs System-Level Optimization

Braintrust benchmarked the same task with two optimization approaches: ^[extracted]

1. **Prompt-only**: Give the LLM the prompt and ask it to optimize the prompt alone
2. **System-level**: Give the LLM the prompt, the dataset, and the scores, and ask it to optimize the entire system

The difference was dramatic: what went from unviable to viable under system-level optimization. ^[extracted] Prompt-only optimization cannot capture the interactions between data, task, and scoring that determine overall quality. ^[inferred]

## The Holistic AI System

The holistic AI system includes: ^[extracted]

- **Data** — The eval dataset, including how production failures are reconciled into it
- **Task** — The prompt, system prompt, agentic loops, tool definitions, and tool outputs
- **Scoring** — The scoring functions that determine what "good" looks like

Every improvement to your app requires thinking about how changes to any of these components interact with the others. ^[inferred]

## Loop: Automated System-Level Optimization

[[entities/braintrust|Braintrust]]'s [[concepts/loop-automated-eval-optimization|Loop]] feature implements system-level optimization automatically — it iterates on prompts, datasets, and scorers together, using previous experiment results to determine whether each change is an improvement. ^[extracted]

## Related

- [[concepts/evals-play-offense|Evals Play Offense]] — System optimization enables offensive eval strategies
- [[concepts/loop-automated-eval-optimization|Loop — Automated Eval Optimization]] — Braintrust's implementation
- [[concepts/eval-ingredients-task-dataset-score|Eval Ingredients: Task, Dataset, Score]] — The components of the system
- [[concepts/evals-must-be-engineered|Evals Must Be Engineered]] — The engineering mindset behind system-level thinking
