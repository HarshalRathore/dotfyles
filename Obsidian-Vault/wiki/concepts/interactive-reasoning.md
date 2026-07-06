---
title: "Interactive Reasoning Benchmarks"
category: concepts
tags: [benchmarking, interactive-reasoning, arc-agi, agi, exploration, aief2025]
aliases: [interactive reasoning benchmarks, interactive benchmarks]
sources:
  - "https://www.youtube.com/watch?v=-9E9_21tx04"
summary: "Benchmarks where agents must navigate controlled environments with defined rules and sparse rewards, exploring to understand the system before completing objectives. ARC-AGI-3 is the first such benchmark."
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
  - target: "[[concepts/arc-agi-3|ARC-AGI-3]]"
    type: implemented_by
  - target: "[[concepts/skill-acquisition-efficiency|Skill Acquisition Efficiency]]"
    type: measures
  - target: "[[concepts/evaluation-first-development|Evaluation-First Development]]"
    type: relates_to
---

# Interactive Reasoning Benchmarks

**Interactive reasoning benchmarks** are evaluation frameworks where agents must navigate controlled environments with defined rules and sparse rewards, exploring to understand the system before completing objectives. They represent a shift from single-turn benchmarks to interactive, experience-based evaluation. ^[extracted]

## Definition

An interactive reasoning benchmark requires: ^[extracted]

- A controlled environment with defined rules
- Sparse rewards (not dense feedback at every step)
- The agent must navigate and explore to understand what's going on
- The agent must complete the objective through exploration

## Why Games?

Games are uniquely suitable for interactive reasoning benchmarks because they offer: ^[extracted]

- Complex rules
- Defined scope
- Large flexibility in creating environments
- Ability to put different systems (artificial or biological) in the same environment

## Critique of Previous Game Benchmarks

- **Atari** — dense rewards, irregular reporting, no hidden test set, developer familiarity with games
- **Agent57/Me** — proved AI can beat 50 known games with unlimited compute, but didn't test generalization

## The New Assertion

The goal is to test whether AI can beat **100 games the system has never seen beforehand AND the developer has never seen beforehand** — making a capabilities assertion about generalization that wasn't possible before. ^[extracted]

## Core Knowledge Priors

Interactive reasoning benchmarks test only core knowledge priors — the four innate human cognitive foundations: ^[extracted]

1. **Basic math** — counting up to 10
2. **Basic geometry** — understanding shapes and topology
3. **Agentness** — theory of mind, understanding other agents exist
4. **Objectness** — understanding that groups of pixels move together as one body

No language, no text, no symbols, no trivia — just pure reasoning from interaction.

## Relationship to Rich Sutton's "Welcome to the Era of Experience"

Rich Sutton argues that agents adaptable to the human world need to: ^[extracted]

- Engage with the open world
- Collect observational data
- Build a world model
- Make their own rules

Single-turn benchmarks can't capture this — interactive reasoning benchmarks can.

## Evaluation Metric

Skill acquisition efficiency — measured against human baselines using action count as the primary proxy. Can the AI explore, create goals, and complete objectives faster than humans? ^[extracted]

## Sources

- AI Engineer World's Fair 2025 — Reasoning + RL Track: https://www.youtube.com/watch?v=-9E9_21tx04
