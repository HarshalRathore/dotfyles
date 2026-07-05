---
title: "Continuous Eval Loops"
category: concepts
tags:
  - evals
  - voice-ai
  - simulation
  - ci-cd
  - iteration
  - production
sources:
  - "AIEF2025 - From Self-driving to Autonomous Voice Agents — Brooke Hopkins, Coval - https://www.youtube.com/watch?v=kDczF4wBh8s"
  - "AIEF2025 - Engineering Better Evals: Scalable LLM Evaluation Pipelines That Work — Dat Ngo, Aman Khan, Arize - https://www.youtube.com/watch?v=spvXj9tnWAQ"
summary: "The operational cycle of simulation, evaluation, iteration, regression testing, and monitoring that makes AI systems scalable — the same cycle used in autonomous vehicle development."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-04
updated: 2026-07-05
relationships:
  - target: "[[concepts/two-circle-eval-model|Two-Circle Eval Model]]"
    type: relates_to
  - target: "[[concepts/large-scale-simulation|Large-Scale Simulation]]"
    type: uses
  - target: "[[concepts/probabilistic-evals|Probabilistic Evals]]"
    type: enables
---

# Continuous Eval Loops

The **continuous eval loop** is the operational cycle of simulation, evaluation, iteration, regression testing, and monitoring that makes AI systems scalable in production — the same cycle used in autonomous vehicle development, applied to voice agents and LLM systems. ^[extracted]

## The Loop

1. **Simulation** — Run the system across thousands of scenarios
2. **Evaluation** — Measure aggregate performance metrics
3. **Iteration** — Update prompts, models, or orchestration
4. **Regression testing** — Verify improvements didn't break existing functionality
5. **Monitoring** — Continuous observability in production

## The Two-Circle Connection

[[entities/dat-ngo|Dat Ngo]] ([[entities/arize-ai|Arize AI]]) at AIEF2025 introduced the **two-circle model**: the left circle improves the system through evals, while the right circle tunes the evals themselves. The continuous eval loop operates primarily in the left circle, but requires the right circle to remain effective over time. ^[extracted]

## Why Continuous Loops Matter

- AI systems are non-deterministic — the same input can produce different outputs
- Model APIs change under the hood constantly
- User expectations evolve
- Without continuous loops, quality degrades over time

## Sources

- AIEF2025 - From Self-driving to Autonomous Voice Agents — Brooke Hopkins, Coval - https://www.youtube.com/watch?v=kDczF4wBh8s
- AIEF2025 - Engineering Better Evals: Scalable LLM Evaluation Pipelines That Work — Dat Ngo, Aman Khan, Arize - https://www.youtube.com/watch?v=spvXj9tnWAQ
