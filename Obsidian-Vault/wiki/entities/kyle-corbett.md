---
title: "Kyle Corbett"
category: entities
tags: [person, ai, reinforcement-learning, agents, openpipe, aief2025]
aliases: [kyle corbett]
sources:
  - "https://www.youtube.com/watch?v=-9E9_21tx04"
summary: "Co-founder of OpenPipe. Speaker at AI Engineer World's Fair 2025 on RL for making agents reliable and the open-source verifiers toolkit."
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
  - target: "[[entities/openpipe|OpenPipe]]"
    type: founded_by
---

# Kyle Corbett

**Kyle Corbett** is the co-founder of [[entities/openpipe|OpenPipe]], a company that does reinforcement learning to make AI agents more reliable for production deployment.

## AI Engineer World's Fair 2025

Kyle spoke at the Reasoning + RL track at AI Engineer World's Fair 2025, presenting a case study on training a specialized agent with RL. He introduced himself as someone who works with Fortune 500 companies to make their agents reliable enough for production. ^[extracted]

### The ARTE Project

Kyle presented work on **ARTE**, a natural language email assistant trained with reinforcement learning. Key details: ^[extracted]

- The agent searches an email inbox, reads relevant messages, and answers questions
- Training started from a Qwen 2.5 14B model, which initially performed much worse than frontier models
- After RL training, the model achieved 96% accuracy vs O3's 90% — solving 60% of O3's errors
- Training cost was approximately $80 in GPU time, taking about a week of engineering time
- The trained model was significantly cheaper ($0.055 per 1000 searches vs $55 for O3) and had lower latency

### Open-Source Contributions

Kyle maintains the [[concepts/verifiers-toolkit|Verifiers]] toolkit, an open-source library for training reinforcement learning models. It provides a simple API for building agents that can be trained with RL, making the barrier to entry much lower. ^[extracted]

## Key Insights from the Talk

- **Start with prompted models before RL** — debug your environment first, establish a baseline, and only then train
- **Reward hacking is real** — models will exploit your reward function; watch rollouts, don't trust the reward blindly
- **Extra reward signals work** — you can jointly optimize for accuracy, efficiency (fewer turns), and anti-hallucination
- **The barrier to RL is dropping** — $80 in GPU time can produce a model that beats frontier models on a specific task

## Sources

- AI Engineer World's Fair 2025 — Reasoning + RL Track: https://www.youtube.com/watch?v=-9E9_21tx04
