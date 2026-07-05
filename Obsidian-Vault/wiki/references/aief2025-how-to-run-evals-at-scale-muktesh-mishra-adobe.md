---
title: "AIEF2025 - How to run Evals at Scale: Thinking beyond Accuracy or Similarity — Muktesh Mishra, Adobe"
category: references
tags:
  - aief2025
  - evaluation
  - scale
  - adaptive-evals
  - data-centric
aliases:
  - Evals at Scale — Muktesh Mishra
  - Thinking beyond Accuracy or Similarity
sources:
  - "AIEF2025 - How to run Evals at Scale: Thinking beyond Accuracy or Similarity — Muktesh Mishra, Adobe - https://www.youtube.com/watch?v=coKKKKh8Vns"
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
base_confidence: 0.95
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/muktesh-mishra|Muktesh Mishra]]"
    type: presented_by
  - target: "[[entities/adobe|Adobe]]"
    type: affiliation
  - target: "[[concepts/adaptive-evals|Adaptive Evals]]"
    type: covers
---

# AIEF2025 — How to run Evals at Scale: Thinking beyond Accuracy or Similarity

**Speaker:** Muktesh Mishra, Adobe
**Video:** https://www.youtube.com/watch?v=coKKKKh8Vns

## TL;DR

Muktesh Mishra presents a comprehensive framework for running evaluations at scale in AI applications. The core thesis: evals must be adaptive to the application type (RAG, code generation, agents), data-centric with continuous refinement, and balanced between human-in-the-loop fidelity and automated speed. He introduces "eval-driven development" as the natural evolution of test-driven development for AI systems.

## Key Topics

### Why Evals Matter
- LLM outputs are non-deterministic and require subjective judgment
- Prompt changes can break existing functionality
- Model capability changes require re-evaluation
- Business impact, trust, and accountability depend on measurement

### Data-Centric Eval Design
- Start with synthetic data, then continuously refine with real observations
- Label data across multiple flows and application prospects
- One dataset is never sufficient — maintain separate datasets per flow
- Continuous improvement loop: generate → observe → refine

### Adaptive Evals by Application Type
- **RAG/Q&A:** Accuracy, similarity, usefulness
- **Code generation:** Functional correctness, robustness against the codebase
- **Agents:** Trajectory evaluation (which path taken), multi-turn simulation, tool call correctness

### Scaling Evals
- Cache intermediate results and regression tests
- Orchestrate and parallelize eval execution
- Aggregate results across runs
- Run frequently: "measure, monitor, analyze, repeat"

### Fidelity vs. Speed Trade-off
- Human-in-the-loop: high fidelity, lower speed
- Automated evals: high speed, variable fidelity
- Balance depends on use case — no fixed strategy

### Process Over Tools
- Tools cannot automate everything
- Define and establish eval processes first
- Evals-driven development: define evals before building

## Related Pages

- [[concepts/adaptive-evals|Adaptive Evals]] — Different eval strategies per application type
- [[concepts/trajectory-evaluation|Trajectory Evaluation]] — Agent path evaluation
- [[concepts/synthetic-data-for-evals|Synthetic Data for Evals]] — Data-centric eval design
- [[concepts/eval-driven-development|Eval-Driven Development]] — Evals as development driver
- [[concepts/measure-monitor-analyze-repeat|Measure, Monitor, Analyze, Repeat]] — Scaling eval loop
- [[concepts/fidelity-vs-speed-tradeoff|Fidelity vs. Speed Trade-off]] — Human vs. automated evals
- [[entities/muktesh-mishra|Muktesh Mishra]] — Speaker
