---
title: Prompt-to-Reward Function
category: concepts
tags: [ai, reinforcement-learning, llm, robotics, simulation, foundation-models]
aliases: [LLM-generated reward functions, natural language to reward, RL from prompts]
relationships:
  - target: "[[concepts/llm-as-computation-engine]]"
    type: extends
  - target: "[[concepts/agentic-architecture]]"
    type: related_to
sources:
  - "[[sources/watchv=1zlo9yu2ziu]]"
summary: "Using foundation models (O3, Opus, Gemini) to generate reinforcement learning reward functions from natural language descriptions, democratizing RL by removing the need for specialist math and coding."
provenance:
  extracted: 0.65
  inferred: 0.30
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Prompt-to-Reward Function

A technique where large language models generate reinforcement learning reward functions from natural language prompts. Instead of a domain expert hand-coding reward equations (joint angles, kinematics, height penalties, orientation vectors), an LLM produces the code from a simple description like "sit and stick your paw out."

## Concept

Reinforcement learning requires a reward function that defines the goal state — a mathematical specification that is typically written by specialists. Prompt-to-reward function replaces this step with LLM generation:

1. A user describes the desired behavior in natural language ("make the robot dog sit and stick out its paw"). ^[extracted]
2. Multiple foundation models (O3, Opus, Gemini) each generate a reward function independently. ^[extracted]
3. The generated functions handle complex mathematical properties — joint angles, height offsets, orientation quaternions, velocity penalties, stability rewards. ^[extracted]
4. Training runs are launched in sandboxed environments with each reward function, producing competing policies. ^[extracted]
5. The best-performing policies are selected based on actual training outcomes. ^[inferred]

## Significance

- **Democratizes RL** — removes the mathematical barrier to entry for robotics and simulation work. ^[inferred]
- **Multi-model voting** — by generating multiple reward functions from different foundation models, the approach naturally implements an ensemble strategy. ^[inferred]
- **Composability** — a complex behavior can be described in natural language far more intuitively than as a weighted sum of mathematical terms. ^[inferred]

## Relationship to Existing Concepts

- Extends [[concepts/llm-as-computation-engine|LLM as Computation Engine]] — the LLM is performing a computation (mathematical code generation) that traditional code cannot easily produce.
- Related to [[concepts/multi-model-voting|multi-model voting]] — using multiple models to generate independent solutions and picking the best.

## Open Questions

- How reliable are generated reward functions for safety-critical applications where reward hacking could produce dangerous policies?
- Can the generated functions be formally verified, or is empirical testing the only option?
- What is the ceiling on task complexity that prompt-to-reward can handle?

## Sources

- [[references/ai-eng-worlds-fair-2025-hackathon-presentations|AI Engineer World's Fair 2025 Hackathon Presentations]] — Tab RL team presentation
