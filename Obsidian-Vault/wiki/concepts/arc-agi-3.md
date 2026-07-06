---
title: ARC-AGI-3
tags:
- ai
- benchmarking
- agi
- reasoning
- arc-agi
sources:
- 'https://www.youtube.com/watch?v=3xmfpwjg8pg'
summary: The third version of the ARC-AGI benchmark series, moving from single-turn grid tasks to interactive game environments where AI must explore, infer rules, and complete objectives across ~120 novel...
provenance:
  extracted: 0.75
  inferred: 0.2
  ambiguous: 0.05
base_confidence: 0.6
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: concepts
---
# ARC-AGI-3

ARC-AGI-3 is the third version of the Abstraction and Reasoning Corpus (ARC) benchmark series, created by [[entities/francois-chollet|Francois Chollet]] and developed by the [[entities/ark-prize-foundation|ARC Prize Foundation]]. Unlike its predecessors, ARC-AGI-3 moves from single-turn grid transformation tasks to interactive game environments where agents must explore open worlds, infer rules, and acquire skills through interaction. ^[extracted]

## How ARC-AGI-3 Differs from ARC-AGI-1/2

| Aspect | ARC-AGI-1/2 | ARC-AGI-3 |
|---|---|---|
| Format | Single-turn grid transformations | Interactive game environments |
| Information | All presented at test time | Must be explored and discovered |
| Interface | Grid editor | Game world with actions and rewards |
| Metric | Binary correct/incorrect | Skill acquisition efficiency (actions, time) |
| Scale | ~1,000 tasks (ARC-AGI-2) | ~120 games with deep levels each |

## Benchmark Structure

- **Public training set** — Approximately 40 novel games, intended for developers and AI to learn the interface and benchmark mechanics. ^[extracted]
- **Private evaluation set** — Games never seen by the AI or its developers, with no internet access allowed during evaluation. Scores from this set are the only reported performance metric. ^[extracted]
- **No language, symbols, or trivia** — Following the ARC tradition, the benchmark uses only [[concepts/core-knowledge-priors|core knowledge priors]]: basic math, geometry, agentness, and objectness. ^[extracted]

## Example Game: Locksmith

The first game demonstrated is called "Locksmith." Kamradt shows a screenshot of a 2D grid environment where the agent sees objects, walls, and potential goals — but the rules and objectives are not known in advance. The agent must explore to understand what to pick up, where to go, and what actions succeed. ^[extracted]

## Technical Implementation

The ARC Prize Foundation originally built games in Unity but found it overkill for the simple 2D 64x64 grid format. They switched to a lightweight Python game engine, and are actively seeking game developers and designers with Python expertise to contribute. ^[extracted]

## Timeline

| Milestone | Date |
|---|---|
| Sneak preview | AI Engineer World's Fair 2025 (July 2025) |
| Sandbox preview (5 games + agent competition) | Next month after World's Fair (San Francisco) |
| Full launch (~120 games) | Target Q1 2026 |

## Related

- [[concepts/interactive-reasoning|Interactive Reasoning Benchmarks]] — The benchmark paradigm ARC-AGI-3 exemplifies
- [[concepts/skill-acquisition-efficiency|Skill Acquisition Efficiency]] — The primary metric for evaluation
- [[concepts/human-baseline-benchmarking|Human Baseline Benchmarking]] — Human performance used as the baseline
- [[concepts/verified-superintelligence|Verified Superintelligence]] — Related approach to AGI measurement
- [[entities/greg-kamradt|Greg Kamradt]] — President of ARC Prize Foundation, announced ARC-AGI-3

## Open Questions

- Whether ~120 games provides sufficient statistical power to make authoritative claims about general intelligence. ^[inferred]
- Whether turn-based games (no wall clock) can capture the efficiency dimension of skill acquisition as effectively as continuous-time evaluation. ^[inferred]

## Sources

- [[references/measuring-agi-interactive-reasoning-benchmarks-arc-agi-3|Measuring AGI: Interactive Reasoning Benchmarks for ARC-AGI-3 — Greg Kamradt, ARC Prize Foundation]]
