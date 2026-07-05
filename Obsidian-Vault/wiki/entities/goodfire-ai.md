---
title: "Goodfire AI"
tags:
  - organization
  - ai
  - interpretability
  - startup
sources:
  - "[[sources/watchv=6avmhzpjptq]]"
summary: "AI interpretability company building the Ember platform for mechanistic interpretability — enabling debugging, steering, and programming of models at the neuron level. Also created Paint with Ember, an interpretability-driven image generation interface."
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

# Goodfire AI

Goodfire AI is a company specializing in [[concepts/mechanistic-interpretability|mechanistic interpretability]] for production AI systems. Their platform, **Ember**, applies interpretability techniques to debug, steer, and program models at the feature (neuron) level — offering an alternative to whack-a-mole prompt engineering, expensive LLM-as-judge setups, and unpredictable fine-tuning. ^[extracted]

## Ember Platform

Ember provides a set of interpretability-powered tools for AI engineers:

- **Feature attribution** — inspect which internal features were active when the model produced any given output token
- **Feature steering** — adjust the activation level of specific features to enforce guardrails and change behavior
- **Dynamic prompting** — set feature-based listeners that conditionally inject prompts mid-generation based on what the model is "thinking about"
- **Model diffs** (in research) — feature-level comparison between model versions after post-training, analogous to git diff for neural networks

Ember is already in use by:
- **Raktin** — multilingual PII detection in chatbots
- **Haze Labs** — red teaming applications
- **Variance** — guardrail enforcement

## Paint with Ember

A public demo (paint.goodfire.ai) showing interpretability-driven image generation. Users paint concepts directly onto a canvas — pyramid structures, waves, lion faces — that map to the model's internal neurons, with tools to drag, erase, adjust strength, and interpolate between subfeatures (e.g., lion minus mane produces a tiger). ^[extracted]

## Scientific Applications

Goodfire is collaborating with the [[entities/arc-institute|ARC Institute]] on the EVO2 genomics model to extract biological concepts the model has learned that humans don't yet know. Also working with a major health system to identify novel biomarkers of disease from genomics models. ^[extracted]

## People

- [[entities/mark-bissell|Mark Bissell]] — Member of Technical Staff, AI Engineer World's Fair 2025 speaker
- Tom (CTO and co-founder) — posted about model diffs research

## Related

- [[concepts/mechanistic-interpretability]] — The field Goodfire builds on
- [[concepts/neural-programming]] — The paradigm Ember enables
- [[concepts/feature-steering]] — Core operation of the Ember platform
- [[concepts/sparse-autoencoders]] — Technique used to find steerable features

## Sources

- [[references/why-care-about-ai-interpretability-bissell-goodfire-2025]] — Primary reference for this page
- [Goodfire AI](https://goodfire.ai)
- [Paint with Ember](https://paint.goodfire.ai)
