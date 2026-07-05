---
title: "Ground Truth Evaluation"
category: concepts
tags: [evaluation, ground-truth, golden-dataset, eval-data, reference-answers]
summary: "An evaluation approach that compares system outputs against known correct answers or expected facts — requiring a curated dataset of questions with specified expected content."
sources:
  - "AIEF2025 - Prompt Engineering is Dead — Nir Gazit, Traceloop - https://www.youtube.com/watch?v=jvKf6zXrNO4"
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/golden-dataset.md]]"
    type: extends
  - target: "[[concepts/llm-as-judge-evaluation.md]]"
    type: implements
  - target: "[[concepts/eval-driven-optimization.md]]"
    type: related_to
  - target: "[[concepts/fast-evals.md]]"
    type: related_to
---

# Ground Truth Evaluation

An evaluation approach that compares system outputs against known correct answers or expected facts. This requires a curated dataset of questions with specified expected content — what the answer should contain.

[[entities/nir-gazit.md|Nir Gazit]] used ground truth evaluation at AIEF2025: he created 20 question examples about Traceloop documentation, and for each question he specified three facts that the generated answer should contain. The [[concepts/llm-as-judge-evaluation.md|LLM-as-judge]] evaluator then checked whether each fact appeared in the generated answer, producing per-fact pass/fail results.

Key properties:

- **Requires upfront investment**: Building the question-answer-fact dataset is labor-intensive but reusable.
- **Binary evaluation**: Facts are either present or absent in the answer, producing clear pass/fail signals.
- **Aggregatable**: Per-fact scores can be aggregated into summary scores (e.g., 42/60 facts correct across 20 questions).
- **Grounds the judge**: The LLM-as-judge doesn't need to know the answer itself; it just checks for the presence of specified facts.

This approach is distinct from context-based evaluation (where the judge works with only the question and retrieved context) and classic NLP metrics (which also require ground truth but use string/embedding similarity rather than fact-checking).
