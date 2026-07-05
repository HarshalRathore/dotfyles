---
title: "Trajectory Evaluation"
category: concepts
tags:
  - evaluation
  - agents
  - trajectory
  - multi-step
  - adaptive-evals
aliases:
  - agent trajectory eval
  - path evaluation
sources:
  - "AIEF2025 - How to run Evals at Scale: Thinking beyond Accuracy or Similarity — Muktesh Mishra, Adobe - https://www.youtube.com/watch?v=coKKKKh8Vns"
provenance:
  extracted: 0.90
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/adaptive-evals|Adaptive Evals]]"
    type: component_of
  - target: "[[concepts/evals-testing-pyramid|Evals Testing Pyramid]]"
    type: relates_to
  - target: "[[concepts/agent-rails|Agent Rails]]"
    type: evaluates
---

# Trajectory Evaluation

**Trajectory evaluation** is an agent-specific eval method that assesses not just the final output, but the sequence of steps, decisions, and tool calls an agent takes to complete a task. ^[extracted]

## Why Trajectory Matters

Agents are fundamentally different from deterministic systems: they can take multiple valid paths to the same outcome. A trajectory eval asks "which path did the agent take?" — because the path itself carries information about reliability, efficiency, and correctness that the final output alone cannot reveal. ^[extracted]

## What Trajectory Evals Measure

- **Path selection** — Did the agent choose the most appropriate sequence of actions?
- **Tool call correctness** — Were tools invoked with correct parameters at the right time?
- **Multi-turn coherence** — Did the agent maintain context and consistency across conversation turns?
- **Failure recovery** — When things went wrong, did the agent recover gracefully?

## Relationship to Adaptive Evals

Trajectory evaluation is one of the adaptive eval strategies for agent-type applications. It sits alongside multi-turn simulation and tool call testing as a family of agent-specific eval methods. ^[extracted]

## Related

- [[concepts/adaptive-evals|Adaptive Evals]] — Agent evals are adaptive to application type
- [[concepts/evals-testing-pyramid|Evals Testing Pyramid]] — Trajectory evals sit at the middle level
- [[concepts/agent-rails|Agent Rails]] — Rails constrain agent behavior, trajectory evals measure it
