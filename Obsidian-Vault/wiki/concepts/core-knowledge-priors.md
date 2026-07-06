---
title: Core Knowledge Priors
tags:
- ai
- reasoning
- cognition
- benchmarking
- arc-agi
sources:
- 'https://www.youtube.com/watch?v=3xmfpwjg8pg'
summary: Four innate or hardwired reasoning priors (basic math, basic geometry, agentness, objectness) that ARC-AGI benchmarks use to test abstract reasoning without relying on language, symbols, or learned...
provenance:
  extracted: 0.75
  inferred: 0.18
  ambiguous: 0.07
base_confidence: 0.58
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: concepts
---
# Core Knowledge Priors

Core knowledge priors are the four foundational reasoning capabilities that the ARC-AGI benchmark series uses to test abstract intelligence. Inspired by developmental psychology, these are capabilities that humans are either born with or are "hardwired to gather right immediately after birth." ^[extracted]

ARC-AGI benchmarks deliberately strip away language, text, symbols, and trivia (what Kamradt calls "PhD++ problems") to focus on these priors, ensuring that performance reflects abstract reasoning rather than accumulated knowledge. ^[extracted]

## The Four Priors

### Basic Math
Counting up to 10, understanding quantities and simple numerical relationships. Not formal arithmetic — just the foundational numerical intuitions that pre-verbal infants demonstrate. ^[extracted]

### Basic Geometry
Understanding different shapes, spatial relationships, and topology. The ability to recognize and reason about forms, positions, and transformations in space. ^[extracted]

### Agentness (Theory of Mind)
Understanding that there are other agents in the world with their own intentions, goals, and behaviors. The capacity to recognize that some entities act autonomously and can be interacted with. ^[extracted]

### Objectness
Understanding that collections of pixels or features that move together form a coherent object. As Kamradt describes it: "You have one pixel, but then it's surrounded by a whole bunch of other pixels and they all move together. You understand all those pixels as one and it kind of acting as a one body." ^[extracted] Evolutionarily, this is recognizing that "that's a tree over there" — all parts of the same entity.

## Why Core Knowledge Priors Matter

The ARC-AGI approach is deliberately different from benchmarks that try to create the hardest possible problems by hiring elite experts. Instead of building "PhD++ problems" where AI is already superhuman, ARC focuses on the floor of reasoning — what any human (including a child) can do effortlessly but AI struggles with. ^[extracted] This focus on core priors makes the benchmark a test of broad generalization rather than narrow expertise.

## Related

- [[concepts/arc-agi-3|ARC-AGI-3]] — The benchmark using these priors
- [[concepts/skill-acquisition-efficiency|Skill Acquisition Efficiency]] — The metric these priors help evaluate
- [[concepts/interactive-reasoning-benchmarks|Interactive Reasoning Benchmarks]] — The paradigm requiring these priors
- [[concepts/human-baseline-benchmarking|Human Baseline Benchmarking]] — Why humans are the reference for evaluating these priors

## Open Questions

- Whether these four priors are sufficient to characterize the full range of abstract reasoning that general intelligence requires, or whether additional priors (causality, time, probability) are needed. ^[inferred]
- Whether AI systems can develop these priors through training, or whether they must be architecturally specified. ^[inferred]

## Sources

- [[references/measuring-agi-interactive-reasoning-benchmarks-arc-agi-3|Measuring AGI: Interactive Reasoning Benchmarks for ARC-AGI-3 — Greg Kamradt, ARC Prize Foundation]]
