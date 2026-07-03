---
title: "Thinking Deeper in Gemini — Jack Rae, Google DeepMind"
tags:
  - reference
  - talk
  - ai-engineer
  - reasoning
  - google
sources:
  - "AIEF2025 - Thinking Deeper in Gemini — Jack Rae, Google DeepMind - https://www.youtube.com/watch?v=8EQo4J2BWKw"
summary: "Jack Rae, tech lead of thinking at Google DeepMind, presents the research behind Gemini's thinking capabilities — intelligence bottlenecks, test-time compute scaling, RL training for reasoning, thinking budgets, and Deep Think."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.50
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Thinking Deeper in Gemini — Jack Rae, Google DeepMind

> **Event:** AI Engineer World's Fair 2025
> **Speaker:** [[entities/jack-rae|Jack Rae]], Technical Lead of Thinking, Google DeepMind
> **Source:** [YouTube](https://www.youtube.com/watch?v=8EQo4J2BWKw)

## Overview

Jack Rae presents the research behind thinking (reasoning) capabilities in Gemini, delivered in three parts: the research motivation (intelligence bottlenecks), the mechanics of thinking in Gemini, and what is next for thinking capabilities including Deep Think. ^[extracted]

## Key Concepts

### Intelligence Bottlenecks

Progress in AI is marked by identifying and solving key bottlenecks toward intelligence. Rae traces this through AI history: ^[extracted]

- **1948 — Claude Shannon:** built a 2-gram language model, wanted to scale up but needed digitization of human knowledge and modern computing
- **2000s — Google n-grams:** trained over trillions of tokens, but exponential storage cost with context length created a ceiling
- **2010 — RNN language models:** compressed past into fixed-size state, enabling paragraph-level modeling — but this state was lossy
- **2014 — Attention / Transformers:** keep all past embeddings and aggregate on the fly — the birth of the modern deep learning revolution
- **2024+ — Fixed test-time compute:** the current bottleneck — models apply constant compute at inference regardless of problem difficulty

### The Thinking Mechanism

Thinking inserts a **thinking stage** between request and response where the model emits additional reasoning tokens. This creates an iterative loop that can run for thousands or tens of thousands of iterations, providing proportionally more compute before the model commits to a final answer. Because it is a loop, the compute is **dynamic** — the model learns how many iterations to apply for each specific problem. ^[extracted]

### RL Training for Thinking

Thinking behavior is trained via **reinforcement learning** after pre-training. The model practices many tasks and receives positive or negative rewards based on correctness. Remarkably, this very general recipe is sufficient — the researchers were not sure it would work or how much structure the reasoning stage needed. ^[extracted]

### Emergent Behaviors

Through RL, the model spontaneously develops sophisticated strategies: ^[extracted]

- Posing a hypothesis and testing it, then rejecting it when the formula does not hold
- Trying alternative approaches after self-rejection
- Breaking problems into components
- Exploring multiple solutions
- Drafting code fragments and building them up modularly
- Performing intermediate calculations and using tools

### Test-Time Compute Scaling

There is a log-linear relationship between test-time compute and reasoning performance. Across the Gemini lineage (2.0 Flash Experimental through 2.5 Pro), improved reasoning tracks with increased test-time compute on math, code, and science benchmarks. ^[extracted]

### Thinking Budgets

Before thinking: discrete model size choices for quality/cost. With thinking: a **continuous budget** — a granular slider for capability vs. cost. Thinking budgets launched in Gemini 2.5 Flash and Pro. ^[extracted]

Test-time compute scaling stacks on top of pre-training scaling (data, model size) and post-training scaling (human feedback diversity) — producing a **multiplicative effect** on model improvement. ^[extracted]

### Deep Think

Deep Think is a very high budget thinking mode built on 2.5 Pro, designed for hard problems where users fire off a query asynchronously and return later for a stronger solution. ^[extracted]

Key characteristics:
- **Parallel chains of thought** that integrate with each other
- Performance on USA Math Olympiad: 50th percentile (2.5 Pro) → 65th percentile (2.5 Pro + Deep Think)
- Deep Think improvements compound with base model improvements

**Example:** In an algebra problem, the model starts with a proof-by-contradiction idea, then explores two different aspects (Rolle's theorem, Newton's inequalities), integrates them, and produces a correct proof.

### Vibe Coding DQN

A researcher vibecoded the [[entities/google-deepmind|DeepMind]] DQN paper — the training setup, algorithm, and even an Atari emulator — such that it could play games. This previously months-long task was accomplished in minutes with Gemini. ^[extracted]

## Pages Created from This Source

- [[concepts/test-time-compute-scaling|Test-Time Compute Scaling]]
- [[concepts/intelligence-bottlenecks|Intelligence Bottlenecks]]
- [[concepts/thinking-budgets|Thinking Budets]]
- [[entities/jack-rae|Jack Rae]]
- [[entities/google-deepmind|Google DeepMind]]

## Sources

- [YouTube: Thinking Deeper in Gemini — Jack Rae, Google DeepMind](https://www.youtube.com/watch?v=8EQo4J2BWKw)
