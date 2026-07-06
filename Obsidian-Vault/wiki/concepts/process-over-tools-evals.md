---
title: Process Over Tools in Evals
category: concepts
tags:
- evaluation
- process
- methodology
- governance
aliases:
- eval process over tools
- eval governance
sources:
- 'AIEF2025 - How to run Evals at Scale: Thinking beyond Accuracy or Similarity — Muktesh Mishra, Adobe - https://www.youtube.com/watch?v=coKKKKh8Vns'
provenance:
  extracted: 0.9
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/eval-driven-development|Eval-Driven Development]]'
  type: supports
- target: '[[concepts/fidelity-vs-speed-tradeoff|Fidelity vs. Speed Trade-off]]'
  type: constrains
- target: '[[concepts/adaptive-evals|Adaptive Evals]]'
  type: enables
summary: Process Over Tools in Evals
---

# Process Over Tools in Evals

**Process over tools** is the principle that evaluation processes should be defined and established before relying on any specific tool or platform. The rationale: tools cannot automate everything, and a well-defined process ensures evals remain effective regardless of the tooling. ^[extracted]

## The Principle

Muktesh Mishra's argument: organizations should first define how they want to run evals — the methodology, the responsibilities, the cadence — before choosing or building tools to support that process. ^[extracted]

## Why Process Comes First

1. **Tools change, principles endure** — Eval tooling evolves rapidly; process decisions are more stable
2. **No tool covers everything** — Automated tools cannot replace human judgment for all eval dimensions
3. **Process enables tool selection** — Knowing your process makes it easier to choose the right tools
4. **Process ensures consistency** — Without a defined process, evals become ad-hoc and unreliable

## What the Process Defines

- Which evals need human judgment vs. automation
- The cadence for running evals (continuous, per-release, periodic)
- Who is responsible for maintaining eval datasets
- How eval results flow into development decisions
- The balance between fidelity and speed for each eval type

## Related

- [[concepts/eval-driven-development|Eval-Driven Development]] — Process is the foundation of eval-driven work
- [[concepts/fidelity-vs-speed-tradeoff|Fidelity vs. Speed Trade-off]] — Process determines the balance
- [[concepts/adaptive-evals|Adaptive Evals]] — Process defines which adaptive strategy to use
