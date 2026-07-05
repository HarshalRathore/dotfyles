---
title: "Majority Voting / Self-Consistency"
category: concepts
tags: [majority-voting, self-consistency, llm, inference-time-compute, sampling, aief2025]
aliases: [majority voting, self-consistency, multiple sampling, consensus voting]
sources:
  - "[[sources/watchv=qludzkvfp6a]]"
summary: "Generating multiple independent responses from an LLM and selecting the consensus answer. A form of inference-time compute scaling that predictably improves accuracy."
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
  - target: "[[concepts/inference-time-compute|Inference-Time Compute Scaling]]"
    type: implements
  - target: "[[concepts/sequential-revision|Sequential Revision]]"
    type: related_to
  - target: "[[concepts/reasoning-models|Reasoning Models]]"
    type: applied_to
---

# Majority Voting / Self-Consistency

**Majority voting** (also called **self-consistency**) is an inference-time technique where an LLM generates multiple independent responses to the same prompt, and the consensus answer is selected. ^[extracted]

## How It Works

Given a prompt, the model generates $n$ independent responses $\{r_1, r_2, ..., r_n\}$. The consensus is the mode — the answer that appears most frequently. If two out of three samples agree, that's majority voting. ^[extracted]

Aakanksha Chowdhery illustrated this with a room analogy: if you ask a question and everyone says yes, that's majority vote. Similarly, if multiple independent samples from the model agree, the consensus is likely correct. ^[extracted]

## Why It Works

Each sample is an independent draw from the model's distribution. Random errors are unlikely to repeat across samples, while the correct answer is more likely to be consistent. The more samples you generate, the higher the probability that the consensus is correct. ^[inferred]

This is a form of [[concepts/inference-time-compute|inference-time compute scaling]] — you're spending more compute per inference (multiple samples instead of one) to get a predictable accuracy improvement. ^[inferred]

## Evidence

- Demonstrated on math problems where generating multiple samples and selecting the majority answer improves solve rates ^[extracted]
- Stanford research showed that pass@k (coverage score) on SWE-bench verified improves predictably with more samples ^[extracted]

## Limitations

- **Cost**: Each additional sample costs inference compute. The tradeoff is accuracy vs. cost per request.
- **Not always applicable**: For open-ended generation tasks where there's no single "correct" answer, majority voting is less useful.
- **Diminishing returns**: After a certain number of samples, accuracy gains flatten.

## Relationship to Other Techniques

Majority voting is one of two main approaches to [[concepts/inference-time-compute|inference-time compute scaling]], the other being [[concepts/sequential-revision|sequential revision]] where the model iteratively improves its own previous output. ^[inferred]

## Sources

- AIEF2025 - RL for Autonomous Coding — Aakanksha Chowdhery, Reflection.ai - https://www.youtube.com/watch?v=QluDzKVfp6A
