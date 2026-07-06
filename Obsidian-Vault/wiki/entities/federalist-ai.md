---
title: Federalist AI
category: entities
tags:
- company
- ai
- reliability
- inference
- aief2025
- hf0-residency
- corekey
summary: Research lab building reliable personalized AGI. Created CoreKey 72B — world's largest non-transformer model with 1000x lower inference cost. Claims action R1 agent beats Claude Sonnet, Gemini, and...
sources:
- 'https://www.youtube.com/watch?v=l8-5ezsoi5a'
provenance:
  extracted: 0.9
  inferred: 0.1
  ambiguous: 0.0
base_confidence: 0.8
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/scaling-is-dead-thesis]]'
  type: implements
- target: '[[concepts/agent-reliability-challenge]]'
  type: implements
- target: '[[concepts/reliability-over-intelligence]]'
  type: implements
---

# Federalist AI

Federalist AI is a research lab building personalized AGI that is reliable for real-world tasks. It was presented at the AI Engineer World's Fair 2025 as part of the HF0 Residency showcase.

## Key Facts

- **CoreKey 72B**: World's largest model without transformer attention, running on only 8 GPUs ^[extracted]
- **Inference cost**: 1000x lower inference cost than comparable models ^[extracted]
- **Architecture**: New non-transformer architecture that can also be applied to existing transformer models through speculative decoding ^[extracted]
- **Action R1 agent**: Claims to beat Claude Sonnet, Gemini, and OpenAI on task completion reliability ^[extracted]
- **Production insight**: Over 90% of AI projects fail in production due to reliability issues ^[extracted]

## Core Thesis

Federalist AI's position is that **reliability is revenue**. The models are already smart enough for PhD-level math; what companies need is models reliable enough to book airline tickets, sort emails, or file taxes and invoices ^[extracted]. Their argument:

- Frontier models work great when they work, but fail unpredictably ^[extracted]
- A 45% success rate is unacceptable for consumer applications (DoorDash analogy) ^[extracted]
- The money is in 99.9% reliability for boring tasks, not marginal IQ improvements ^[extracted]
- This unlocks billion-dollar apps in e-commerce and B2B sales ^[extracted]

## Related to Scaling Thesis

Federalist AI directly implements the "scaling is dead" thesis: rather than burning billions on bigger models, they're investing in architectural innovation (non-transformer attention) and reliability engineering ^[inferred].

## Related

- [[entities/eugene|Eugene]] — founder
- [[concepts/scaling-is-dead-thesis|Scaling is Dead Thesis]] — Federalist AI's philosophical foundation
- [[concepts/reliability-over-intelligence|Reliability Over Intelligence]] — product philosophy
- [[references/aief2025-the-next-unicorns-7-top-ai-startups-hf0-residency|AIEF2025 The Next Unicorns]] — talk where featured
