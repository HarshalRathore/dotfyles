---
title: 'Measuring AGI: Interactive Reasoning Benchmarks for ARC-AGI-3 — Greg Kamradt, ARC Prize Foundation'
category: references
tags:
- ai
- benchmarking
- agi
- reasoning
- arc-agi
- ai-engineering
aliases:
- Greg Kamradt AI Eng 2025
- ARC-AGI-3 announcement
sources:
- 'https://www.youtube.com/watch?v=3xmfpwjg8pg'
summary: Greg Kamradt announces ARC-AGI-3, an interactive reasoning benchmark where AI systems must explore novel games, infer rules, and complete objectives without prior training data — using human skill...
provenance:
  extracted: 0.82
  inferred: 0.13
  ambiguous: 0.05
base_confidence: 0.65
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Measuring AGI: Interactive Reasoning Benchmarks for ARC-AGI-3 — Greg Kamradt, ARC Prize Foundation

> Greg Kamradt, president of the ARC Prize Foundation, argues that measuring human-like intelligence requires interactive benchmarks by design — and announces ARC-AGI-3, a benchmark built around novel games that AI (and humans) have never seen, using skill acquisition efficiency as the primary metric.

## Overview

Greg Kamradt, president of the [[entities/arc-prize-foundation|ARC Prize Foundation]], presents at AI Engineer World's Fair 2025 the next generation of the ARC-AGI benchmark series. ARC-AGI-3 moves beyond the single-turn grid tasks of its predecessors into interactive game environments where agents must explore, infer rules, and adapt — mirroring Rich Sutton's argument that AI must engage with an open world to escape the human data ceiling. ^[extracted]

The foundation tested over 400 humans in San Diego to validate that every task in the benchmark is solvable by people, establishing a human baseline for measuring AI generalization. ^[extracted]

## Key Ideas

- **Intelligence is skill acquisition efficiency.** Kamradt cites [[entities/francois-chollet|Francois Chollet]]'s three-word definition: intelligence is how efficiently a system can learn new skills. This is the core metric for ARC-AGI-3. ^[extracted]
- **Generalization means handling novel tasks.** Quoting John McCarthy's definition that AI is making machines do tasks they have "never seen beforehand and have not prepared for beforehand," Kamradt argues that in-distribution performance measures memorization, not intelligence. ^[extracted]
- **Interactive benchmarks are necessary for human-like intelligence.** Single-turn benchmarks like ARC-AGI-2 present all information at test time. Measuring human-like intelligence requires agents to explore open worlds, understand goals, and act on rewards. ^[extracted]
- **Games are the ideal medium for interactive benchmarks.** Games combine complex rules, defined scope, and flexibility for creating controlled environments — without the problems of the Atari era (dense rewards, irregular reporting, no hidden test set, developer intelligence contamination). ^[extracted]
- **Human baseline is the target.** Humans are the only known proof point of general intelligence. By creating problems feasible for humans but hard for AI, the benchmark creates a measurable gap that guides research. ^[extracted]

## ARC-AGI-3 Benchmark Design

ARC-AGI-3 is structured as a set of novel games that neither the AI nor the developer has seen before:

- **Public training set** — approximately 40 novel games where developers and AI can learn the interface. ^[extracted]
- **Private evaluation set** — games never seen before, with no internet access allowed during evaluation. This enables an authoritative claim about generalization to new domains. ^[extracted]
- **Forced understanding through exploration** — agents are dropped into a world without knowing the rules, objectives, or controls. They must explore to understand what is happening. ^[extracted]
- **Core knowledge priors only** — no language, text, symbols, or trivia. The benchmark relies only on four priors: basic math (counting to 10), basic geometry (shapes and topology), agentness (theory of mind), and objectness (understanding coherent objects). ^[extracted]
- **Python game engine** — originally started with Unity, but found it overkill for 2D 64x64 games. Building a lightweight Python engine instead. ^[extracted]

## Evaluation Methodology

AI performance is measured using skill acquisition efficiency, with humans as the baseline:

- **Human baseline** — hundreds of humans tested on the exact same ARC tasks, measuring time and number of actions to complete each game. ^[extracted]
- **Action count** — since wall-clock time is not used (turn-based games), the number of actions taken serves as a proxy for efficiency. ^[extracted]
- **Energy as ideal denominator** — Kamradt states that the ideal efficiency metric would be energy consumption (since we know the human brain's energy usage), but this is inaccessible for closed models. Cost serves as a proxy. ^[extracted]
- **AGI assertion** — if AI cannot complete games faster than humans, Kamradt asserts that AGI has not yet been achieved. ^[extracted]

## Timeline

- **AI Engineer World's Fair (July 2025)** — sneak preview announced. ^[extracted]
- **Next month (San Francisco)** — sandbox preview with 5 games released, plus a mini agent competition with prize money. ^[extracted]
- **Q1 2026** — target launch with approximately 120 games. ^[extracted]

## Historical References

- **John McCarthy** — defined AI as making machines do tasks they have never seen beforehand. ^[extracted]
- **[[entities/francois-chollet|Francois Chollet]]** — defined intelligence as "skill acquisition efficiency" and created the original ARC-AGI benchmark in his 2019 paper "On the Measure of Intelligence." ^[extracted]
- **Rich Sutton** — his essay "Welcome to the Era of Experience" argues agents must engage with the open world, collect observational data, and build world models to adapt to the human world. ^[extracted]
- **Atari benchmark era** — prior game-based AI benchmarking suffered from dense rewards, irregular reporting, no hidden test set, and developer intelligence contamination (developers knew the games and injected their knowledge into models). ^[extracted]
- **Agent 57 and MuZero** — demonstrated AI can beat 50 known games with unlimited compute and training data, but this does not prove generalization to novel games. ^[extracted]

## Quotes

> "AI is the science and engineering of making machines do tasks that they have never seen beforehand, and they have not prepared for beforehand." — John McCarthy

> "Intelligence is skill acquisition efficiency." — Francois Chollet

> "If we want agents that will be readily adaptable to the human world, they need to engage with the open world, they need to collect observational data, and they need to be able to take that data to build a world model and make their own rules." — Greg Kamradt, paraphrasing Rich Sutton

> "If it cannot, I would go as far as to assert that we do not yet have AGI. And as long as we can come up with problems that humans can still do but machines cannot, I would again assert that we do not have AGI." — Greg Kamradt

## Related

- [[concepts/interactive-reasoning-benchmarks|Interactive Reasoning Benchmarks]] — Core concept of the talk
- [[concepts/arc-agi-3|ARC-AGI-3]] — The specific benchmark announced
- [[concepts/skill-acquisition-efficiency|Skill Acquisition Efficiency]] — Chollet's intelligence definition
- [[concepts/core-knowledge-priors|Core Knowledge Priors]] — The four reasoning priors
- [[concepts/human-baseline-benchmarking|Human Baseline Benchmarking]] — Using humans as the target
- [[entities/greg-kamradt|Greg Kamradt]] — Speaker biography
- [[entities/arc-prize-foundation|ARC Prize Foundation]] — Organization building the benchmark
- [[entities/francois-chollet|Francois Chollet]] — Creator of the ARC-AGI benchmark series
- [[concepts/verified-superintelligence|Verified Superintelligence]] — Related AGI measurement concept
- [[concepts/reasoning-time-branching|Reasoning Time Branching]] — Related reasoning evaluation approach
- [[concepts/benchmark-driven-ai-optimization|Benchmark-Driven AI Optimization]] — Benchmarking methodology

## Sources

- <https://www.youtube.com/watch?v=3XmFPwjG8pg> — Full talk recording
