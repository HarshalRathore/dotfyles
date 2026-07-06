---
title: "Agent as Optimizer"
category: concepts
tags: [agent, optimization, autonomous-agent, ml-training, crewai, prompt-optimization]
summary: "The pattern of using an autonomous agent as an optimizer — the agent takes a system, evaluates it, analyzes failures, and generates improvements, analogous to a gradient descent optimizer in ML."
sources:
  - "AIEF2025 - Prompt Engineering is Dead — Nir Gazit, Traceloop - https://www.youtube.com/watch?v=jvKf6zXrNO4"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/auto-improving-agent-loop]]"
    type: implements
  - target: "[[concepts/prompt-engineering-is-dead]]"
    type: related_to
  - target: "[[concepts/eval-driven-optimization]]"
    type: related_to
  - target: "[[entities/crewai]]"
    type: uses
---

# Agent as Optimizer

The pattern of using an autonomous agent as an optimizer — the agent takes a system, evaluates it, analyzes failures, and generates improvements. This is analogous to a gradient descent optimizer in machine learning, where the agent plays the role of the optimizer and the evaluator plays the role of the loss function.

[[entities/nir-gazit|Nir Gazit]] demonstrated this at AIEF2025 using [[entities/crewai|CrewAI]] to build a researcher agent that:

1. Crawls the web for prompt engineering guides (data collection / gradient estimation)
2. Runs the evaluator to get a baseline score (loss computation)
3. Analyzes failure reasons (gradient computation)
4. Combines guides + failure reasons to generate a new prompt (parameter update)
5. Feeds the new prompt back into the evaluator (next iteration)

Gazit described this as "classic ML training but with a bit of vibes" — the key difference from traditional ML is that the "gradient" (prompt improvement suggestions) comes from web-sourced guides and LLM reasoning rather than computed backpropagation. The agent is doing optimization over a discrete, non-differentiable space (prompt text) using evaluation feedback as the only signal.

This pattern generalizes beyond prompt optimization to any system where an agent can: (a) evaluate the current state, (b) identify failure modes, and (c) generate improvements.
