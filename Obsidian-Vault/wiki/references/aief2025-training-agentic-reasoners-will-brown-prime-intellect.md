---
title: "AIEF2025 - Training Agentic Reasoners — Will Brown, Prime Intellect"
category: references
tags:
  - aief2025
  - reinforcement-learning
  - reasoning
  - agents
  - deepseek
  - openai
  - o3
  - grpo
  - ppo
  - dpo
  - speaker
aliases: [aief2025-training-agentic-reasoners, training-agentic-reasoners, will-brown-aief2025]
sources:
  - "[[sources/watchv=pbhm2qknu10]]"
summary: "Will Brown (Prime Intellect) at AIEF2025 argues that reasoning and agents are the same thing, both are interaction loops with evaluations. Covers RL at scale, PPO/GRPO/DPO comparison, and the custom model moat thesis."
provenance:
  extracted: 0.95
  inferred: 0.03
  ambiguous: 0.02
base_confidence: 0.90
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[entities/will-brown|Will Brown]]"
    type: related_to
  - target: "[[entities/prime-intellect|Prime Intellect]]"
    type: related_to
---

# Training Agentic Reasoners — Will Brown, Prime Intellect

**Speaker:** Will Brown, Prime Intellect
**Event:** AI Engineer World's Fair 2025
**Video:** https://www.youtube.com/watch?v=PbHm2qKnu10

## TL;DR

Will Brown argues that the conversations between reasoning models and agents are often treated as separate topics, but they are fundamentally the same thing: both are interaction loops with evaluations. RL applied at scale works now (DeepSeek, O3), and the RL algorithms that improve reasoning also produce agentic behavior. Teams that RL-tune open models for their specific tasks will build a moat beyond API wrappers.

## Problem / Motivation

The AI community has been having parallel conversations about reasoning and agents as if they were different problems. Reasoning is treated as one topic (chain-of-thought, system 2, thinking models) and agents as another (tool use, multi-step workflows, harnesses). Brown's thesis is that this separation is artificial — the considerations of reasoning are the same as the considerations of building agents. ^[extracted]

The motivation: as systems get more complex, generic LLM APIs become brittle and go off-rails after a certain number of steps. The solution is RL — training models to handle the specific complexity of your system. But RL training infrastructure (like Veral) is complex and designed for big labs. The question is how to make it feasible for startups and individual researchers. ^[extracted]

## Method / Architecture

### RL Training Pipeline

The canonical RL pipeline (as implemented in tools like Veral) involves: ^[extracted]

1. **Tasks** — Versions of your problem, essentially prompts
2. **Rollouts** — Completions, potentially involving many steps of interaction, one sequence
3. **Evaluation** — Potentially interleaved throughout or at the end of the sequence
4. **Advantage estimation** — Estimating which parts of the rollout contributed to better/worse outcomes
5. **Policy update** — Using the advantage signal to improve the model

### Algorithm Families

Three families of RL algorithms for training language models: ^[extracted]

- **PPO** (Proximal Policy Optimization): Expensive but provides fine-grained advantage estimation through explicit forking
- **GRPO** (Group Relative Policy Optimization): Simple to implement, computationally efficient, forking comes from sampling. Presented in DeepSeek math paper (early 2024)
- **DPO** (Direct Preference Optimization): Simpler than PPO but lacks fine-grained advantage estimation — from a full good/bad completion, it is unclear where the signal lives in complex branching processes

### The Forking Process

Since LLMs are non-deterministic (temperature > 0), the same prompt produces different outputs. The forking process identifies which token or decision point caused the divergence between good and bad outcomes. This is the mechanism by which the model learns to do more of the good stuff without changing too much overall. ^[extracted]

## Key Equations / Concepts

No formal mathematical equations were presented in the talk. The key conceptual framework is: ^[extracted]

```
Agent = Policy + Environment + Tools + Evaluation + Iteration
      = Canonical RL (policies, actions, states, rewards, transitions)
```

The insight is that building an agent maps directly onto canonical RL concepts. When you tune prompts and fiddle with harnesses based on eval results, you are doing RL by hand. ^[extracted]

## Results / Evidence

### DeepSeek RL Models
- Surprised the field by demonstrating RL at scale works with surprisingly few tweaks
- Open models that rivaled closed models from big labs
- Clear curve: more RL → better model ^[extracted]

### OpenAI O3
- OpenAI stopped serving the big pre-trained model (GPT-4.5) via API
- Continued to double down on RL as the scaling direction
- O3 is a naturally agentic model — its selling point is not just intelligence but tool use in agentic task settings ^[extracted]

### Claude Code
- A coding agent that excels because it was RL-trained in essentially the same setting (a while loop with tools)
- Not surprising that it works well at coding — it was trained in almost that exact setting ^[extracted]

## Limitations

- RL training infrastructure remains complex (Veral architecture has many pieces and complicated steps)
- Not clear at what scale RL becomes feasible for non-big-lab teams
- The "best way" to do RL outside big labs is still an open research topic
- GRPO, while popular, is less mature than PPO in terms of ecosystem and production deployments ^[extracted]

## Related Pages

- [[concepts/agentic-reasoning|Agentic Reasoning]] — The core thesis that reasoning and agents are the same
- [[concepts/reinforcement-learning-at-scale|Reinforcement Learning at Scale]] — DeepSeek, O3, and the RL scaling strategy
- [[concepts/ppo-vs-grpo-vs-dpo|PPO vs GRPO vs DPO]] — Algorithm comparison
- [[concepts/advantage-estimation|Advantage Estimation]] — The forking process and learning signal
- [[concepts/rl-training-moat|RL Training Moat]] — Competitive advantage from custom RL-tuned models
- [[entities/will-brown|Will Brown]] — Speaker
- [[entities/prime-intellect|Prime Intellect]] — Company

## Sources

- AIEF2025 - Training Agentic Reasoners — Will Brown, Prime Intellect - https://www.youtube.com/watch?v=PbHm2qKnu10
