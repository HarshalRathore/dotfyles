---
title: "Reinforcement Learning at Scale"
category: concepts
tags:
  - reinforcement-learning
  - deepseek
  - openai
  - o3
  - scaling
  - aief2025
aliases: [rl-at-scale, rl-scaling, deepseek-rl, rl-working]
sources:
  - "[[sources/watchv=pbhm2qknu10]]"
summary: "RL applied at scale works now: DeepSeek surprised the field by showing RL at scale produces strong open models with few tweaks. O3 and other frontier models double down on RL as the scaling direction."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/agentic-reasoning|Agentic Reasoning]]"
    type: implements
  - target: "[[concepts/continued-pre-training|Continued Pre-training]]"
    type: related_to
  - target: "[[concepts/ppo-vs-grpo-vs-dpo|PPO vs GRPO vs DPO]]"
    type: uses
  - target: "[[concepts/agent-evaluations|Agent Evaluations]]"
    type: related_to
---

# Reinforcement Learning at Scale

**Reinforcement learning at scale** refers to the application of RL training to large language models using substantial compute and evaluation infrastructure, producing models that significantly outperform their pre-trained counterparts on complex, multi-step tasks. ^[extracted]

## The Breakthrough: DeepSeek

DeepSeek's RL models surprised many in the AI community for several reasons: ^[extracted]

- **Cost-effectiveness** — Achieved strong results at lower cost than expected
- **Open release** — Fully open models that rivaled closed models from the big labs
- **Simplicity** — RL applied at scale worked with surprisingly few tweaks: a good setup, a good signal, and a model good enough to learn from

The result was a clear curve: doing more RL results in the model getting better. This was not theoretical — it was demonstrable, repeatable, and openly available. ^[inferred]

## The Big Labs' Strategy: More RL

OpenAI's approach exemplifies the RL-at-scale strategy: ^[extracted]

- They stopped serving the big pre-trained model (GPT-4.5) via API
- They continued to double down on the scaling direction of doing more and more RL
- More compute is spent on RL inference and training, not just pre-training
- O3 represents the culmination: a model optimized through extensive RL

This is the direction the big labs are banking on to drive the next iterations of progress. ^[extracted]

## Why Complexity Demands RL

The more complex a system becomes, the more things can go wrong. Generic LLM APIs become brittle and "go off the rails" after a certain number of steps in complex interactions. RL is the solution: ^[extracted]

- Take a system that works on small scales
- As it gets harder and starts going off the rails, train the model to be better at that specific thing
- The model learns to handle the complexity through interaction and evaluation

This is a recipe that is still a research topic — people are not fully agreed on the best way to do it, especially outside the big labs. But it is clearly moving in a direction where it becomes more reliable and more accessible. ^[extracted]

## The Feasibility Question

Not everyone can be a big lab. The critical question is where the middle ground lies: ^[extracted]

- At what scale does RL become feasible for startups?
- For individual researchers?
- What infrastructure is needed to meet in the middle?

Teams willing to take the best open models and RL-tune them for their specific tasks — and who figure out how to do that well — will have a huge advantage. This is what allows building a moat beyond being a wrapper API: you actually have your own model now. ^[extracted]

## Relationship to Pre-training

RL at scale complements [[concepts/continued-pre-training|continued pre-training]] — while pre-training teaches the model general knowledge and language patterns, RL teaches it how to interact with environments, use tools, and optimize for specific evaluation signals. Both are necessary for state-of-the-art models. ^[inferred]

## Sources

- AIEF2025 - Training Agentic Reasoners — Will Brown, Prime Intellect - https://www.youtube.com/watch?v=PbHm2qKnu10
