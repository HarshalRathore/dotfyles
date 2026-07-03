---
title: Eugene
category: entities
tags: [person, ai, founder, reliability, inference]
aliases: [Eugene Chee]
relationships:
  - target: "[[entities/featherless]]"
    type: implements
  - target: "[[entities/eugene-yan]]"
    type: related_to
sources:
  - "AI Engineer World's Fair 2025 talk - AI Engineer World's Fair 2025 Hackathon Presentations - https://www.youtube.com/watch?v=1ZlO9Yu2ZiU"
summary: "Founder of Featherless AI. Advocate for the 'scaling is dead' thesis and developer of action models for reliable real-world task execution, including a 72B non-transformer model."
provenance:
  extracted: 0.60
  inferred: 0.35
  ambiguous: 0.05
base_confidence: 0.45
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Eugene

Founder of [[entities/featherless|Featherless]], an AI company building inference infrastructure and non-transformer model architectures. Presented Featherless Action R1 at the AI Engineer World's Fair 2025 hackathon finals, where it won first place. ^[extracted]

> **Disambiguation:** There are two Eugenes in this wiki. This page is about **Eugene Chee**, founder of Featherless AI. For the Amazon scientist and RecSys / LLM researcher, see [[entities/eugene-yan|Eugene Yan]].

## Key Contributions

- **Featherless Action R1** — an action model achieving 65% on real eval, the highest publicly known score at the time, significantly ahead of Claude and Gemini (~45%). ^[extracted]
- **72B non-transformer model** — built on RWKV architecture, claimed to be 1000x cheaper in inference than comparable transformer models while achieving similar performance. ^[extracted]
- **Scaling is dead thesis** — argued that throwing more compute and parameters at AI models will not solve the reliability problem for real-world tasks. ^[extracted]
- **Boring tasks thesis** — argued that enterprises need AI that reliably executes mundane tasks (booking flights, processing invoices) more than they need AI that can solve PhD-level math. ^[extracted]

## Quotes

> "Most companies don't need an AI that can do PhD math. What they really want is an AI that can do the boring things in life." ^[extracted]

> "Scaling is dead and we're not going to solve reliability with scaling. This is a billion-dollar money pit that we are throwing to scale." ^[extracted]

> "We need to get 99% — that's what I'm building towards." ^[extracted]

## Sources

- [[references/ai-eng-worlds-fair-2025-hackathon-presentations|AI Engineer World's Fair 2025 Hackathon Presentations]]
