---
title: "Pass@k / Coverage Score"
category: concepts
tags: [pass-at-k, coverage-score, evaluation, coding-benchmark, swe-bench, inference-time-compute, aief2025]
aliases: [pass@k, coverage score, k-at-pass]
sources:
  - "https://www.youtube.com/watch?v=qludzkvfp6a"
summary: "A metric measuring the fraction of problems solved when generating k samples. Demonstrates that inference-time compute predictably improves coding accuracy on SWE-bench verified."
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
    type: measures
  - target: "[[concepts/majority-voting-self-consistency|Majority Voting / Self-Consistency]]"
    type: related_to
  - target: "[[concepts/agentic-coding|Agentic Coding]]"
    type: used_in
---

# Pass@k / Coverage Score

**Pass@k** (also called **coverage score**) is a metric that measures the fraction of problems solved when generating $k$ independent samples. It demonstrates that inference-time compute predictably improves coding accuracy. ^[extracted]

## The Metric

Given a coding problem, generate $k$ independent solutions. Pass@k is the probability that at least one of the $k$ samples passes all tests. ^[extracted]

$$\text{Pass@k} = 1 - \frac{\binom{n-f}{k}}{\binom{n}{k}}$$

Where $n$ is the total number of samples and $f$ is the number of failing samples.

## Evidence from Stanford Research

A Stanford researcher (publicly published) showed that: ^[extracted]

- Pass@k (coverage score) on SWE-bench verified improves predictably with more samples
- Using open-source DeepSeek models, accuracy increased as more samples were generated
- By end of 2024, SWE-bench verified scores were roughly 80% and climbing

The key takeaway: inference-time compute predictably gives better results. ^[extracted]

## Relationship to Inference-Time Scaling

Pass@k is the empirical evidence that [[concepts/inference-time-compute|inference-time compute scaling]] works for coding tasks. The more samples you generate (i.e., the more inference compute you spend), the higher your coverage score. ^[inferred]

This is closely related to [[concepts/majority-voting-self-consistency|majority voting]] — both techniques exploit the fact that generating multiple samples improves the probability of finding a correct answer. ^[inferred]

## Limitations

- **Cost**: Each additional sample costs inference compute
- **Diminishing returns**: After a certain point, additional samples yield marginal gains
- **Benchmark-specific**: SWE-bench verified is a specific benchmark; results may not generalize to all coding tasks

## Sources

- AIEF2025 - RL for Autonomous Coding — Aakanksha Chowdhery, Reflection.ai - https://www.youtube.com/watch?v=QluDzKVfp6A
