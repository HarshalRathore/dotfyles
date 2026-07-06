---
title: Pricing Simulation
category: concepts
tags:
- pricing
- data-driven
- analytics
- product-strategy
- ai-engineering
sources:
- 'https://www.youtube.com/watch?v=1c3szbaxomw'
- 'https://www.youtube.com/watch?v=6wqylqb0odc'
provenance:
  extracted: 0.68
  inferred: 0.27
  ambiguous: 0.05
base_confidence: 0.42
lifecycle: draft
lifecycle_changed: 2026-07-03
tier: supporting
created: 2026-07-03
updated: 2026-07-03
summary: Pricing Simulation
---

# Pricing Simulation

The practice of modeling the financial impact of pricing changes on different customer cohorts before implementing them. As AI companies iterate pricing frequently (sometimes multiple times per month), simulation becomes essential to avoid damaging revenue or surprising key customers.

## Why Simulation Matters

- **Different usage patterns.** Different customer cohorts use the product for different use cases — a pricing change that helps one segment may hurt another. ^[extracted]
- **Top-customer sensitivity.** The highest-revenue customer may be the most affected by a change. Simulation reveals this before it becomes a retention problem. ^[extracted]
- **Revenue mix modeling.** Changing pricing models (e.g., from credits to flat-rate) reshapes the revenue mix. Simulation helps predict the new distribution. ^[extracted]

## The Iteration Cadence

Traditional software pricing changes once or twice a year. AI companies — particularly Orb's customer base — are making pricing changes two to three times per month. ^[extracted]

This rapid cadence makes simulation not a nice-to-have but a necessity. Without simulation, each pricing change is a blind bet. ^[inferred]

## Internal Effects to Consider

- **Sales commissions.** If pricing moves from annual contracts to pay-as-you-go, sales reps' commission structures change. Many usage-based companies now commission on account expansion rather than initial contract value. ^[extracted]
- **Org structure.** The balance between customer success and sales may need to shift with the pricing model. ^[extracted]

## Case Study: Orb Simulations

[[entities/orb|Orb]] built a product named **Orb Simulations** to formalize the pricing simulation workflow. The product emerged from observing customers use Orb's billing platform in an unexpected way — setting up shell pricing structures on real usage data during closed betas without actually billing anyone. ^[extracted]

The Orb Simulations workflow: ^[extracted]
1. **Define scope** — pick a time period (e.g., the closed beta window) and a customer cohort (non-paying beta users or existing customers about to receive new value)
2. **Build scenarios** — model alternate pricing strategies: add-on fixed fee ($20/agent access), per-token pricing with unit price or tiered fees, usage-based with included free tier
3. **Run simulation** — generate reports showing top-line revenue impact per scenario, revenue mix distribution, per-customer impact scatter plots, and exportable data
4. **Analyze impact** — understand which scenario maximizes revenue while minimizing disruption to existing customers
5. **Launch confidently** — use data to break through "fear, uncertainty, and doubt" about pricing changes

The guiding philosophy from [[entities/alvaro-morales|Alvaro Morales]]: **"AI builders should always simulate first before putting something out to market."** Or, more bluntly: "Don't price on vibes." ^[extracted]

## Related
- [[concepts/ai-native-pricing-principles]] — Flexibility as a core principle
- [[concepts/pricing-as-friction]] — Understanding where friction impacts different cohorts
- [[concepts/direct-vs-indirect-ai-monetization]] — Direct vs indirect pricing decision
- [[concepts/value-metric-spectrum]] — Selecting the right value metric
- [[entities/orb]] — Billing infrastructure enabling pricing iteration
- [[entities/alvaro-morales]] — Co-founder who championed the simulate-first approach

## Sources
- [[references/revenue-engineering-pricing-ai-product-grover-orb]] — Kshitij Grover, Orb, AI Engineer World's Fair 2025
- [[references/monetizing-ai-alvaro-morales-orb]] — Alvaro Morales, Orb, AI Engineer World's Fair 2025
