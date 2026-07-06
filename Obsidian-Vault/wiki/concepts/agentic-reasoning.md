---
title: "Agentic Reasoning"
category: concepts
tags:
  - reasoning
  - agents
  - reinforcement-learning
  - agentic-ai
  - aief2025
aliases: [agentic-reasoning, agentic-reasoners, training-agentic-reasoners]
sources:
  - "https://www.youtube.com/watch?v=pbhm2qknu10"
summary: "The thesis that reasoning models and agentic systems are the same thing: both are interaction loops with evaluations. RL-trained models like O3 and Claude Code are naturally agentic."
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/agent-loop|Agent Loop]]"
    type: related_to
  - target: "[[concepts/reasoning-models|Reasoning Models]]"
    type: related_to
  - target: "[[concepts/reinforcement-learning-at-scale|Reinforcement Learning at Scale]]"
    type: extends
  - target: "[[concepts/agent-evaluations|Agent Evaluations]]"
    type: related_to
---

# Agentic Reasoning

**Agentic reasoning** is the concept that reasoning models and agentic systems are fundamentally the same thing — both are interaction loops with evaluations, and both benefit from the same RL training paradigm. ^[extracted]

## The Core Thesis

Traditionally, the AI community has treated reasoning and agents as separate topics: reasoning as one thing (chain-of-thought, system 2 thinking) and agents as another (tool use, multi-step workflows). The agentic reasoning thesis challenges this separation. ^[extracted]

The key insight: building an agent — with its harness, environment, tools, and iteration — maps directly onto canonical reinforcement learning concepts: policies, actions, states, rewards, and transition probabilities. ^[extracted]

## Evidence: RL-Trained Models Are Naturally Agentic

Models that have been extensively RL-trained exhibit agentic behavior naturally: ^[extracted]

- **Claude Code** — A coding agent that excels because it was RL-trained in essentially the same setting (a while loop with tools)
- **OpenAI O3** — Not just "smarter" but specifically good at using many tools in agentic task settings to solve problems involving complex systems
- **DeepSeek RL models** — Demonstrated that RL at scale produces models that handle multi-step interactions well

These models weren't designed as agents first and reasoning second (or vice versa). They became agentic through RL training in interactive environments. ^[inferred]

## The Interaction Loop Framing

Under the agentic reasoning framing, agents are not just static chains of API calls but **interaction loops with evaluations**. This framing is exactly how RL is conceptualized: ^[extracted]

1. A system interacts with an environment
2. There is a way of evaluating how well it's doing
3. RL is the algorithm to improve based on evaluation scores

When engineers tune prompts, fiddle with harnesses, and iterate based on eval results, they are doing RL by hand. ^[extracted]

## Implications

The agentic reasoning thesis has several implications for how we build AI systems: ^[inferred]

- **RL is the path to powerful agents** — If reasoning and agents are the same, then the RL techniques that improved reasoning models (DeepSeek, O3) are the same techniques that will improve agents
- **Custom models beat API wrappers** — Teams that RL-tune open models for their specific tasks build a moat that generic API wrappers cannot match
- **The harness matters** — The quality of the interaction loop (environment design, tool selection, evaluation signal) determines what the model can learn

## Relationship to Other Concepts

Agentic reasoning extends [[concepts/reasoning-models|reasoning models]] by showing that the same RL mechanisms that improve reasoning also produce agentic behavior. It connects to [[concepts/agent-loop|agent loops]] through the shared framing of interaction-with-evaluation, and to [[concepts/reinforcement-learning-at-scale|RL at scale]] as the training paradigm that makes it all work. ^[inferred]

## Sources

- AIEF2025 - Training Agentic Reasoners — Will Brown, Prime Intellect - https://www.youtube.com/watch?v=PbHm2qKnu10
