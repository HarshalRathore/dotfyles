---
title: Why You Should Care About AI Interpretability — Mark Bissell, Goodfire AI
tags:
- reference
- talk
- ai-engineer
- interpretability
- safety
sources:
- 'https://www.youtube.com/watch?v=6avmhzpjptq'
summary: Mark Bissell makes the case for mechanistic interpretability as a practical engineering tool — from neural programming and feature steering to model diffs, novel UI paradigms, and scientific knowle...
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.5
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: references
---

# Why You Should Care About AI Interpretability — Mark Bissell, Goodfire AI

> **Event:** AI Engineer World's Fair 2025
> **Speaker:** [[entities/mark-bissell|Mark Bissell]], Member of Technical Staff at [[entities/goodfire-ai|Goodfire AI]]
> **Source:** [YouTube](https://www.youtube.com/watch?v=6AVMHZPjpTQ)

## Overview

Mark Bissell presents [[concepts/mechanistic-interpretability|mechanistic interpretability]] — the practice of reverse engineering neural networks to understand what is happening inside them — as a field that is moving from research labs into practical, real-world engineering use cases. The talk covers three broad categories where interpretability impacts how AI engineers work: neural programming (debugging and steering models at the neuron level), novel UI/UX paradigms (interpretability-driven interfaces), and frontier applications (extracting scientific knowledge from superhuman models).

The talk opens with the canonical example: Anthropic's **Golden Gate Claude** demo, where researchers identified a set of neurons representing Claude's concept of the Golden Gate Bridge and forced them to always fire — resulting in a model obsessed with the bridge in any conversation. ^[extracted]

## Three Categories of Interpretability Impact

### 1. Neural Programming — Developing with AI Systems

Bissell draws on his three years on Palantir's healthcare team to frame the challenge: LLMs are non-deterministic and hard to make precise guarantees about, leading to "whack-a-mole prompt edits" where fixing one eval failure breaks another. He contrasts three common approaches to reliability:

| Approach | Problem |
|----------|---------|
| Prompt engineering | Fixing one issue breaks another (whack-a-mole) |
| LLM-as-judge | Not scalable — cost balloons, another system to maintain |
| Fine-tuning | Needs curated data; models learn spurious correlations, mode collapse, reward hacking |

Goodfire's Ember platform applies interpretability to solve this. The demo shows:
- **Feature attribution** — clicking any output token reveals which internal features (concept representations) the model was "thinking about" when producing it
- **Feature steering** — turning up a "sensitive and protected information" feature by 60% makes the model refuse to reveal PII, switching from a model that ignored confidentiality instructions to one that enforces them ^[extracted]
- **Dynamic prompting** — setting a "listener" on a specific feature (e.g., "beverages and consumer brands") that conditionally injects a context-appropriate prompt when the feature fires mid-generation, without the user noticing ^[extracted]

### 2. Model Diffs

Goodfire is researching **model diffs** — a feature-level comparison of model versions after post-training, analogous to git diff for neural networks. This enables detecting problematic behavioral drift (e.g., a model becoming sycophantic) before deployment to millions of users. ^[inferred]

### 3. Novel Interfaces — Paint with Ember

Bissell demonstrates **Paint with Ember** (paint.goodfire.ai), an interpretability-driven image generation interface. Instead of a text prompt box, users paint directly onto a canvas with "concepts" that map to the model's internal neurons — pyramid structure, waves, lion faces — and can drag, erase, and adjust the strength of each concept. Users can click into any concept to see subfeatures and smoothly interpolate between them (e.g., lion minus mane produces a tiger-like face), revealing how the model's internal vector space organizes visual concepts. ^[extracted]

## Frontier Applications

Beyond engineering and UI, interpretability enables:
- **Explainable outputs** — critical for regulated industries (finance, healthcare, law) ^[extracted]
- **Scientific knowledge extraction** — working with the [[entities/arc-institute|ARC Institute]] on [[entities/arc-institute|EVO2]], a superhuman genomics model, to extract biological concepts the model has learned that humans don't yet know. Also working with a major health system to identify novel biomarkers of disease from genomics models. ^[extracted]
- **Efficiency gains** — identifying which weights are wasted on memorization vs. productive computation, enabling targeted pruning (e.g., a version of Claude that only needs to perform coding could shed irrelevant parameters). ^[extracted]

## Key Quotes

> "What if you could debug and program your models at the neuron level to get more of those guarantees that we're used to with traditional software development?" ^[extracted]

> "The hallmark of an engineer is that we like to understand how systems work. We like to take a thing and take it apart and look at all the insides of it." ^[extracted]

## Pages Created from This Source

- [[concepts/mechanistic-interpretability|Mechanistic Interpretability]]
- [[concepts/neural-programming|Neural Programming]]
- [[concepts/feature-steering|Feature Steering]]
- [[concepts/sparse-autoencoders|Sparse Autoencoders]]
- [[entities/goodfire-ai|Goodfire AI]]
- [[entities/mark-bissell|Mark Bissell]]
- [[entities/arc-institute|ARC Institute]]

## Pages Updated from This Source

- [[entities/anthropic]] — Added Golden Gate Claude interpretability demo

## Technical Details

- [[concepts/sparse-autoencoders|Sparse autoencoders]] are the current best-practice method for finding interpretable features inside models, though the field is actively developing new techniques. ^[extracted]

## Sources

- [YouTube: AI Engineer World's Fair 2025 — Why you should care about AI interpretability — Mark Bissell, Goodfire AI](https://www.youtube.com/watch?v=6AVMHZPjpTQ)
- [Goodfire AI](https://goodfire.ai)
- [Paint with Ember demo](https://paint.goodfire.ai)
