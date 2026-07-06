---
title: "AIEF2025 - RL for Autonomous Coding — Aakanksha Chowdhery, Reflection.ai"
category: references
tags: [aief2025, autonomous-coding, reinforcement-learning, scaling-laws, chain-of-thought, inference-time-compute, majority-voting, sequential-revision]
aliases: [RL for Autonomous Coding, Aakanksha Chowdhery AIEF2025]
sources:
  - "https://www.youtube.com/watch?v=qludzkvfp6a"
summary: "Aakanksha Chowdhery traces the arc of LLM progress from scaling laws through chain-of-thought emergence, RLHF, and into inference-time compute scaling via majority voting and sequential revision."
provenance:
  extracted: 0.90
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/aakanksha-chowdhery|Aakanksha Chowdhery]]"
    type: created_by
  - target: "[[entities/reflection-ai|Reflection.ai]]"
    type: represents
---

# AIEF2025 - RL for Autonomous Coding — Aakanksha Chowdhery, Reflection.ai

## TL;DR

Aakanksha Chowdhery ([[entities/reflection-ai|Reflection.ai]], former Google PALM/Gemini researcher) traces the evolution of large language models from the 2020 scaling laws breakthrough through chain-of-thought emergence, instruction following, RLHF, and into the current paradigm of inference-time compute scaling — where models improve outputs through majority voting and sequential revision rather than just bigger pre-training.

## Problem / Motivation

Pre-training LLMs costs tens of millions of dollars. Inference is extremely cheap. As pre-training performance gains saturate, the question becomes: can we get performance gains at inference time? ^[extracted]

The key economic insight: if inference calls are cheap, then spending additional compute per inference call (generating multiple samples, revising outputs) is economically viable and can predictably improve results. ^[extracted]

## Method / Architecture

### The Arc of LLM Progress

1. **Scaling Laws (2020)** — Power law relationship between test loss and compute/data/parameters. Bigger models generalize across domains, not just the training domain. ^[extracted]

2. **Emergent Capabilities** — Capabilities appear at scale that don't exist in smaller models. Chain-of-thought reasoning emerged in PALM (540B parameters) — asking models to output reasoning chains before answering dramatically improved math word problem solve rates. ^[extracted]

3. **Instruction Following** — Once models could reason, they could follow instructions. This enabled chatbot applications. ^[extracted]

4. **RLHF** — Reinforcement learning from human feedback taught models to prefer better responses. This technique also works in code, producing performance improvements. ^[extracted]

5. **Inference-Time Compute Scaling** — Two main approaches:
   - **Majority voting / self-consistency**: Generate multiple independent responses, select the consensus
   - **Sequential revision**: Models review and correct their own previous outputs, improving iteratively ^[extracted]

### Evidence

- PALM results showed solve rate on middle school math word problems increasing with parameter count, mainly when prompting for chain-of-thought
- Stanford paper (publicly published) showed that pass@k (coverage score) improves predictably with more samples on SWE-bench verified, using open-source DeepSeek models ^[extracted]
- By end of 2024, SWE-bench verified scores were roughly 80% ^[extracted]

## Key Equations

The scaling law relationship (2020 paper): ^[extracted]

$$\text{Test Loss} \propto (\text{Compute})^{-\alpha}$$

Where $\alpha$ is a positive exponent — more compute, more data, more parameters → lower test loss, following a power law.

The majority voting principle: ^[extracted]

$$\text{Consensus} = \text{mode}(\{r_1, r_2, ..., r_n\})$$

Where $r_i$ are independently generated responses; if $k$ out of $n$ agree, that's the consensus answer.

## Results

| Technique | Mechanism | Evidence |
|-----------|-----------|----------|
| Scaling laws | Power law: more compute → better performance | 2020 paper, PALM results |
| Chain-of-thought | Model outputs reasoning before answering | PALM (540B params), solve rate improvement |
| RLHF | Human feedback trains preference | Chatbot quality, code performance gains |
| Majority voting | Multiple samples, consensus selection | Theoretical gains, demonstrated on math problems |
| Sequential revision | Model revises own previous output | Stanford paper, SWE-bench verified improvements |
| Pass@k | Coverage score increases with samples | DeepSeek on SWE-bench verified |

## Limitations

- The transcript was cut short before completing the discussion of sequential revision results
- PALM parameter counts (540B) are from three years ago; current model sizes are not publicly disclosed ^[extracted]
- The economics of inference-time scaling depend on the ratio of training cost to inference cost, which varies by use case ^[inferred]

## Related

- [[concepts/compute-scaling-laws|Compute Scaling Laws]] — The 2020 power law relationship
- [[concepts/reasoning-models|Reasoning Models]] — Chain-of-thought emergence
- [[concepts/inference-time-compute|Inference-Time Compute]] — Scaling at inference
- [[concepts/majority-voting-self-consistency|Majority Voting / Self-Consistency]] — Multiple sample consensus
- [[concepts/sequential-revision|Sequential Revision]] — Iterative self-correction
- [[concepts/agentic-coding|Agentic Coding]] — Autonomous coding applications
- [[concepts/rl-training-moat|RL Training Moat]] — Competitive advantage of RL-tuned models

## Sources

- Video: https://www.youtube.com/watch?v=QluDzKVfp6A
- Speaker: Aakanksha Chowdhery, Reflection.ai (formerly Google)
