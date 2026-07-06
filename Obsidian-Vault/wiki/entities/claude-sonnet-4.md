---
title: Claude Sonnet 4
category: entities
tags:
- entity
- model
- claude
- anthropic
- aief2025
aliases:
- claussen-4
- claude-4
sources:
- 'AIEF2025 - Vibe Coding at Scale: Customizing AI Assistants for Enterprise Environments - Harald Kirshner, - https://www.youtube.com/watch?v=i1uPAN6uW4s'
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[entities/anthropic|Anthropic]]'
  type: developed-by
- target: '[[concepts/ai-design-sense|AI Design Sense]]'
  type: exemplifies
summary: Claude Sonnet 4
---

# Claude Sonnet 4

Claude Sonnet 4 (referred to as "Claussen 4" in presentation) is an [[entities/anthropic|Anthropic]] language model noted for strong [[concepts/ai-design-sense|AI design sense]] when generating UI code. In Harald Kirshner's AIEF2025 demo, Claude Sonnet 4 was identified as the best model for producing polished, Apple-esque UI design when vibe coding a React + Material UI application.

## Model Design Sense Comparison

In the same UI generation demo, Kirshner compared multiple models:

- **Claude Sonnet 4** — Best overall design quality; produced polished, Apple-esque UI with good color sense and icon usage ^[extracted]
- **GPT 4.1** — Produced results that looked "very wireframe-y" ^[extract0]
- **Gemini 2.5 Pro** — Had an "interesting design sense" where output always looked somewhat different, suggesting variability ^[extracted]
- **Claude (older)** — Tended to produce blockchain landing pages with gradients, dark themes, and big letters when design direction was insufficient ^[extracted]

This comparison demonstrates that model capability for vibe coding extends beyond code correctness to include latent design quality — a practical evaluation method where the model's output reveals its design capabilities. ^[inferred]

## Connection to Structured Vibe Coding

For enterprise use, model selection is part of the template-based approach: choosing a model with strong design sense (like Claude Sonnet 4) as the default in a structured vibe coding template ensures consistent quality across team members. ^[inferred]
