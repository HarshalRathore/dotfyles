---
title: MuJoCo
category: entities
tags: [tool, robotics, simulation, physics, google, deepmind]
aliases: [MuJoCo physics engine, Multi-Joint dynamics with Contact]
relationships:
  - target: "[[concepts/browser-based-robotics-simulation]]"
    type: uses
sources:
  - "[[sources/watchv=1zlo9yu2ziu]]"
summary: "A physics simulation engine originally built by Google DeepMind, widely used for robotics and reinforcement learning research. Supports 3D rendering of articulated robots with full physical dynamics."
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

# MuJoCo

MuJoCo (Multi-Joint dynamics with Contact) is a physics simulation engine originally developed by Google DeepMind that models the dynamics of articulated rigid-body systems. It is widely used in robotics and reinforcement learning research for simulating robots in physical environments. ^[inferred]

## Capabilities

- Full physics simulation: gravity, joint constraints, friction, collisions, contact dynamics. ^[extracted]
- 3D rendering of robot models in simulation environments. ^[extracted]
- Supports various robot morphologies (robot dogs, arms, grippers). ^[inferred]

## Use in Browser-Based RL

In the Tab RL hackathon project, MuJoCo was used as the physics backend for browser-based RL simulation. Robot models with embedded physical attributes were rendered in 3D and used as the training environment for reinforcement learning policies driven by [[concepts/prompt-to-reward-function|prompt-to-reward functions]]. ^[extracted]

## MJX and GPU-Accelerated Robot Learning

MJX (MuJoCo JAX) is a GPU-accelerated version of MuJoCo that enables training RL policies entirely on GPU. [[entities/k-scale-labs|K-Scale Labs]] uses MJX to train locomotion PPO policies for their K-Bot humanoid — a walking policy can be trained in 1–2 hours on a local GPU. ^[extracted]

## Sources

- [[references/ai-eng-worlds-fair-2025-hackathon-presentations|AI Engineer World's Fair 2025 Hackathon Presentations]] — Tab RL team presentation
- [[references/aief2025-open-source-humanoid-robot-k-scale-labs|Your Personal Open-Source Humanoid Robot — JX Mo, K-Scale Labs]] — MJX usage for K-Bot

