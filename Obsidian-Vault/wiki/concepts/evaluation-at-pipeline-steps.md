---
title: "Evaluation at Pipeline Steps"
category: concepts
tags: [evaluation, unit-testing, pipeline, retrieval-evaluation, generation-evaluation]
summary: "The practice of evaluating individual steps of an LLM pipeline separately (e.g., retrieval quality, generation quality) in addition to end-to-end evaluation — analogous to unit testing in software."
sources:
  - "AIEF2025 - Prompt Engineering is Dead — Nir Gazit, Traceloop - https://www.youtube.com/watch?v=jvKf6zXrNO4"
provenance:
  extracted: 0.90
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.90
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/retrieval-evaluation-isolation]]"
    type: extends
  - target: "[[concepts/rag-pipeline-architecture]]"
    type: related_to
  - target: "[[concepts/eval-driven-optimization]]"
    type: related_to
  - target: "[[concepts/evals-are-not-unit-tests]]"
    type: related_to
---

# Evaluation at Pipeline Steps

The practice of evaluating individual steps of an LLM pipeline separately, in addition to end-to-end evaluation. [[entities/nir-gazit|Nir Gazit]] described this at AIEF2025 as analogous to unit testing in software engineering.

For a [[concepts/rag-pipeline-architecture|RAG pipeline]] with two main steps (retrieval from vector DB, then LLM generation), you can evaluate:

1. **Retrieval step**: Does the vector database return the right documents for the query? This isolates the retrieval quality from the generation quality.
2. **Generation step**: Does the LLM use the retrieved context well to generate a good answer? This isolates generation quality from retrieval quality.
3. **End-to-end**: Given the question, does the final answer satisfy the user's needs? This captures the combined effect of both steps.
4. **Internals**: Looking at the question, context, and answer together to evaluate the full pipeline state.

This multi-level evaluation approach enables more targeted debugging and optimization — if retrieval is poor but generation is good, you know to fix the vector database configuration rather than the prompt. It's the LLM equivalent of unit testing: evaluate components in isolation before evaluating the whole system.
