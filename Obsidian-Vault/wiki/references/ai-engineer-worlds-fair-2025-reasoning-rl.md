---
title: "AI Engineer World's Fair 2025 - Reasoning + RL"
category: references
tags: [transcript, aief2025, reasoning, reinforcement-learning, agents, arc-agi, open-source]
aliases: [aief2025-reasoning-rl, ai-engineer-worlds-fair-2025-reasoning-rl]
sources:
  - "https://www.youtube.com/watch?v=-9E9_21tx04"
summary: "AI Engineer World's Fair 2025 track on reasoning and reinforcement learning. Speakers: Kyle Corbett (OpenPipe), Greg Kamradt (ARC Prize Foundation), Akansha Chowdhury (Reflection AI), Ryan Martin (Bespoke Labs), Chris Segity (ex-xAI). Topics: RL for agent reliability, ARC-AGI benchmarks, OpenThoughts 3, Verifiers toolkit, reward hacking, calibration, planning, rubric-based evals, verified superintelligence."
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
base_confidence: 0.95
lifecycle: active
tier: primary
created: 2026-07-06
updated: 2026-07-06
relationships:
  - target: "[[entities/kyle-corbett|Kyle Corbett]]"
    type: speaker
  - target: "[[entities/greg-kamradt|Greg Kamradt]]"
    type: speaker
  - target: "[[entities/akansha-chowdhury|Akansha Chowdhury]]"
    type: speaker
  - target: "[[entities/ryan-martin|Ryan Martin]]"
    type: speaker
  - target: "[[entities/chris-segity|Chris Segity]]"
    type: speaker
  - target: "[[entities/openpipe|OpenPipe]]"
    type: referenced
  - target: "[[entities/ark-prize-foundation|ARC Prize Foundation]]"
    type: referenced
  - target: "[[entities/bespoke-labs|Bespoke Labs]]"
    type: referenced
  - target: "[[entities/reflection-ai|Reflection AI]]"
    type: referenced
  - target: "[[concepts/reinforcement-learning|Reinforcement Learning]]"
    type: covers
  - target: "[[concepts/verifiers-toolkit|Verifiers Toolkit]]"
    type: covers
  - target: "[[concepts/reward-hacking|Reward Hacking]]"
    type: covers
  - target: "[[concepts/multi-turn-rl|Multi-Turn RL]]"
    type: covers
  - target: "[[concepts/calibration|Calibration in Reasoning Models]]"
    type: covers
  - target: "[[concepts/planning-in-llms|Planning in Reasoning Models]]"
    type: covers
  - target: "[[concepts/rubric-based-evaluation|Rubric-Based Evaluation]]"
    type: covers
  - target: "[[concepts/verified-super-intelligence|Verified Superintelligence]]"
    type: covers
  - target: "[[concepts/interactive-reasoning|Interactive Reasoning Benchmarks]]"
    type: covers
  - target: "[[concepts/sft|SFT]]"
    type: covers
  - target: "[[concepts/distillation|Distillation]]"
    type: covers
  - target: "[[concepts/open-thoughts-3|OpenThoughts 3]]"
    type: covers
  - target: "[[concepts/advantage-estimation|Advantage Estimation]]"
    type: covers
  - target: "[[concepts/chain-of-thought|Chain-of-Thought]]"
    type: covers
  - target: "[[concepts/skill-acquisition-efficiency|Skill Acquisition Efficiency]]"
    type: covers
  - target: "[[concepts/agent-evaluations|Agent Evaluations]]"
    type: covers
---

# AI Engineer World's Fair 2025 - Reasoning + RL

**Date:** 2025
**URL:** https://www.youtube.com/watch?v=-9E9_21tx04

## Speakers

- [[entities/kyle-corbett|Kyle Corbett]] — Co-founder, [[entities/openpipe|OpenPipe]]
- [[entities/greg-kamradt|Greg Kamradt]] — President, [[entities/ark-prize-foundation|ARC Prize Foundation]]
- [[entities/akansha-chowdhury|Akansha Chowdhury]] — First author, PALM paper; now at [[entities/reflection-ai|Reflection AI]]
- [[entities/ryan-martin|Ryan Martin]] — Founding engineer, [[entities/bespoke-labs|Bespoke Labs]]
- [[entities/chris-segity|Chris Segity]] — Former researcher at Google, co-founder of [[entities/xai|xAI]], now working on verified superintelligence

## Topics Covered

### Reinforcement Learning for Agent Reliability (Kyle Corbett, OpenPipe)
- RL to make AI agents more reliable for production deployment
- Fortune 500 companies deploying agents
- [[concepts/verifiers-toolkit|Verifiers]] toolkit — open-source RL agent training, now on pip
- [[concepts/reward-hacking|Reward hacking]] examples: NYT Connections bug, HN title generator hack
- DPO vs PPO vs GRPO comparison
- [[concepts/multi-turn-rl|Multi-turn RL]] — the direction toward agentic systems
- [[concepts/rubric-based-evaluation|Rubric-based evaluation]] — on-the-fly criteria for ambiguous tasks

### ARC-AGI Benchmarks (Greg Kamradt, ARC Prize Foundation)
- [[concepts/skill-acquisition-efficiency|Skill acquisition efficiency]] — Chollet's definition of intelligence
- ARC-AGI v1: Single-turn grid transformation tasks
- ARC-AGI v2: 1,000+ tasks, first-party human data from 400+ people
- [[concepts/interactive-reasoning|Interactive reasoning benchmarks]] — ARC-AGI-3 preview: ~120 novel games, exploration-based
- Core knowledge priors: basic math, geometry, agentness, objectness
- Invitation: philanthropic donors, adversarial testers, game developers

### OpenThoughts 3 (Ryan Martin, Bespoke Labs)
- [[concepts/open-thoughts-3|OpenThoughts 3]] — state-of-the-art open reasoning dataset
- 1,000 experiments, 5,000+ datasets, 3,000 models
- Outperforms DeepSeek R1 1.7B and Nemotron-Nano
- [[concepts/sft|SFT]] vs RL: R1 is ultimately an SFT model; SFT is easier and effective
- [[concepts/distillation|Distillation]]: Qwen 32B was a better teacher than R1; distillation can surpass the teacher
- Synthetic data generation with Curator library
- Evalchemy evaluation library

### Planning in Reasoning Models (Nathan Lambert, AI2)
- [[concepts/calibration|Calibration]] — models overthink; need to calibrate output tokens
- [[concepts/planning-in-llms|Planning]] — next frontier: strategy, abstraction, parallel compute
- Skills vs planning distinction
- o1 was ~1% of compute post-training; o3 increased 10×
- DeepSeek v3 used 0.18% post-training; R1 training took weeks

### Verified Superintelligence (Chris Segity, ex-xAI)
- [[concepts/verified-super-intelligence|Verified superintelligence]] — AI systems that produce safe, independently verifiable artifacts
- First-class verification (formal proofs) + first-class alignment (model-based)
- Self-supervised RL: generator + validator agents
- Morph Cloud infrastructure for branching sandboxes
- Timeline: within 5 years, AI cyber attacks will require formally verified software
