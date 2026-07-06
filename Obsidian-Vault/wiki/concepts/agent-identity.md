---
title: Agent Identity
category: concepts
tags:
- ai-agents
- ux-design
- agent-persona
- collaboration
- aief2025
aliases:
- agent identity
- ai agent persona
- agent personality
sources:
- 'https://www.youtube.com/watch?v=pthmdt92qng'
provenance:
  extracted: 0.88
  inferred: 0.1
  ambiguous: 0.02
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[entities/teammates]]'
  type: implemented_by
- target: '[[concepts/agent-capability-tiers]]'
  type: complements
- target: '[[concepts/agent-interfaces-evolution]]'
  type: relates_to
summary: Agent Identity
---

# Agent Identity

**Agent identity** is the practice of giving AI agents distinct personalities, avatars, and social presence within collaboration tools — treating them as genuine team members rather than tools. This concept was demonstrated by [[entities/teammates|Teammates]] in their AIEF2025 talk. ^[extracted]

## The Teammates Approach

Teammates gives every customer the ability to design their own teammates with:
- **Custom avatars** — Visual identity (e.g., "Stacy Hand" who "looks like a hamster")
- **Personalities** — Communication style and tone
- **Social presence** — Real accounts in collaboration tools (Gmail, Slack, Google Workspace)
- **Identity** — The agent has its own Google Workspace account, sends emails, participates in Slack channels

> "We truly leaned into giving all of our teammates identity." — Ben Stein ^[extracted]

## Why Identity Matters

1. **Human-computer interaction** — Teammates frames their product as "two ticks up from" agents: focusing on the experience of humans and computers working together, not just the agent capabilities. ^[extracted]
2. **Natural collaboration** — Agents with identity integrate into existing team workflows (Slack channels, email threads) rather than requiring a separate interface.
3. **Trust and familiarity** — Named, avatar'd agents with consistent personalities build trust with human team members over time.

## The Gen Alpha Detail

Stacy Hand communicates in "Gen Alpha" style — a detail Ben Stein finds amusing ("I feel really old... She's constantly like, six, seven"). This illustrates how agent identity extends to communication style, not just visual appearance. ^[extracted]

## Relationship to Other Concepts

Agent identity complements [[concepts/agent-capability-tiers|capability tiers]] by adding a social/identity layer on top of functional capabilities. It shapes the [[concepts/agent-interfaces-evolution|interface evolution]] by making the agent a persistent presence in collaboration tools rather than a tool invoked on demand. ^[inferred]

## Sources

- [[references/aief2025-shipping-products-when-you-dont-know-what-they-can-do|AIEF2025 - Shipping Products When You Don't Know What They Can Do]]
