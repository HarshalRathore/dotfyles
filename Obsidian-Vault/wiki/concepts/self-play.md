---
title: Self-Play
category: concepts
tags: [reinforcement-learning, training, multi-agent, self-improvement, game-theory]
aliases: [self play, self-play training, self-play reinforcement learning]
relationships:
  - target: '[[concepts/auto-research-loop]]'
    type: related_to
  - target: '[[concepts/reward-hacking]]'
    type: relates_to
  - target: '[[concepts/JEPA]]'
    type: related_to
sources:
  - https://www.youtube.com/watch?v=4sX_He5c4sI
summary: Self-play as the path to next-level models — agents training against themselves or each other to discover strategies and improve beyond human-designed benchmarks.
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: 2026-07-06
tier: supporting
created: 2026-07-06T00:00:00Z
updated: 2026-07-06T00:00:00Z
---

# Self-Play

**Self-play** is the approach of training models by having them play against themselves or each other, rather than against human-designed benchmarks. It is described as "the path to next-level models." ^[extracted]

Presented at the AI Engineer World's Fair 2026. ^[extracted]

## The Concept

Instead of evaluating models against static benchmarks, self-play creates a dynamic training environment where:

- Agents compete against each other
- The difficulty adapts as agents improve
- Novel strategies emerge that human designers wouldn't anticipate

## Self-Play for Code

Benoit Schillings (VP Research, Google DeepMind) presented self-play as the key to transcending the limits of human-coded training data. He noted that 80% of new code on GitHub is now machine-generated, meaning the pool of human-written training data is effectively exhausted. Self-play offers a way forward: frontier models can now create their own challenges, judge the validity of their answers, and even judge the architecture quality. ^[extracted]

> We are now at that stage where frontier models for code are able to do the same [as AlphaZero]. Where they can create their own challenge. They can judge the validity of the answer. They can even, to some extent, judge the architecture.

Schillings drew a vivid analogy: "Take a brilliant software engineer. Lock him in a room for two years. And feed pizza. And give the mission: you need to become a better software engineer. What do you do? You give yourself some challenges. Challenges that you can verify. And you keep working and coding on those challenges. We can do the same here." ^[extracted]

Self-play in code generation mirrors the AlphaZero breakthrough — achieving superhuman performance without any human knowledge, purely through self-generated training signals. The limiting factor is compute: how many self-play hours can the system sustain. ^[extracted]

## Relationship to Reward Hacking

Self-play is vulnerable to the same reward hacking problems as auto-research. Agents may find strategies that maximize their win rate without genuinely improving — for example, exploiting weaknesses in a specific opponent rather than developing general capability. ^[inferred]

## Related

- [[concepts/auto-research-loop|Auto-Research Loop]] — related self-improvement approach
- [[concepts/reward-hacking|Reward Hacking]] — the key risk in self-play training
- [[concepts/JEPA|JEPA]] — related self-supervised learning approach
- [[concepts/reinforcement-learning|Reinforcement Learning]] — the training paradigm self-play belongs to

## Sources

- AI Engineer World's Fair 2026: https://www.youtube.com/watch?v=4sX_He5c4sI
