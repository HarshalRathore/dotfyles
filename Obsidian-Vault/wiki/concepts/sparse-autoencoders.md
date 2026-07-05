---
title: "Sparse Autoencoders"
aliases: [SAE]
tags:
  - concept
  - ai
  - interpretability
  - technique
  - neural-networks
sources:
  - "[[sources/watchv=6avmhzpjptq]]"
summary: "A neural network architecture used in mechanistic interpretability to discover interpretable features inside LLMs by learning sparse decompositions of model activations into individual concept representations."
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.45
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Sparse Autoencoders

Sparse autoencoders (SAEs) are the current best-practice technique for discovering interpretable features inside neural networks for [[concepts/mechanistic-interpretability|mechanistic interpretability]]. An interpreter model trained to reconstruct activations while enforcing sparsity, SAEs learn to decompose the complex, entangled representations inside LLMs into individual, interpretable concept features. ^[extracted]

## Key Ideas

- **How they work** — a sparse autoencoder is trained on the internal activations of a target model. It learns a dictionary of features where each feature activates sparsely (only for specific concepts), and the weighted combination of active features reconstructs the original activation. ^[inferred]
- **Feature discovery** — the features discovered by SAEs correspond to human-interpretable concepts: objects, actions, emotions, abstract ideas, domains of knowledge. The Golden Gate Claude demo from [[entities/anthropic|Anthropic]] used this approach to find the "Golden Gate Bridge" feature. ^[extracted]
- **Enabling steering** — once features are identified via SAEs, they can be manipulated (amplified, suppressed, or conditioned on) — the foundation of [[concepts/feature-steering|feature steering]] and [[concepts/neural-programming|neural programming]].

## Open Questions

- Bissell notes that while sparse autoencoders are the current best practice, the field is likely to develop fundamentally new techniques for finding features in the next few years. ^[extracted]
- Trade-offs between SAE quality and computational cost remain an active research area. ^[inferred]

## Related

- [[concepts/mechanistic-interpretability]] — The field SAEs power
- [[concepts/feature-steering]] — How discovered features are used to control model behavior
- [[concepts/neural-programming]] — The broader paradigm SAEs enable
- [[entities/goodfire-ai]] — Company applying SAEs in their Ember platform
- [[entities/anthropic]] — Anthropic's research team popularized SAEs with the Golden Gate Claude demo

## Sources

- [[references/why-care-about-ai-interpretability-bissell-goodfire-2025]] — Primary reference for this page
