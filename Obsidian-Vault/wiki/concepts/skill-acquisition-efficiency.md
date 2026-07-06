---
title: Skill Acquisition Efficiency
tags:
- ai
- agi
- intelligence
- benchmarking
- evaluation
sources:
- 'https://www.youtube.com/watch?v=3xmfpwjg8pg'
- '[[sources/francois-chollet-on-the-measure-of-intelligence-2019]]'
summary: Francois Chollet's definition of intelligence as the efficiency with which a system can acquire new skills — distinguishing genuine intelligence from knowledge or memorization.
provenance:
  extracted: 0.68
  inferred: 0.22
  ambiguous: 0.1
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: concepts
---
# Skill Acquisition Efficiency

Skill acquisition efficiency is [[entities/francois-chollet|Francois Chollet]]'s three-word definition of intelligence, first proposed in his 2019 paper "On the Measure of Intelligence." It frames intelligence not as knowledge or performance on known tasks, but as the efficiency with which a system can learn new skills. ^[extracted]

## Definition

> "Intelligence is skill acquisition efficiency." — Francois Chollet

The definition decomposes into two questions:
1. **Can you learn new things?** (skill acquisition)
2. **How efficiently can you learn those new things?** (efficiency)

Humans are noted as being extremely efficient at learning novel skills compared to current AI systems. ^[extracted]

## Relationship to Generalization

This definition aligns with John McCarthy's framing of AI as making machines do tasks they have "never seen beforehand and have not prepared for beforehand." If a system has seen a class of problem in training data, its performance measures memorization, not intelligence. ^[extracted] Skill acquisition efficiency captures the rate at which a system generalizes from limited experience.

## Measurement

In [[concepts/arc-agi-3|ARC-AGI-3]], skill acquisition efficiency is measured through:

- **Action count** — number of actions an agent takes to complete a game (primary proxy) ^[extracted]
- **Cost** — monetary cost of computation (secondary proxy) ^[extracted]

The ideal denominator would be **energy consumption**, because the human brain's energy usage is known and provides an absolute reference point for general intelligence. However, energy data is not accessible for closed AI models. ^[extracted]

## Open Questions

- Whether action count in a turn-based game adequately captures the efficiency of skill acquisition, or whether wall-clock time and energy are necessary for a complete measure. ^[inferred]
- How to compare efficiency across vastly different hardware and model architectures. ^[inferred]

## Related

- [[concepts/interactive-reasoning-benchmarks|Interactive Reasoning Benchmarks]] — Benchmarks designed to measure this metric
- [[concepts/human-baseline-benchmarking|Human Baseline Benchmarking]] — Humans as the efficiency baseline
- [[concepts/evaluation-first-development|Evaluation-First Development]] — Development methodology centered on evaluation
- [[concepts/verified-superintelligence|Verified Superintelligence]] — Alternative approach to defining intelligence

## Sources

- [[references/measuring-agi-interactive-reasoning-benchmarks-arc-agi-3|Measuring AGI: Interactive Reasoning Benchmarks for ARC-AGI-3 — Greg Kamradt, ARC Prize Foundation]]
- Francois Chollet, "On the Measure of Intelligence" (2019)
