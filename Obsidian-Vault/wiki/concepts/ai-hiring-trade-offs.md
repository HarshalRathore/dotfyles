---
title: "AI Hiring Trade-offs"
category: concepts
tags: [hiring, ai-team, ml-engineering, trade-offs, skills-axis]
aliases: [ai hiring, ml hiring trade-offs, hiring ai engineers]
relationships:
  - target: "[[concepts/generalist-vs-specialist]]"
    type: extends
  - target: "[[concepts/ai-team-anatomy]]"
    type: related_to
  - target: "[[concepts/ai-team-bottleneck-identification]]"
    type: related_to
sources:
  - "https://www.youtube.com/watch?v=sbuxrluvrwk"
summary: "Evaluating AI hiring decisions along three axes — model training, model serving, and business acumen — with 'good enough' thresholds rather than 'best in class'."
provenance:
  extracted: 0.90
  inferred: 0.07
  ambiguous: 0.03
base_confidence: 0.70
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# AI Hiring Trade-offs

A framework for making AI hiring decisions by evaluating skills along three axes — model training, model serving, and business acumen — and setting "good enough" thresholds rather than "best in class" expectations. Articulated by [[entities/denys-linkov|Denys Linkov]] based on building the first ML team at a conversational AI platform. ^[extracted]

## The Three Axes

### 1. Model Training

The ability to train, fine-tune, and work with ML models.

**Generalist bar (what Linkov set):** Upper half of capability — knows general model architectures, can do encoder fine-tuning, can do data engineering using Hugging Face. Not expected to train GPT-3 level models. ^[extracted]

**Specialist bar:** Can train frontier models, deep expertise in model architecture and training at scale. Only justified for model providers (OpenAI, Anthropic, Google) or when the product IS the model. ^[extracted]

### 2. Model Serving

The ability to deploy, serve, and operate ML models in production.

**Generalist bar:** Can use platform abstractions, understands the trade-offs being made by the platform. Does not need to know Kubernetes internals after sufficient abstraction is built. ^[extracted]

**Specialist bar:** Deep infrastructure expertise — Kubernetes, distributed systems, serving infrastructure. Required when building serving infrastructure is the product itself. ^[extracted]

### 3. Business Acumen

The ability to understand customer needs, communicate value, and drive adoption.

**Generalist bar:** Engineers who can get on calls with customers, understand their problems, and translate AI capability into business value. Not dedicated salespeople, but engineers who don't "code in a basement." ^[extracted]

**Specialist bar:** Dedicated business development reps, customer success teams, product managers. Justified when the org is large enough to support these roles. ^[extracted]

## The Budget Constraint

As a team leader managing a budget, you don't have infinite money. The trade-off framework forces explicit decisions about where each skill should sit on the spectrum. This is the practical constraint that makes the generalist approach viable — you can afford top specialists on all three axes, but you can afford a generalist on each. ^[extracted]

## Platform as the Equalizer

The generalist approach works because platform investment raises the floor:
- Custom MLOps platform handles serving complexity
- Automation handles repetitive tasks
- Abstraction layers let generalists operate at specialist-like output levels

This shifts the investment from expensive specialist salaries to platform development. ^[inferred]

## Related

- [[concepts/generalist-vs-specialist|Generalist vs. Specialist Hiring]] — The broader philosophy
- [[concepts/ai-team-anatomy|AI Team Anatomy]] — What skills the team needs to cover
- [[concepts/ampere-s-wager|Ampere's Wager]] — Domain knowledge vs. pure AI research talent
- [[concepts/ml-team-building|Building the First ML Team]] — Platform investment strategy
- [[concepts/ai-team-bottleneck-identification|AI Team Bottleneck Identification]] — Hiring based on actual constraints
