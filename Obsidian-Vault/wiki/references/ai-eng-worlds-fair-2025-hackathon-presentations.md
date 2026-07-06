---
title: AI Engineer World's Fair 2025 Hackathon Presentations
tags:
- reference
- talk
- hackathon
- ai-engineer
sources:
- 'https://www.youtube.com/watch?v=1zlo9yu2ziu'
summary: 'Three finalist teams present their 48-hour builds at the first official AI Engineer hackathon: automated A/B testing agents, browser-based RL robotics simulation, and action models focused on real-...'
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: references
---

# AI Engineer World's Fair 2025 Hackathon Presentations

> **Event:** AI Engineer World's Fair 2025
> **Format:** Hackathon finalist presentations (3 teams, 48-hour builds)
> **Organizer:** [[entities/cerebral-valley|Cerebral Valley]] x AI Engineer
> **Source:** [YouTube](https://www.youtube.com/watch?v=1ZlO9Yu2ZiU)

## Overview

From 500 applicants, 160 engineers built 46 projects. Three finalists presented their 48-hour builds on stage:

- **Survival of the Feature** — AI agents that automate A/B testing by generating small UX code changes, deploying them incrementally, and analyzing user feedback in real time.
- **Tab RL** — Browser-based reinforcement learning simulation that uses LLMs to generate reward functions from natural language prompts.
- **Featherless Action R1** — An action model (65% on real eval) specialized for reliable real-world web tasks, built on the thesis that scaling alone will not solve AI agent reliability.

## Talks

### Survival of the Feature

- **Team:** Lori, Saleem, Armin (met 10 days before the hackathon)
- **Website:** survivalofthefeature.com
- **Concept:** Uses AI agents to automate incremental UX refinements — one-line code changes to copy and UI — that are A/B tested against real user traffic.
- **Workflow:** Two agents work in concert: one analyzes the front end and generates small variations, another routes a small percentage of traffic to the new variant. The system iterates until it converges on better UX. ^[extracted]
- **Key claim:** LLMs and user feedback are "a match made in heaven" for continuous product optimization. ^[extracted]

### Tab RL

- **Team:** Richa (physicist), Aditya (AI engineer) — met at the hackathon
- **Concept:** A complete RL environment that runs in the browser, using [[entities/mujoco|MuJoCo]] (Google DeepMind physics simulator) for robot simulation.
- **Innovation:** Instead of requiring specialists to write complex reward functions by hand, the system prompts O3, Opus, and Gemini to generate reward functions from natural language descriptions. The generated code handles kinematics, joint angles, height rewards, orientation, and stability. ^[extracted]
- **Infrastructure:** Uses [[entities/modal|Modal]] for sandboxed training. Multiple models compete (from Claude, Google, OpenAI) to produce the best policy. ^[extracted]

### Featherless Action R1

- **Speaker:** Eugene, Featherless AI
- **Concept:** An "action model" achieving 65% on real eval — a benchmark for real-world web tasks (shopping on Amazon, DoorDash, booking) — compared to ~45% for Claude and Gemini. ^[extracted]
- **Thesis:** Scaling is dead; more compute and larger models will not solve the reliability problem. The CEO of DeepMind estimates it may take 10 years, and Yann LeCun says a new architecture is needed for robotics/AI. ^[extracted]
- **Key insight:** Most enterprises do not need PhD-level AI — they need reliable execution of mundane tasks (booking flights, processing invoices, sending emails) without failure. ^[extracted]
- **Architecture:** Built on RWKV — non-transformer architecture. Featherless also built a 72B parameter model without transformer attention that is 1000x cheaper in inference costs, performing comparably to transformer models of similar size. ^[extracted]

## Key Quotes

> "Most companies don't need an AI that can do PhD math. What they really want is an AI that can do the boring things in life, like booking a flight, sending an email, or processing an invoice without failure every single time." — Eugene, Featherless ^[extracted]

> "From 500 applicants, 160 engineers came together to learn, connect, and build together. 46 projects, presented on-site." — MC ^[extracted]

## Awards

- **Hackathon Winner:** Featherless Action R1 (Eugene)
- **Hackathon Runner-up:** Survival of the Feature
- Audience judging via applause (Wi-Fi was down; ChatGPT Advanced Voice Mode failed to analyze the applause, so human judges decided).

## Pages Created from This Source

- [[concepts/ai-driven-experimentation|AI-Driven Experimentation]]
- [[concepts/prompt-to-reward-function|Prompt-to-Reward Function]]
- [[concepts/browser-based-robotics-simulation|Browser-Based Robotics Simulation]]
- [[concepts/agent-reliability-challenge|Agent Reliability Challenge]]
- [[concepts/scaling-is-dead-thesis|Scaling is Dead Thesis]]
- [[concepts/action-models|Action Models]]
- [[entities/featherless|Featherless]]
- [[entities/eugene|Eugene]]
- [[entities/modal|Modal]]
- [[entities/mujoco|MuJoCo]]
- [[entities/cerebral-valley|Cerebral Valley]]

## Sources

- [YouTube: AI Engineer World's Fair 2025 Hackathon Presentations](https://www.youtube.com/watch?v=1ZlO9Yu2ZiU)
