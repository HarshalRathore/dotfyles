---
title: Forward Deployed Engineering
category: concepts
tags:
- engineering
- customer-success
- consulting
- ai
- aief2025
aliases:
- Forward deployed engineers
- FDE
relationships:
- target: '[[concepts/small-ai-teams|Small AI Teams with Huge Impact]]'
  type: related_to
- target: '[[concepts/ai-native-toolchain|AI-Native Toolchain]]'
  type: related_to
sources:
- 'https://www.youtube.com/watch?v=k-iykdmfkhe'
summary: The traditional model of deploying engineers to client sites to iterate on solutions until they're good enough. Vik Paruchuri proposes replacing this model with trained AI models that loop over cus...
provenance:
  extracted: 0.85
  inferred: 0.15
  ambiguous: 0.0
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Forward Deployed Engineering

**Forward Deployed Engineering** is the traditional model of deploying engineers to client sites to iterate on solutions until they're good enough. [[entities/vik-paruchuri|Vik Paruchuri]] ([[entities/datalab|Datalab])) proposes replacing this model with trained AI models. ^[extracted]

## The Traditional Model

Previous-generation OCR companies solved customer-specific complexity by hiring forward deployed engineers who sat at client sites and iterated until the solution was good enough. This is a labor-intensive model that scales poorly. ^[extracted]

## The AI Replacement

Vik proposes that instead of hiring more forward deployed engineers, companies can: ^[extracted]

> Train a model to essentially loop over customer outputs until it gets to the right state.

This replaces an entire org function (forward deployed engineering) with a trained model. The model handles customer-specific complexity without requiring human labor at each client site.

## The Tradeoff

This is a choice, not a necessity: ^[extracted]

- **Option A**: Hire forward deployed engineers → more revenue efficiency now
- **Option B**: Train AI models → potentially slightly less revenue efficient now but more efficient for long-term company trajectory and health

The key is being able to say no to the hiring path when the AI path aligns better with long-term goals. ^[inferred]

## When the Model Fails

Vik acknowledges uncertainty about when the AI-replacement model breaks down. It's early, and the limits are unknown. But the principle — replacing human labor with trained models for customer-specific work — is a general pattern for small AI teams. ^[inferred]

## Related

- [[concepts/small-ai-teams|Small AI Teams with Huge Impact]] — Where this fits
- [[concepts/ai-native-toolchain|AI-Native Toolchain]] — AI replacing human roles
- [[concepts/ai-multiplication|AI Multiplication]] — AI as productivity multiplier
- [[entities/vik-paruchuri|Vik Paruchuri]] — Proponent
- [[references/aief2025-small-ai-teams-vik-paruchuri-datalab]] — Source talk
