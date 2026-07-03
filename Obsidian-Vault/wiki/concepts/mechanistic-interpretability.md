---
title: "Mechanistic Interpretability"
tags:
  - concept
  - ai
  - interpretability
  - safety
  - research
sources:
  - "AI Engineer World's Fair 2025 - Why you should care about AI interpretability - Mark Bissell, Goodfire AI - https://www.youtube.com/watch?v=6AVMHZPjpTQ"
summary: "The practice of reverse engineering neural networks to understand their internal computations — identifying and manipulating features (concept representations) inside models to enable debugging, steering, and programmatic control."
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

# Mechanistic Interpretability

Mechanistic interpretability (often called simply "interpretability") is the practice of reverse engineering neural networks to understand what is happening inside them. Rather than treating models as black boxes, interpretability techniques identify internal features — learned representations of concepts inside the model — and enable both analysis and active manipulation of those features. ^[extracted]

> The field is often described using analogies like "opening the black box," "brain scans of models," or "brain surgery on models." ^[extracted]

## Key Ideas

- **Opening the black box** — interpretability techniques reveal what concepts a model represents internally and which neurons correspond to which ideas. The canonical example is Anthropic's [[entities/anthropic|Anthropic]] Golden Gate Claude demo, where researchers found neurons representing the Golden Gate Bridge and forced them to always fire, making the model obsessed with the bridge. ^[extracted]
- **From lab to production** — over the past year, interpretability has moved from academic research into real-world engineering use cases. Companies like [[entities/goodfire-ai|Goodfire AI]] are building production platforms (Ember) that apply interpretability to debug, steer, and program models. ^[extracted]
- **Sparse autoencoders** are the current best-practice method for finding interpretable features, though the field is actively developing new techniques. ^[extracted]
- **Feature attribution** — the ability to inspect which internal features were active when a model produced a specific output token, providing insight into the model's "reasoning."

## Applications

The talk identifies three broad categories of practical impact:

1. **Neural programming** — debugging and programming models at the neuron level (see [[concepts/neural-programming]])
2. **Novel user interfaces** — interpretability-driven interfaces like Paint with Ember that let users paint concepts directly onto a canvas
3. **Scientific knowledge extraction** — extracting what superhuman models have learned that humans don't yet know (e.g., in genomics)

## Open Questions

- Sparse autoencoders are the current best practice, but the field may develop fundamentally new techniques for finding features. ^[ambiguous]

## Related

- [[concepts/neural-programming]] — The engineering application of interpretability for debugging and steering models
- [[concepts/feature-steering]] — Actively adjusting internal features to control model behavior
- [[concepts/sparse-autoencoders]] — The primary technique for discovering interpretable features
- [[concepts/verified-superintelligence]] — Related AI safety and alignment research

## Sources

- [[references/why-care-about-ai-interpretability-bissell-goodfire-2025]] — Primary reference for this page
