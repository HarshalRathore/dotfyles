---
title: "Scaling Judge Time Compute"
category: concepts
tags: [judge-scaling, compute-scaling, evaluation, reward-modeling, ai-evaluation, inference-time]
summary: "The philosophy of investing more compute at the judging/evaluation stage — scaling judge time compute — rather than only at the generation stage. Two approaches: train reasoning models or use structured methods."
sources:
  - "[[sources/watchv=omgpvw8tbhc]]"
provenance:
  extracted: 0.65
  inferred: 0.30
  ambiguous: 0.05
base_confidence: 0.65
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/llm-as-judge-problems]]"
    type: addresses
  - target: "[[concepts/fuzz-testing-ai]]"
    type: improves
  - target: "[[concepts/compute-scaling-laws]]"
    type: related_to
  - target: "[[concepts/reasoning-models]]"
    type: related_to
  - target: "[[concepts/eval-ingredients-task-dataset-score]]"
    type: extends
---

# Scaling Judge Time Compute

Scaling judge time compute is the philosophy of investing more computational resources at the **judging/evaluation stage** of AI systems, rather than only at the generation/inference stage. ^[extracted] It is a specific application of the broader "inference time scaling" or "compute time scaling" principle. ^[extracted]

## The Motivation

Standard LLM-as-judge approaches are unreliable because judges are miscalibrated, biased, and unstable. Simply calling an off-the-shelf LLM to score outputs does not produce trustworthy evaluation signals. ^[extracted]

Scaling judge time compute addresses this by treating the judge as something that can be improved through additional compute — either through training better models or through structured reasoning at inference time. ^[inferred]

## Two Ends of the Spectrum

Tang describes two approaches at opposite ends of a spectrum: ^[extracted]

1. **Train from scratch**: Build reasoning models specifically optimized for evaluation tasks, with no inductive biases. These models would be purpose-built for the evaluation/judging domain.

2. **Structured approaches**: Use structured methods (the transcript cuts off before this is fully described, but the implication is structured reasoning, chain-of-thought, or similar inference-time techniques).

## Relationship to Compute Scaling Laws

This concept extends the broader "compute scaling laws" thesis — the idea that more compute at inference time (not just training time) can improve model capabilities. Here, the capability being scaled is *judgment quality*, not generation quality. ^[inferred]

## Connection to Reward Modeling

Scaling judge time compute is essentially the evaluation-layer analog of reward modeling progress: instead of trying to get a general-purpose LLM to act as a judge, invest compute to make the judge itself better at judging. ^[inferred]

## Implications for Fuzz Testing

In fuzz testing, the scoring stage is critical — it guides the search for bugs. If the judge is unreliable, the search is misdirected. Scaling judge time compute would make the scoring stage more reliable, which in turn makes the entire fuzz testing loop more effective. ^[inferred]

## Sources

- AIEF2025 - Fuzzing in the GenAI Era — Leonard Tang, Haize Labs. https://www.youtube.com/watch?v=OMGPvW8TBHc
