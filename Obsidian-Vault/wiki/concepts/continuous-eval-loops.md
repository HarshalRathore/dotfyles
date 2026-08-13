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
  - "Zhengyao Jiang et al. — AIDE²: First experimental evidence of recursive self-improvement: https://x.com/zhengyaojiang/status/2077079778793042425"
  - "PostHog — Self-driving mode: https://posthog.com/self-driving"
  - "Elie Dolgin, IEEE Spectrum — AI Boosts Research Careers but Flattens Scientific Discovery: https://spectrum.ieee.org/ai-science-research-flattens-discovery"
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
updated: 2026-07-18
relationships:
  - target: "[[concepts/two-circle-eval-model|Two-Circle Eval Model]]"
    type: related_to
  - target: "[[concepts/large-scale-simulation|Large-Scale Simulation]]"
    type: uses
  - target: "[[concepts/probabilistic-evals|Probabilistic Evals]]"
    type: uses
---

# Continuous Eval Loops

The **continuous eval loop** is the operational cycle of simulation, evaluation, iteration, regression testing, and monitoring that makes AI systems scalable in production — the same cycle used in autonomous vehicle development, applied to voice agents and LLM systems. ^[extracted]

## The Loop

1. **Simulation** — Run the system across thousands of scenarios
2. **Evaluation** — Measure aggregate performance metrics
3. **Iteration** — Update prompts, models, or orchestration
4. **Regression testing** — Verify improvements didn't break existing functionality
5. **Monitoring** — Continuous observability in production

### AIDE²: Nested Eval Loops for Recursive Self-Improvement

Zhengyao Jiang's AIDE² system provides a concrete implementation of nested continuous eval loops. It operates two loops: ^[extracted]

1. **Inner loop** — An agent optimizes code against a task-specific evaluation metric. This is a standard agent loop with eval-driven iteration.
2. **Outer loop** — The outer loop optimizes the inner agent's harness — its search policy, memory system, reward-hacking defenses. After 100 iterations the outer loop discovered 7 improvements over a hand-tuned baseline, including a 16x prompt compression memory system and a new search policy. ^[extracted]

The outer loop performs continuous evaluation of the inner loop's performance, making AIDE² a meta-continuous-eval-loop: the eval-driven improvement cycle is applied to the eval loop itself. ^[inferred] This directly maps onto the [[concepts/two-circle-eval-model|two-circle model]] — the outer loop is the right circle (tuning the evals) applied to the left circle (improving the system). ^[inferred]

### PostHog's Production Measurement Loop

[[entities/posthog|PostHog's]] self-driving mode closes the evaluation loop in production: after a change ships, the system checks whether the target metric actually moved. ^[extracted] If not, that generates a new signal and the change can be rolled back. ^[extracted] This makes the measurement phase a continuous loop rather than a one-time check — every change is an experiment whose outcome feeds back into the signal pipeline. ^[inferred]

## The Two-Circle Connection

[[entities/dat-ngo|Dat Ngo]] ([[entities/arize-ai|Arize AI]]) at AIEF2025 introduced the **two-circle model**: the left circle improves the system through evals, while the right circle tunes the evals themselves. The continuous eval loop operates primarily in the left circle, but requires the right circle to remain effective over time. ^[extracted]

## Why Continuous Loops Matter

- AI systems are non-deterministic — the same input can produce different outputs
- Model APIs change under the hood constantly
- User expectations evolve
- Without continuous loops, quality degrades over time

### The Narrowing Risk

A counterpoint from the IEEE Spectrum study on AI-driven science ([source](https://spectrum.ieee.org/ai-science-research-flattens-discovery)): continuous eval loops that optimize for measurable signals may converge on tractable, data-rich problems rather than expanding into harder conceptual territory. ^[extracted] In product engineering, this means continuous eval loops risk optimizing for easy metrics (conversion, latency) at the expense of harder-to-measure product quality (coherence, taste, strategic positioning). ^[inferred] The danger is not the loop architecture but the reward structure it optimizes toward — a lesson the continuous eval loop inherits from [[concepts/reward-hacking|reward hacking]] at scale. ^[inferred]

## Sources

- AIEF2025 - From Self-driving to Autonomous Voice Agents — Brooke Hopkins, Coval - https://www.youtube.com/watch?v=kDczF4wBh8s
- AIEF2025 - Engineering Better Evals: Scalable LLM Evaluation Pipelines That Work — Dat Ngo, Aman Khan, Arize - https://www.youtube.com/watch?v=spvXj9tnWAQ
- Zhengyao Jiang et al. — AIDE²: First experimental evidence of recursive self-improvement: https://x.com/zhengyaojiang/status/2077079778793042425
- PostHog — Self-driving mode: https://posthog.com/self-driving
- Elie Dolgin, IEEE Spectrum — AI Boosts Research Careers but Flattens Scientific Discovery: https://spectrum.ieee.org/ai-science-research-flattens-discovery
