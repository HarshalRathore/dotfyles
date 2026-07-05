---
title: "PPO vs GRPO vs DPO"
category: concepts
tags:
  - reinforcement-learning
  - ppo
  - grpo
  - dpo
  - preference-optimization
  - aief2025
aliases: [ppo, grpo, dpo, rl-algorithms, rl-algorithm-comparison]
sources:
  - "[[sources/watchv=pbhm2qknu10]]"
summary: "Comparison of three RL algorithm families: PPO (expensive, fine-grained advantage), GRPO (efficient middle ground with forking from sampling), and DPO (lacks fine-grained advantage estimation)."
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/advantage-estimation|Advantage Estimation]]"
    type: implements
  - target: "[[concepts/reinforcement-learning-at-scale|Reinforcement Learning at Scale]]"
    type: uses
  - target: "[[concepts/agentic-reasoning|Agentic Reasoning]]"
    type: related_to
---

# PPO vs GRPO vs DPO

Three families of reinforcement learning algorithms used to train language models, each with different tradeoffs in computational cost, implementation complexity, and the granularity of learning signal they provide. ^[extracted]

## The Common Goal: Advantage Estimation

All three algorithms aim to answer the same fundamental question: given that sometimes a model's output is better than other times, **what specifically changed that resulted in the better outcome?** ^[extracted]

Since LLMs are non-deterministic (temperature above zero, different dice rolls each time), the same prompt can produce different completions. The forking process — where one path leads to a better result and another to a worse one — is where the learning signal lives. The algorithm must identify which token or decision point caused the divergence. ^[extracted]

## PPO (Proximal Policy Optimization)

PPO provides fine-grained advantage estimation through its architecture. ^[extracted]

**Strengths:**
- Can identify precisely where in a complex branching process the model went down the good path versus the bad path
- Surgical learning: teaches the model to do more of the good stuff without changing too much overall
- Handles multi-step interactions with interleaved evaluation

**Weaknesses:**
- Very expensive computationally
- Complex to implement and tune
- Requires a critic model in addition to the policy

PPO has the mechanism to get fine-grained signal from complex branching processes, but the cost is significant. ^[extracted]

## GRPO (Group Relative Policy Optimization)

GRPO, presented in the DeepSeek math paper (early 2024), took many people by storm as a practical middle ground. ^[extracted]

**Strengths:**
- More computationally efficient than PPO
- Simple to implement
- The forking process comes naturally from sampling (group-based comparison)
- Does have fine-grained advantage estimation through the group sampling mechanism

**Weaknesses:**
- Less mature than PPO in terms of ecosystem and tooling
- Fewer production deployments compared to PPO

GRPO achieved the best balance of signal quality and computational efficiency, which explains its rapid adoption. ^[extracted]

## DPO (Direct Preference Optimization)

DPO was hoped by many to work well as a simpler alternative to RL algorithms. ^[extracted]

**Strengths:**
- Simpler than PPO — no need for a critic model
- Directly optimizes on preference pairs

**Weaknesses:**
- Does not have fine-grained advantage estimation
- From a full good completion and a full bad completion, it is not clear where the signal lives in complex branching processes
- Cannot surgically identify which decision points in a multi-step interaction caused the difference

DPO's fundamental limitation is that it lacks the mechanism for fine-grained advantage estimation that PPO and GRPO provide. In complex, multi-step agentic tasks where the difference between success and failure comes from specific decision points, DPO's coarse signal is insufficient. ^[inferred]

## Comparison Table

| Property | PPO | GRPO | DPO |
|----------|-----|------|-----|
| Computational cost | High | Medium | Low |
| Implementation complexity | High | Low | Low |
| Fine-grained advantage | Yes | Yes (via sampling) | No |
| Forking process | Explicit | Implicit (group sampling) | None |
| Production maturity | High | Growing | High |
| Best for | Complex multi-step | Balanced | Simple preference |

## Relationship to Agentic Reasoning

The choice of algorithm matters for agentic reasoning because agents involve complex branching processes. DPO's lack of fine-grained advantage estimation makes it less suitable for training agents that need to learn which specific tool calls or decision points led to success. PPO and GRPO, with their forking mechanisms, can identify and reinforce the good paths through complex interaction sequences. ^[inferred]

## Sources

- AIEF2025 - Training Agentic Reasoners — Will Brown, Prime Intellect - https://www.youtube.com/watch?v=PbHm2qKnu10
