---
title: "ARC Prize Foundation"
category: entities
tags: [organization, benchmarking, arc-agi, agi, nonprofit, aief2025]
aliases: [arc prize, arc, arc-prize]
sources:
  - "https://www.youtube.com/watch?v=-9E9_21tx04"
summary: "Nonprofit founded by François Chollet and Mike Kanup to create high-signal evaluations on the path to AGI. Creator of ARC-AGI benchmark series."
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
  - target: "[[entities/greg-kamradt|Greg Kamradt]]"
    type: led_by
  - target: "[[entities/francois-chollet|François Chollet]]"
    type: founded_by
  - target: "[[concepts/arc-agi-3|ARC-AGI-3]]"
    type: develops
---

# ARC Prize Foundation

The **ARC Prize Foundation** is a nonprofit organization founded by [[entities/francois-chollet|François Chollet]] and [[entities/mike-kanup|Mike Kanup]] with the mission to be a "north star guide towards open AGI." Greg Kamradt serves as its president.

## Mission

The foundation takes an opinionated approach to AI benchmarking: **humans are the target** for measuring artificial general intelligence. Since humans are the only proof point of general intelligence, the foundation creates problems that are feasible for humans but hard for AI. This approach both measures the gap and guides research. ^[extracted]

## Benchmark Series

- **ARC-AGI v1** — Based on François Chollet's 2019 definition of intelligence as "skill acquisition efficiency." Single-turn grid transformation tasks where the AI must learn a skill from examples and apply it.
- **ARC-AGI v2** — Over 1,000 tasks, each requiring a novel and unique skill. First-party human data collected from 400+ people tested in person in San Diego. Every task was verified solvable by humans.
- **ARC-AGI v3 (preview)** — First interactive reasoning benchmark. ~120 novel games by Q1 2026. Public training set (~40 games), private evaluation set with no internet access. Forces understanding through exploration with core knowledge priors only.

## Invitation

The foundation is actively seeking: ^[extracted]

- Philanthropic donors (tax-deductible)
- Adversarial testers to pressure-test ARC-AGI-3
- Game developers and game designers (building a lightweight Python engine)
- Participants in their mini agent competition

## Sources

- AI Engineer World's Fair 2025 — Reasoning + RL Track: https://www.youtube.com/watch?v=-9E9_21tx04
