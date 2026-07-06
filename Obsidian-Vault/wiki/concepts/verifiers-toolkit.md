---
title: "Verifiers Toolkit"
category: concepts
tags: [reinforcement-learning, rl, open-source, agents, toolkit, verifiers, aief2025]
aliases: [verifiers, verifiers-toolkit]
sources:
  - "https://www.youtube.com/watch?v=-9E9_21tx04"
summary: "Open-source toolkit by Kyle Corbett (OpenPipe) for training reinforcement learning agents. Provides a simple API that makes building trainable agents feel like building normal agents."
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
  - target: "[[entities/kyle-corbett|Kyle Corbett]]"
    type: created_by
  - target: "[[concepts/reinforcement-learning|Reinforcement Learning]]"
    type: implements
  - target: "[[concepts/agent-environment|Agent Environment]]"
    type: provides
---

# Verifiers Toolkit

The **Verifiers** toolkit is an open-source library by [[entities/kyle-corbett|Kyle Corbett]] of [[entities/openpipe|OpenPipe]] that makes building agents trainable with reinforcement learning feel like building normal agents. It is now available on pip.

## Design Philosophy

The toolkit's core insight is that the API should be simple enough that developers can go from their agent applications to something trainable without significant rewrites. The interface is designed as an OpenAI-compatible API that wraps the agent in an RL loop. ^[extracted]

## Key Abstractions

- **Client object** — OpenAI-compatible API for the LLM
- **Rollout function** — The main loop: set initial state, while not done, do a turn with the client
- **Parsers** — Building blocks for structuring agent outputs
- **Rubrics** — Evaluation criteria for reward signals
- **Synthetic data loops** — The same environment can be used as evals or synthetic data generation for SFT before RL

## Usage Pattern

1. Build your agent as normal (OpenAI-compatible API)
2. Use the same environment for synthetic data generation and SFT warmup
3. Switch to RL training once comfortable with the environment
4. The agent can use any API (OpenAI, Claude, DeepSeek)

## Example: Wordle Agent

Kyle demonstrated training a Wordle agent with a 7B model. The reward function: ^[extracted]

- Rewards solving the game
- Gives extra credit for solving in fewer turns
- Uses SFT warmup to lower the barrier to entry
- Works reasonably well on a 7B model

## Engineering Details

The toolkit handles: ^[extracted]

- Fully async execution (training and inference run in parallel)
- Off-policy training
- Batching without manual management
- Multi-model support (cloud, DeepSeek, OpenAI)

## Sources

- AI Engineer World's Fair 2025 — Reasoning + RL Track: https://www.youtube.com/watch?v=-9E9_21tx04
