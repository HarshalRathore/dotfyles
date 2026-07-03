---
title: "Direct vs Indirect AI Monetization"
category: concepts
tags: [pricing, ai-engineering, monetization, product-strategy, go-to-market]
aliases: [Simon Kutcher monetization framework, direct monetization, indirect monetization, AI monetization strategy]
sources:
  - "AI Engineer World's Fair 2025 - Monetizing AI — Alvaro Morales, Orb - https://www.youtube.com/watch?v=6WQYLQB0odc"
summary: "Framework for deciding whether to monetize an AI feature directly (standalone/add-on) or indirectly (bundled free to drive upsells or desired user behavior)."
provenance:
  extracted: 0.85
  inferred: 0.15
  ambiguous: 0.00
base_confidence: 0.42
lifecycle: draft
lifecycle_changed: 2026-07-03
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Direct vs Indirect AI Monetization

A framework attributed to Simon Kutcher for deciding whether a new AI capability should be monetized directly or indirectly. Articulated by [[entities/alvaro-morales|Alvaro Morales]] of [[entities/orb|Orb]] at AI Engineer World's Fair 2025. ^[extracted]

## The Core Question

Should you monetize AI directly — charging for it as a standalone product or add-on — or indirectly — bundling it free to drive upsells, tier migration, or desired customer behavior? ^[extracted]

## Direct Monetization Strategies

### Standalone Product
Sell the AI capability as its own product with independent pricing. Appropriate when the AI feature serves a fundamentally different use case from the existing product. ^[inferred]

### Add-On Pricing
Charge an incremental fee on top of a base subscription. Works well when only a subset of users will derive significant value from the AI feature. ^[extracted]

**Example: [[entities/github-copilot|GitHub Copilot]]** launched as a separable monetizable add-on on top of the base GitHub seat. Not every GitHub user needs AI code completion, so an add-on model targets only the users who get value from it. ^[extracted]

## Indirect Monetization Strategies

### Bundled Upsell
Incorporate the AI capability into higher-tier plans to encourage tier migration and justify price increases. ^[extracted]

**Example: [[entities/notion|Notion AI]]** initially launched as an add-on (like GitHub Copilot) but later bundled it into Business and Enterprise tiers, increasing prices on those tiers to capture value from broader adoption. ^[extracted]

### Free to Drive Behavior
Offer the AI feature for free, absorbing inference costs, because it incentivizes a behavior that generates revenue elsewhere. ^[extracted]

**Example: Expedia** launched an AI-powered feature that lets users turn Instagram Reels into bookable trips — free, no direct charge — because the expected outcome is more travel bookings that generate commission revenue. ^[extracted]

## Decision Factors

| Factor | Favor Direct | Favor Indirect |
|---|---|---|
| User segment | Niche audience gets value | Broad audience gets value |
| Revenue model | AI is core product value | AI drives engagement in existing revenue stream |
| Cost structure | AI costs recoverable via direct pricing | AI costs offset by increased core revenue |
| Strategic goal | Monetize new capability | Drive adoption of existing platform |

## Relationship to Other Concepts

The choice between direct and indirect monetization interacts with the [[concepts/value-metric-spectrum]] — once you decide to charge directly, you still need to pick the right value metric (tokens, tasks, outcomes). It also connects to [[concepts/pricing-as-friction]]: indirect monetization (free) eliminates pricing friction entirely for the AI feature, while direct monetization places friction intentionally. ^[inferred]

## Related
- [[concepts/value-metric-spectrum]] — Choosing how to measure value once you charge directly
- [[concepts/pricing-as-friction]] — Placing friction intentionally vs removing it
- [[concepts/outcome-based-pricing-for-ai]] — Most direct form of value-aligned pricing
- [[entities/alvaro-morales]] — Speaker who articulated this framework
- [[references/monetizing-ai-alvaro-morales-orb]] — Source talk

## Sources
- [[references/monetizing-ai-alvaro-morales-orb]] — Alvaro Morales, Orb, AI Engineer World's Fair 2025
