---
title: "Reflection.ai"
category: entities
tags: [company, ai, autonomous-coding, reinforcement-learning, llm, aief2025]
aliases: [reflection ai]
sources:
  - "https://www.youtube.com/watch?v=qludzkvfp6a"
summary: "Company founded by Aakanksha Chowdhery (former Google PALM/Gemini researcher) focused on pushing the frontier for autonomous coding with reinforcement learning."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/aakanksha-chowdhery|Aakanksha Chowdhery]]"
    type: founded_by
  - target: "[[concepts/agentic-coding|Agentic Coding]]"
    type: advances
  - target: "[[concepts/inference-time-compute|Inference-Time Compute]]"
    type: applies
---

# Reflection.ai

**Reflection.ai** is an AI company focused on autonomous coding through reinforcement learning, founded by [[entities/aakanksha-chowdhery|Aakanksha Chowdhery]], former Google researcher who led PALM research and was a lead researcher on Gemini.

## Mission

Pushing the frontier for autonomous coding with reinforcement learning — specifically, enabling models to improve their code generation through reasoning, self-evaluation, and iterative revision at inference time. ^[extracted]

## Approach

Reflection.ai's work builds on the insight that inference-time compute can predictably improve model outputs through:

1. **Majority voting** — generating multiple independent samples and selecting the consensus answer
2. **Sequential revision** — having models review and correct their own previous outputs
3. **Verification** — using unit tests and formal checks to validate code correctness

These techniques are grounded in [[concepts/reinforcement-learning-at-scale|reinforcement learning]] principles applied at inference time rather than training time. ^[inferred]

## Sources

- AIEF2025 - RL for Autonomous Coding — Aakanksha Chowdhery, Reflection.ai - https://www.youtube.com/watch?v=QluDzKVfp6A
