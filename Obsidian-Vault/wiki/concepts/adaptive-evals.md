---
title: "Adaptive Evals"
category: concepts
tags:
  - evaluation
  - adaptive
  - application-specific
  - rag
  - code-generation
  - agents
aliases:
  - adaptive evaluation
  - application-specific evals
sources:
  - "AIEF2025 - How to run Evals at Scale: Thinking beyond Accuracy or Similarity — Muktesh Mishra, Adobe - https://www.youtube.com/watch?v=coKKKKh8Vns"
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
  - target: "[[concepts/llm-evaluation-framework|LLM Evaluation Framework]]"
    type: extends
  - target: "[[concepts/rag-evaluation|RAG Evaluation]]"
    type: applies_to
  - target: "[[concepts/trajectory-evaluation|Trajectory Evaluation]]"
    type: includes
  - target: "[[concepts/eval-driven-development|Eval-Driven Development]]"
    type: enables
---

# Adaptive Evals

**Adaptive evals** are evaluation strategies tailored to the specific type of AI application being tested. The core principle: there is no universal eval — different application architectures require fundamentally different evaluation approaches. ^[extracted]

## The No-Universal-Eval Thesis

Evals must adapt to the application type because each type has different failure modes, output structures, and correctness criteria. A one-size-fits-all metric like "accuracy" or "similarity" is insufficient. ^[extracted]

## Eval Strategies by Application Type

### RAG / Q&A Applications
For retrieval-augmented generation and question-answering systems, evals focus on:
- **Accuracy** — Is the answer factually correct?
- **Similarity** — Does the output match the expected answer format?
- **Usefulness** — Does the response actually help the user?

### Code Generation
For systems that generate code, evals shift to:
- **Functional correctness** — Does the generated code compile and run correctly?
- **Robustness** — Does the generated code handle edge cases and integrate with the existing codebase?

### AI Agents
For autonomous agents that take actions, evals become more complex:
- **Trajectory evaluation** — Which path did the agent take to complete the task? Agents can take different routes, and the path itself matters.
- **Multi-turn simulation** — In complex conversations, how does the agent maintain context and coherence across turns?
- **Tool call correctness** — Are the tools invoked with correct parameters and in the right sequence?

## Implications

Adaptive evals require teams to:
1. Define goals and objectives per application type
2. Design eval modules for each component
3. Maintain separate datasets per flow
4. Test outputs and paths specific to each application type

This [[concepts/eval-driven-development|eval-driven development]] approach means eval design precedes and guides application development, rather than being an afterthought. ^[inferred]

## Related

- [[concepts/llm-evaluation-framework|LLM Evaluation Framework]] — The broader eval system
- [[concepts/rag-evaluation|RAG Evaluation]] — Eval strategy for RAG applications
- [[concepts/trajectory-evaluation|Trajectory Evaluation]] — Agent path evaluation
- [[concepts/eval-driven-development|Eval-Driven Development]] — Evals guide development
- [[entities/muktesh-mishra|Muktesh Mishra]] — Source of the adaptive eval thesis
