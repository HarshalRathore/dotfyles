---
title: "Replit"
category: entities
tags: [company, ai, coding, agent, platform]
aliases: [Replit AI]
sources:
  - "AI Engineer World's Fair 2025 talk - Revenue Engineering: How to Price (and Reprice) Your AI Product — Kshitij Grover, Orb - https://www.youtube.com/watch?v=1C3sZbaxOmw"
summary: "AI-powered coding platform that builds full-stack web apps via agents. Cited as a key case study in AI agent pricing challenges."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.42
lifecycle: draft
lifecycle_changed: 2026-07-03
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Replit

Replit is an AI-powered coding platform and agent that builds full-stack web applications. It is a customer of [[entities/orb|Orb]]'s billing infrastructure and serves as a case study in AI agent pricing.

## Pricing Challenges

Replit faces the core AI agent pricing dilemma: how to charge for work that is opaque to the user. ^[extracted]

Key considerations for AI agent pricing: ^[extracted]
- Should the agent charge a fixed amount per checkpoint, or should pricing align with the complexity of the change made?
- Users lack control over what the agent does beyond the initial prompt, making cost predictability important.
- Transparency in pricing tiers communicates positioning — free tier, feature access, agent checkpoint limits.

## Pricing Model

- Multiple transparent pricing tiers communicate what use cases Replit is optimized for. ^[extracted]
- Free tier allows users to see value before committing. ^[extracted]
- Tier structure (model access, agent checkpoint limits, seat counts) determines user incentives and controls backend costs. ^[extracted]

## Related
- [[concepts/agent-cost-predictability]] — Making agent costs transparent to users
- [[concepts/pricing-as-friction]] — How pricing signals value or blocks adoption
- [[entities/kshitij-grover]] — Orb co-founder who discussed Replit's pricing challenges
- [[references/revenue-engineering-pricing-ai-product-grover-orb]] — Source talk
