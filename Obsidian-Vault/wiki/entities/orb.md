---
title: "Orb"
category: entities
tags: [company, billing, infrastructure, pricing, ai-engineering]
sources:
  - "AI Engineer World's Fair 2025 talk - Revenue Engineering: How to Price (and Reprice) Your AI Product — Kshitij Grover, Orb - https://www.youtube.com/watch?v=1C3sZbaxOmw"
  - "AI Engineer World's Fair 2025 - Monetizing AI — Alvaro Morales, Orb - https://www.youtube.com/watch?v=6WQYLQB0odc"
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.42
lifecycle: draft
lifecycle_changed: 2026-07-03
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Orb

Orb is a usage-based billing infrastructure company that helps companies across the AI stack design and implement pricing and billing models. Co-founded by [[entities/kshitij-grover|Kshitij Grover]] and [[entities/alvaro-morales|Alvaro Morales]].

## Overview

- Provides billing infrastructure for companies using usage-based, seat-based, and hybrid pricing models. ^[extracted]
- Works with customers across multiple layers of the AI stack, from infrastructure to agent platforms. ^[extracted]
- Conversations often start with monetization and pricing strategy before discussing implementation. ^[extracted]

## Products

### Orb Simulations
A product that lets teams back-test or test alternate pricing strategies on top of their real product usage data before billing customers. Designed to answer the "what if" question about pricing changes by simulating revenue impact across customer cohorts. ^[extracted]

Orb noticed customers were using the platform in an unexpected way — setting up shell pricing structures on their real usage data during closed beta periods without actually billing customers. They formalized this workflow into Orb Simulations. ^[extracted]

The simulation workflow:
1. Define a time period (e.g., closed beta window) and select a customer cohort ^[extracted]
2. Build pricing scenarios: add-on fixed fee, per-token pricing, tiered usage, etc. ^[extracted]
3. Run the simulation to generate impact reports — top-line revenue, revenue mix, per-customer impact scatter plots, and exportable data ^[extracted]
4. Use the data to make confident go-to-market decisions ^[extracted]

### Customers

Orb's customer base includes AI companies across the stack. Notable customers cited in talks:
- [[entities/replit]] — AI coding platform, used as a case study for AI agent pricing challenges ^[extracted]
- [[entities/vercel]] (V0) — Token-based AI coding assistant ^[extracted]
- Perplexity API — AI-powered search API ^[extracted]

## Pricing Philosophy

- Pricing is a form of friction — it should be placed carefully to signal value without blocking adoption. ^[extracted]
- Companies need the ability to simulate pricing changes before rolling them out to understand impact on different usage cohorts. ^[extracted]
- AI-native pricing requires thinking about margin structure (the axes of cost scaling) rather than literal margins, since underlying costs change rapidly. ^[extracted]

## Customers

Orb's customer base includes AI companies across the stack. Notable customer cited in Grover's talk:
- [[entities/replit]] — AI coding platform, used as a case study for AI agent pricing challenges ^[extracted]

## Related
- [[concepts/pricing-as-friction]] — Core pricing philosophy
- [[concepts/direct-vs-indirect-ai-monetization]] — Direct vs indirect pricing decision
- [[concepts/value-metric-spectrum]] — Choosing how to measure value
- [[references/monetizing-ai-alvaro-morales-orb]] — Alvaro Morales' talk at AI Engineer World's Fair 2025
- [[concepts/ai-native-pricing-principles]] — Three principles for AI pricing
- [[concepts/pricing-simulation]] — Data-driven approach to pricing iteration
- [[references/revenue-engineering-pricing-ai-product-grover-orb]] — Grover's talk at AI Engineer World's Fair 2025
