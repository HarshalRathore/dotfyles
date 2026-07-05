---
title: "Thinking Budgets"
tags:
  - concept
  - ai
  - inference
  - pricing
  - quality
  - reasoning
aliases:
  - Thinking token budgets
  - Reasoning budgets
relationships:
  - target: "[[concepts/test-time-compute-scaling]]"
    type: implements
  - target: "[[concepts/pricing-as-friction]]"
    type: related_to
sources:
  - "[[sources/watchv=8eqo4j2bwkw]]"
summary: "A continuous, granular control mechanism for the quality-cost tradeoff of AI inference — replacing discrete model size choices with a slider-like budget parameter that controls how much thinking compute a model applies."
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

# Thinking Budgets

Thinking budgets provide a continuous slider for the quality-cost tradeoff of AI inference. Before thinking, the only way to gauge quality vs. cost was choosing among discrete model sizes (small, medium, large). With thinking budgets, developers can continuously control how much test-time compute a model allocates to a task, achieving a much more granular capability-to-cost ratio. ^[extracted]

## From Discrete to Continuous

| Without Thinking Budgets | With Thinking Budgets |
|-------------------------|----------------------|
| Discrete model size choices (Flash, Pro) | Continuous budget parameter |
| Fixed compute per request | Variable compute adapted to problem difficulty |
| Quality tied to model selection | Quality tuned per task via budget |
| No dynamic range for hard problems | 10x-1000x+ dynamic range | ^[inferred]

## Implementation in Gemini

Thinking budgets launched in the Gemini 2.5 series across both Flash (efficient) and Pro (capability) model tiers. Developers can set the thinking budget to control cost and performance for their specific application. ^[extracted]

## Deep Think — High-Budget Thinking

**Deep Think** is a very high budget thinking mode built on top of [[entities/gemini|Gemini]] 2.5 Pro, announced at Google I/O and released to trusted testers. Its key characteristics: ^[extracted]

- **Very high compute budget** — designed for problems where the user fires off a query asynchronously and returns later for a stronger solution
- **Parallel chains of thought** — leverages much deeper chains of thought that can integrate with each other to produce better responses
- **Enhanced multimodal reasoning** — improves performance on tough multimodal code and math problems

### USA Math Olympiad Results

| Configuration | Performance |
|:---|---:|
| State-of-the-art model (January) | ~0% (negligible) |
| Gemini 2.5 Pro (updated) | ~50th percentile of participants |
| 2.5 Pro + Deep Think | ~65th percentile of participants | ^[extracted]

Deep Think improvements compound with base model improvements — algorithmic ingredients and the base model stack together multiplicatively. ^[extracted]

### Deep Think Reasoning Process

In practice, Deep Think explores multiple iterative ideas in parallel: starting with one approach (e.g., proof by contradiction), then exploring two different aspects (e.g., Rolle's theorem, Newton's inequalities), integrating them, and eventually arriving at a correct proof. This resembles the [[concepts/reasoning-time-branching|reasoning time branching]] approach used by systems like [[entities/morph|Morph]]'s InfiniBranch, but at the model's thinking token level rather than the environment level. ^[inferred]

## Efficiency as a Research Goal

A major ongoing focus is making the thinking process as efficient as possible — ensuring models are adaptive and do not require manual tuning. Current models can overthink on simple tasks, and reducing this is an active research area. ^[extracted]

## Why This Matters for Developers

- **Granular cost control** — fine-tune inference cost per use case rather than over-provisioning with a larger model than needed ^[inferred]
- **Adaptive quality** — the same model handles cheap quick answers and expensive deep reasoning from the same API ^[inferred]
- **Cost efficiency** — only pay for the thinking compute the problem actually requires ^[inferred]
- **Future path** — thinking budgets enable pushing cost and performance higher as applications demand it ^[extracted]

## Related

- [[concepts/test-time-compute-scaling|Test-Time Compute Scaling]] — The underlying paradigm thinking budgets operationalize
- [[concepts/reasoning-time-branching|Reasoning Time Branching]] — Related parallel inference approach
- [[concepts/pricing-as-friction|Pricing as Friction]] — Thinking budgets as a pricing mechanism for inference
- [[concepts/outcome-based-pricing-for-ai|Outcome-Based Pricing for AI]] — Related pricing paradigm for AI services

## Sources

- [[references/thinking-deeper-in-gemini-jack-rae-deepmind|Thinking Deeper in Gemini — Jack Rae, Google DeepMind]] — AI Engineer World's Fair 2025 talk
