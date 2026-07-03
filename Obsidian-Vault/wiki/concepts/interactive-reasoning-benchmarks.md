---
title: "Interactive Reasoning Benchmarks"
tags:
  - ai
  - benchmarking
  - agi
  - reasoning
  - evaluation
sources:
  - "AI Engineer World's Fair 2025 — Measuring AGI: Interactive Reasoning Benchmarks for ARC-AGI-3 — Greg Kamradt, ARC Prize Foundation - https://www.youtube.com/watch?v=3XmFPwjG8pg"
summary: "A class of AI benchmarks where agents must explore controlled environments with defined rules and sparse rewards, infer goals through interaction, and demonstrate skill acquisition — moving beyond single-turn evaluation toward measuring human-like intelligence."
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---
# Interactive Reasoning Benchmarks

Interactive reasoning benchmarks are a class of AI evaluation that moves beyond single-turn, all-information-at-test-time benchmarks. They measure an agent's ability to explore an open world, infer goals and rules through interaction, and acquire new skills efficiently — mirroring the conditions under which [[concepts/human-baseline-benchmarking|humans demonstrate general intelligence]]. ^[extracted]

## Core Properties

- **Controlled environment** — The benchmark provides a sandbox with defined rules and boundaries. ^[extracted]
- **Sparse rewards** — Agents receive minimal feedback, requiring them to explore and infer what constitutes progress. ^[extracted]
- **Exploration requirement** — Agents must actively explore to understand the world state, available actions, and objectives. ^[extracted]
- **Novel tasks** — Each task or game is designed to be unseen by both the AI system and its developers, testing generalization rather than memorization. ^[extracted]

## Motivation

Interactive reasoning benchmarks are motivated by Rich Sutton's "Era of Experience" thesis: if AI systems cannot engage with an open world, collect observational data, and build their own world models, they will remain constrained by the human data ceiling. ^[extracted] Single-turn benchmarks like [[concepts/arc-agi-3|ARC-AGI-2]] provide all needed information at test time, which Kamradt argues is insufficient for measuring human-like intelligence. ^[extracted]

## Game-Based Benchmarks

Games are identified as the ideal medium for interactive reasoning benchmarks because they offer:

1. **Complex rules** — sufficient depth to challenge reasoning systems
2. **Defined scope** — bounded environments that can be controlled and measured
3. **Large flexibility** — game designers can create diverse, novel scenarios

This contrasts with the Atari benchmark era, which suffered from dense rewards, irregular reporting, no hidden test set, and developer intelligence contamination (developers already knew the games and injected their knowledge into models). ^[extracted]

## Relation to Prior Work

- [[concepts/benchmark-driven-ai-optimization|Benchmark-Driven AI Optimization]] — Traditional benchmarking approach that interactive reasoning extends
- [[concepts/evaluation-first-development|Evaluation-First Development]] — Development methodology that interactive benchmarks enable
- [[concepts/verified-superintelligence|Verified Superintelligence]] — A different approach to measuring AI safety and correctness
- [[concepts/skill-acquisition-efficiency|Skill Acquisition Efficiency]] — The metric these benchmarks aim to measure

## Open Questions

- Whether the controlled game environment sufficiently transfers to real-world open-ended tasks. ^[inferred]
- How to prevent developers from over-optimizing for benchmark games without truly improving general intelligence. ^[inferred]

## Sources

- [[references/measuring-agi-interactive-reasoning-benchmarks-arc-agi-3|Measuring AGI: Interactive Reasoning Benchmarks for ARC-AGI-3 — Greg Kamradt, ARC Prize Foundation]]
