---
title: Mythos Models
category: concepts
tags:
- concept
- llm
- anthropic
- claude
sources:
- 'https://www.youtube.com/watch?v=4sX_He5c4sI'
summary: The Mythos class of models from Anthropic, beginning with Fable — models described as "the map opening up" with significant capability overhang and spiky progress patterns.
provenance:
  extracted: 0.7
  inferred: 0.3
  ambiguous: 0.0
base_confidence: 0.59
lifecycle: draft
lifecycle_changed: 2026-07-06
tier: supporting
created: 2026-07-06T12:00:00Z
updated: 2026-07-06T12:00:00Z
relationships:
  - target: '[[entities/anthropic]]'
    type: related_to
  - target: '[[concepts/capability-overhang]]'
    type: related_to
  - target: '[[concepts/claude-code]]'
    type: related_to
---

# Mythos Models

The **Mythos class** is a new category of models from [[entities/anthropic|Anthropic]], beginning with **Fable**. Models in this class are characterized by significant **capability overhang** — latent abilities that aren't visible in raw interaction but emerge when given the right tools or scaffolding.

## Origin

The term was introduced by [[entities/tariq-shihapar|Tariq Shihapar]] (Anthropic MTS) in his WF2026 talk "Unhobbling Claude: A Field Guide to the Mythos Class of Models." He described the transition to Mythos models as "the map opening up" — like transitioning from a tutorial level to an open-world RPG in a video game. ^[extracted]

## Fable

**Fable** is the first Mythos-class model. Shihapar compared it to previous landmark Anthropic models (Claude 3.5 Sonnet, Opus 4, Opus 4.5) — "a model that I just have a lot of affection and excitement for." It was rolled out later on the day of the talk. ^[extracted]

### Characteristics

- **Capability overhang** — Significant latent abilities unlocked by tools
- **Spiky progress** — New capabilities emerge in specific areas rather than uniform improvement
- **Smaller system prompts** — Unlike previous models that needed large prompts with many examples, Mythos models want smaller prompts with context rather than constraints
- **More imaginative** — Examples tend to constrain them because they're more imaginative than the examples given
- **Proactive capability** — Can "wake itself up" and do work without being prompted
- **Richer output** — Can generate in-depth HTML reports, not just markdown

## Implications

### For Users
- The harness you put models in is a function of your understanding of the model
- You need to discover capability overhang through interaction, not from specs
- "Unhobbling" — the process of unlocking latent capabilities — becomes a core skill

### For Anthropic
- Models are "grown, not designed" — capabilities emerge organically
- The biology metaphor (not physics) applies: empirical, organic, with intuition to build
- Recommended reading: Anthropic's paper "The Biology of a Large Language Model"

## Relationship to Other Concepts

- **Capability overhang** — Mythos models exhibit the most pronounced capability overhang
- **Claude Code** — Claude Code's evolution (system prompt shrinking, proactive capability, richer output) tracks with the Mythos class
- **Agent loop** — Mythos models make the agent loop more powerful but also more complex to manage

## Open Questions

- Will there be additional Mythos-class models beyond Fable?
- How does capability overhang differ between Mythos models and previous generations?
- What other domains beyond coding benefit from Mythos-class capabilities?
- How do Mythos models compare to competing frontier models?

## Sources

- [[references/aief2025-fable-model-field-guide-tariq-shihapar]] — Tariq Shihapar's WF2026 talk
- [[misc/wf2026]] — Conference overview
