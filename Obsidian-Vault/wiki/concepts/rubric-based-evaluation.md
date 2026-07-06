---
title: "Rubric-Based Evaluation"
category: concepts
tags: [evaluation, rubric, reward-model, llm-as-judge, aief2025]
aliases: [rubric-based evaluation, rubric evaluation, rubric-based-reward]
sources:
  - "https://www.youtube.com/watch?v=-9E9_21tx04"
summary: "Using fine-grained evaluation criteria (rubrics) that are generated on-the-fly for each task, rather than fixed reward functions. Enables RL on ambiguous tasks where traditional evals fail."
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
  - target: "[[concepts/agent-evaluations|Agent Evaluations]]"
    type: extends
  - target: "[[concepts/reward-hacking|Reward Hacking]]"
    type: addresses
---

# Rubric-Based Evaluation

**Rubric-based evaluation** uses fine-grained evaluation criteria (rubrics) that are generated on-the-fly for each task, rather than relying on fixed reward functions. This enables RL on ambiguous tasks where traditional evals fail. ^[extracted]

## The Concept

**Rubric** is a conceptual umbrella term that covers reward models, reward functions, and LLM-as-judge setups — the criteria on which you evaluate something. ^[extracted]

## Recent Research

- **DeepSeek paper** — Training reward models that generate rubrics on-the-fly, creating fine-grained evaluation criteria for each specific problem
- **Creative writing paper** — Very recent work training reward models that produce nuanced, fine-grained evaluation criteria for a task on-the-fly, given the actual problem
- These approaches result in fine-grained scores that allow RL to keep improving on tasks that were previously too ambiguous

## Why It Matters

For ambiguous tasks (creative writing, open-ended problem solving), traditional binary pass/fail evals don't work well. Rubric-based evaluation: ^[extracted]

- Generates evaluation criteria specific to each problem instance
- Provides fine-grained scores instead of binary signals
- Enables RL on tasks that were previously too ambiguous to train
- Reduces reward hacking by making the eval criteria harder to game

## Relationship to Eval Quality

Rubric-based evaluation is part of the broader effort to build better evals — the harder it is to game the eval than to do the task, the better the reward signal. ^[inferred]

## Sources

- AI Engineer World's Fair 2025 — Reasoning + RL Track: https://www.youtube.com/watch?v=-9E9_21tx04
