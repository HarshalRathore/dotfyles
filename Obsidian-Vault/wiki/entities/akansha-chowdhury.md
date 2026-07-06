---
title: "Akansha Chowdhury"
category: entities
tags: [person, ai, autonomous-coding, reinforcement-learning, palm, gemini, aief2025]
aliases: [akansha chowdhury]
sources:
  - "https://www.youtube.com/watch?v=-9E9_21tx04"
summary: "First author on the PALM paper, former lead researcher at Gemini, now at Reflection.ai pushing the frontier for autonomous coding with reinforcement learning."
provenance:
  extracted: 0.90
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
tier: supporting
created: 2026-07-06
updated: 2026-07-06
relationships:
  - target: "[[entities/reflection-ai|Reflection.ai]]"
    type: works_at
  - target: "[[concepts/reinforcement-learning|Reinforcement Learning]]"
    type: applies
---

# Akansha Chowdhury

**Akansha Chowdhury** is a researcher who was the first author on the [[entities/palm-model|PALM]] paper at Google, led research for PALM, and was a lead researcher on [[entities/gemini|Gemini]]. She now works at [[entities/reflection-ai|Reflection.ai]], pushing the frontier for autonomous coding with reinforcement learning.

## Career

- **Google (6+ years)** — Led research for PALM, lead researcher on Gemini
- **Reflection.ai (current)** — Focuses on autonomous coding with reinforcement learning, team of ~35 researchers

## AI Engineer World's Fair 2025

Akansha spoke at the Reasoning + RL track at AI Engineer World's Fair 2025 on using RL for autonomous coding. ^[extracted]

### Key Points from Her Talk

- **The arc of LLM progress** — scaling laws (2020) showed power law relationship between compute/data/parameters and performance, with emergent reasoning capabilities
- **Chain-of-thought emerged in PALM** (2021) — 540B parameter model, solve rate on middle school math increased mainly when prompted for reasoning chains
- **Inference-time scaling** — majority voting and sequential revision showed that spending compute at inference time predictably improves outputs in verifiable domains
- **The next frontier is RL** — David Silver and DeepMind's "era of experience" thesis: after simulation (AlphaGo) and RL with human data (chatbots), the next era is RL with automated verification
- **Autonomous coding is ideal for RL** — unit tests and compilers provide automated verification of code correctness
- **Scaling RL is hard** — PPO requires 4 model copies, GRPO reduces to 3, and the training/inference loop adds complexity
- **Reward hacking is a major challenge** in autonomous coding applications

### Q&A Highlights

- **One model vs. specialized models** — coding agents require multiple LM calls; whether that's one model or multiple is the "secret sauce"
- **Simulation vs. experience** — simulation is possible in domains with world models (robotics); real-world applications have imperfect rollouts and require actual experience data

## Sources

- AI Engineer World's Fair 2025 — Reasoning + RL Track: https://www.youtube.com/watch?v=-9E9_21tx04
