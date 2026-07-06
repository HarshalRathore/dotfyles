---
title: "Multi-Turn RL"
category: concepts
tags: [reinforcement-learning, rl, multi-turn, agents, tool-use, aief2025]
aliases: [multi-turn reinforcement learning, multi-turn rl, agentic rl]
sources:
  - "https://www.youtube.com/watch?v=-9E9_21tx04"
summary: "The direction of reinforcement learning toward multi-turn agentic systems — tool calls, software, games, long-horizon planning, computer use, and memory. Scaling on tool calls lets agents solve harder problems."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.70
lifecycle: draft
tier: supporting
created: 2026-07-06
updated: 2026-07-06
relationships:
  - target: "[[concepts/reinforcement-learning|Reinforcement Learning]]"
    type: extends
  - target: "[[concepts/agent-tool-calling|Agent Tool Calling]]"
    type: uses
  - target: "[[concepts/advantage-estimation|Advantage Estimation]]"
    type: requires
---

# Multi-Turn RL

**Multi-turn RL** is the direction of reinforcement learning toward multi-turn agentic systems — where agents interact with environments over multiple steps, using tool calls, software, games, long-horizon planning, computer use, and memory. ^[extracted]

## Why Multi-Turn?

Single-turn RL (math problems, code generation) has been the dominant paradigm because it's easy to evaluate. But real-world tasks are messier: ^[extracted]

- **Real-world tasks are harder to evaluate** — writing evals is a whole parallel track to RL itself
- **We won't get great software by hill-climbing on QA benchmarks** — we need to think about actual systems and the challenges of designing rewards for them
- **Tool calls scale problem-solving** — scaling on tool calls lets agents solve harder problems

## The Conceptual Framework

The RL components map directly to agent architecture: ^[extracted]

- **Environments** = harnesses
- **Rewards** = evals
- **Tasks** = prompts
- **Policy** = LM API

## The Programming Interface

The ideal API for multi-turn RL is one where you write code as if building a normal agent in a loop, but the system can be used for RL training. This means: ^[extracted]

- An OpenAI-compatible client object for the LLM
- A rollout function that handles the interaction loop
- The same environment works for debugging (with API calls) and for RL training

## Challenges

- **Evals are hard** — there's a whole track of building good evals running parallel to RL research
- **Reward hacking** — models will exploit gaps between what you want and what you measure
- **Computational cost** — multi-turn RL is more expensive than single-turn
- **Evaluation quality determines RL quality** — poor eval signals produce poor training regardless of algorithm

## Sources

- AI Engineer World's Fair 2025 — Reasoning + RL Track: https://www.youtube.com/watch?v=-9E9_21tx04
