---
title: "Teammates"
category: entities
tags:
  - company
  - ai-agents
  - digital-workforce
  - collaboration
  - agent-identity
  - aief2025
aliases: [Teammates, teammates]
sources:
  - "[[sources/watchv=pthmdt92qng]]"
provenance:
  extracted: 0.92
  inferred: 0.06
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/ben-stein]]"
    type: founded_by
  - target: "[[concepts/agent-identity]]"
    type: implements
  - target: "[[concepts/affordance-thinking]]"
    type: practices
---

# Teammates

**Teammates** is a platform for designing and managing an entire digital workforce of AI agents. Founded by [[entities/ben-stein|Ben Stein]] and others, it focuses on the experience and interaction patterns of humans and computers working together. ^[extracted]

## Product Approach

Teammates goes "two ticks up from" standard AI agents — it emphasizes identity, personality, and collaboration. Each customer designs their own teammates with custom avatars and personalities that live inside existing collaboration tools. ^[extracted]

### Identity and Presence

Teammates leans heavily into giving agents real identity. Their flagship teammate, **Stacy Hand**, operates across:
- Google Workspace (Gmail, Google Docs, Google Sheets)
- Slack (public channels, Gen Alpha communication style)
- Email (sends and receives)

This approach treats AI teammates as genuine members of the team rather than tools — with accounts, personalities, and social presence. ^[extracted]

## Key Design Challenge

Teammates exemplifies the core challenge of AI product management: building a platform with **boundless surface area** on top of LLMs whose capabilities are inherently opaque. When a customer asked if they could tag a teammate in a Google Doc comment, Ben Stein didn't know what would happen — no webhooks, uncertain email notification content, unknown emergent behavior. ^[extracted]

This uncertainty drove the central thesis of his AIEF2025 talk: product management must shift from spec-driven feature development to **affordance-based design** where the LLM and agentic workflows determine how affordances are composed. ^[extracted]

## Sources

- [[references/aief2025-shipping-products-when-you-dont-know-what-they-can-do|AIEF2025 - Shipping Products When You Don't Know What They Can Do]]
