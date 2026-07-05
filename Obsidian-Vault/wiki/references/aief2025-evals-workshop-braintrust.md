---
title: "AIEF2025 - [Evals Workshop] Mastering AI Evaluation: From Playground to Production"
category: references
tags: [reference, workshop, aief2025, evals, evaluation, braintrust, llm-judge, scoring]
summary: "Braintrust workshop at AIEF2025 on building structured AI evaluation pipelines: eval ingredients (task, dataset, score), LLM-as-judge best practices, judge calibration, and the transition from playground to production evals."
sources:
  - "[[sources/watchv=9in-cpnp7xg]]"
provenance:
  extracted: 0.95
  inferred: 0.03
  ambiguous: 0.02
base_confidence: 0.95
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/eval-ingredients-task-dataset-score]]"
    type: source_of
  - target: "[[concepts/llm-judge-best-practices]]"
    type: source_of
  - target: "[[concepts/loop-automated-eval-optimization]]"
    type: source_of
  - target: "[[concepts/eval-optimization-triad]]"
    type: source_of
---

# AIEF2025 - [Evals Workshop] Mastering AI Evaluation: From Playground to Production

**Event**: AI Engineer World's Fair 2025
**Format**: Workshop
**Source**: https://www.youtube.com/watch?v=9iN-cPnp7xg

## Summary

Braintrust's workshop at AIEF2025 on building structured AI evaluation pipelines. Covers the eval ingredients framework (task, dataset, score), LLM-as-judge best practices including judge calibration and trial averaging, and the transition from ad-hoc playground testing to production-grade evaluation infrastructure.

## Key Topics

- **Eval ingredients**: Every eval needs a task (prompt/workflow), dataset (test cases), and score (grading logic)
- **LLM-as-judge design**: Focused criteria per score, higher-quality judge model, judge calibration against human ground truth, trial averaging for non-determinism
- **Judge rationale**: Reviewing why the judge gave a score is as important as the score itself
- **Production evals**: Moving from playground experimentation to systematic, repeatable evaluation

## Pages Created from This Talk

- [[concepts/eval-ingredients-task-dataset-score|Eval Ingredients: Task, Dataset, Score]]
- [[concepts/llm-judge-best-practices|LLM-as-Judge Best Practices]]
- [[concepts/loop-automated-eval-optimization|Loop — Automated Eval Optimization Agent]]
- [[concepts/eval-optimization-triad|Eval Optimization Triad]]
