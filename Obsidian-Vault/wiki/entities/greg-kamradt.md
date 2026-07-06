---
title: "Greg Kamradt"
category: entities
tags: [person, benchmarking, arc-agi, agi, aief2025]
aliases: [greg kamradt]
sources:
  - "https://www.youtube.com/watch?v=-9E9_21tx04"
summary: "President of the ARC Prize Foundation. Speaker at AI Engineer World's Fair 2025 on interactive reasoning benchmarks and ARC-AGI-3."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-06
updated: 2026-07-06
relationships:
  - target: "[[entities/ark-prize-foundation|ARC Prize Foundation]]"
    type: leads
  - target: "[[concepts/arc-agi-3|ARC-AGI-3]]"
    type: designed
---

# Greg Kamradt

**Greg Kamradt** is the president of the [[entities/ark-prize-foundation|ARC Prize Foundation]], a nonprofit founded by [[entities/francois-chollet|François Chollet]] and [[entities/mike-kanup|Mike Kanup]] with the mission to be a north star guide towards open AGI.

## ARC Prize Foundation

The ARC Prize Foundation takes an opinionated approach to AI benchmarking: **humans are the target**. Since humans are the only proof point of general intelligence, the foundation creates problems that are feasible for humans but hard for AI, which both measures the gap and guides research. ^[extracted]

## AI Engineer World's Fair 2025

Greg spoke at the Reasoning + RL track at AI Engineer World's Fair 2025, previewing ARC-AGI-3 — the foundation's first interactive reasoning benchmark. ^[extracted]

### ARC-AGI-3 Preview

Key details about the upcoming benchmark: ^[extracted]

- **Interactive reasoning benchmarks** — controlled environments with defined rules and sparse rewards where agents must explore and complete objectives
- **Games as benchmarks** — complex rules, defined scope, large flexibility for environment creation
- **120 games planned by Q1 2026** — each game goes deep with multiple levels
- **Public training set (~40 novel games)** and **private evaluation set** — no internet access allowed for the evaluation set
- **Forces understanding through exploration** — AI and humans are dropped into unknown games and must figure out rules by playing
- **Core knowledge priors only** — basic math, basic geometry, agentness (theory of mind), and objectness
- **Evaluation via skill acquisition efficiency** — measured against human baselines using action count as the primary proxy

### Critique of Current Game Benchmarks

Greg identified several issues with existing game benchmarks: ^[extracted]

- **Atari** had dense rewards, irregular reporting, no hidden test set, and developer familiarity with games
- **Agent57/Me** proved AI can beat 50 known games with unlimited compute, but didn't test generalization to unseen games

### Future Plans

- **Sandbox preview next month in San Francisco** — 5 games released with a mini agent competition
- **Looking for game developers and game designers** — building a lightweight Python engine (Unity was overkill for 64×64 grid games)
- **Looking for adversarial testers** to pressure-test ARC-AGI-3

## Sources

- AI Engineer World's Fair 2025 — Reasoning + RL Track: https://www.youtube.com/watch?v=-9E9_21tx04
