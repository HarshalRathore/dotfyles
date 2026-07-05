---
title: "Eval-Driven Optimization"
category: concepts
tags: [evaluation, optimization, iterative-improvement, metric-driven, ai-engineering]
summary: "The practice of using automated evaluation metrics as the primary feedback signal for iterative system improvement, replacing manual tuning and heuristic-based adjustments."
sources:
  - "AIEF2025 - Prompt Engineering is Dead — Nir Gazit, Traceloop - https://www.youtube.com/watch?v=jvKf6zXrNO4"
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/eval-driven-development.md]]"
    type: extends
  - target: "[[concepts/auto-improving-agent-loop.md]]"
    type: related_to
  - target: "[[concepts/prompt-engineering-is-dead.md]]"
    type: related_to
  - target: "[[concepts/production-eval-metrics.md]]"
    type: related_to
---

# Eval-Driven Optimization

The practice of using automated evaluation metrics as the primary feedback signal for iterative system improvement. Instead of relying on human intuition, heuristic adjustments, or manual prompt tweaking, eval-driven optimization treats evaluation scores as the objective function to minimize.

[[entities/nir-gazit.md|Nir Gazit]]'s AIEF2025 talk demonstrated this with a [[concepts/rag-pipeline-architecture.md|RAG chatbot]]: the evaluation score (percentage of expected facts present in generated answers) served as the loss signal, and an [[concepts/auto-improving-agent-loop.md|auto-improving agent loop]] used it to guide prompt optimization.

Key characteristics:

- **Quantitative feedback**: Evaluation produces numerical scores (e.g., 42/60 facts correct) that can be tracked over iterations.
- **Diagnostic detail**: Beyond scores, evaluation provides reasons for failures, enabling targeted improvements.
- **Automated iteration**: The loop between evaluation and improvement can be fully automated via agents.
- **Analogous to ML training**: Gazit described his approach as "classic ML training with vibes" — the evaluator is the loss function, the agent is the optimizer.

This approach generalizes beyond prompt optimization to any LLM-based system where evaluation can be automated. It shifts the engineering effort from prompt crafting to evaluator design.
