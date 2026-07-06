---
title: Inference-Time Compute Scaling
category: concepts
tags:
- inference-time-compute
- scaling
- llm
- cost-optimization
- autonomous-coding
- aief2025
aliases:
- inference scaling
- inference-time compute
- compute-at-inference
sources:
- 'https://www.youtube.com/watch?v=qludzkvfp6a'
summary: The paradigm of improving LLM outputs by spending additional compute per inference call — generating multiple samples, performing majority voting, and sequential revision — rather than scaling pre-...
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/compute-scaling-laws|Compute Scaling Laws]]'
  type: contrasts_with
- target: '[[concepts/majority-voting-self-consistency|Majority Voting / Self-Consistency]]'
  type: implements
- target: '[[concepts/sequential-revision|Sequential Revision]]'
  type: implements
- target: '[[concepts/agentic-coding|Agentic Coding]]'
  type: enables
---

# Inference-Time Compute Scaling

**Inference-time compute scaling** is the paradigm of improving LLM outputs by spending additional compute during inference rather than during pre-training. It exploits the economic asymmetry where pre-training costs tens of millions of dollars but inference is extremely cheap. ^[extracted]

## The Economic Insight

As LLM pre-training performance gains saturate, the question becomes: can we get performance gains at inference time? The answer is yes, because inference calls are cheap enough that spending additional compute per call is economically viable. ^[extracted]

The key principle: if you can spend a small amount of extra compute per inference and get a predictable accuracy improvement, that's a winning strategy — especially when the alternative is spending millions on additional pre-training with uncertain returns. ^[extracted]

## Two Main Approaches

### 1. Multiple Sampling + Majority Voting

Generate multiple independent responses to the same prompt, then select the consensus answer. If two out of three samples agree, that's majority voting. The more samples you generate, the higher the accuracy — demonstrated on math problems and coding tasks. ^[extracted]

### 2. Sequential Revision

Have the model review and correct its own previous output, iteratively improving. This mirrors how humans write, evaluate, and fix their own work. Models that can look at previous revisions and improve consistently show clear gains. ^[extracted]

## Evidence

- Stanford research (publicly published) showed that pass@k (coverage score) on SWE-bench verified improves predictably with more samples using open-source DeepSeek models ^[extracted]
- By end of 2024, SWE-bench verified scores were roughly 80% and climbing with more inference-time compute ^[extracted]
- The key takeaway: inference-time compute predictably improves model outputs ^[extracted]

## Relationship to Training-Time Scaling

Inference-time scaling is complementary to, not a replacement for, pre-training scaling. The 2020 scaling laws paper showed a power law relationship between compute and test loss — more training compute still matters. But as that curve flattens, inference-time techniques provide a new lever for improvement. ^[inferred]

## Applications

- **Autonomous coding** — Models generate, review, and fix code iteratively
- **Math reasoning** — Multiple samples + verification improves solve rates
- **Complex problem solving** — Sequential revision handles multi-step tasks

## Sources

- AIEF2025 - RL for Autonomous Coding — Aakanksha Chowdhery, Reflection.ai - https://www.youtube.com/watch?v=QluDzKVfp6A
