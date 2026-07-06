---
title: Optimize Anything
category: concepts
tags: [optimization, JEPA, Pareto-pool, API, reflective-optimization, LLM-reflection]
aliases: [Optimize Anything, optimize anything API, optimize-anything-framework]
relationships:
  - target: '[[concepts/JEPA]]'
    type: implements
  - target: '[[concepts/model-distillation]]'
    type: related_to
sources:
  - https://www.youtube.com/watch?v=4sX_He5c4sI
summary: An optimization API accepting a problems set, evaluator, and side information dictionary — built on JEPA's reflective optimization methodology using Pareto pool selection.
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: 2026-07-06
tier: supporting
created: 2026-07-06T00:00:00Z
updated: 2026-07-06T00:00:00Z
---

# Optimize Anything

**Optimize Anything** is an optimization API presented at the AI Engineer World's Fair 2026, built on the JEPA (Joint Embedding Predictive Architecture) methodology. It provides a generic interface for any optimization problem by accepting three components. ^[extracted]

## The API

The Optimize Anything API takes three inputs: ^[extracted]

1. **Problems set** — a collection of problems or tasks to solve
2. **Evaluator** — a function that scores proposed solutions
3. **Side information dictionary** — additional context, constraints, or metadata

This abstraction allows any problem that can be expressed with these three components to be plugged into JEPA's reflective optimization loop. ^[inferred]

## The Optimization Loop

Optimize Anything follows JEPA's core algorithm: ^[extracted]

1. **Collect feedback** — run the evaluator on proposed solutions
2. **LLM reflection** — use an LLM to analyze results and generate insights
3. **Pareto pool** — select the best-performing configurations, keeping only Pareto-optimal ones

The Pareto pool is the key differentiator, ensuring only non-dominated solutions survive each iteration. ^[extracted]

## Results

Through the Optimize Anything methodology, JEPA has achieved: ^[extracted]

- **7x improvement on AMD NPU** — hardware-specific optimization
- **90x cost reduction on Databricks** — production workload efficiency
- Adopted in production by **Dropbox** and **Shopify** ^[extracted]

## Relationship to JEPA

Optimize Anything is the API surface of JEPA's methodology. While JEPA is the architecture, Optimize Anything is the interface that makes the approach usable for arbitrary optimization problems. ^[inferred]

## Related

- [[concepts/JEPA|JEPA]] — the underlying architecture Optimize Anything exposes
- [[concepts/model-distillation|Model Distillation]] — related approach to improving model efficiency
- [[concepts/self-supervised-learning|Self-Supervised Learning]] — the broader paradigm JEPA belongs to
- [[entities/yann-lecun|Yann LeCun]] — creator of JEPA and the Optimize Anything paradigm

## Sources

- AI Engineer World's Fair 2026: https://www.youtube.com/watch?v=4sX_He5c4sI
