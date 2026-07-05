---
title: "Monetizing AI — Alvaro Morales, Orb (AI Engineer World's Fair 2025)"
category: references
tags: [ai-engineering, pricing, monetization, billing, conference-talk]
aliases: [Alvaro Morales Pricing Talk, Monetizing AI Talk AI Eng 2025]
sources:
  - "[[sources/watchv=6wqylqb0odc]]"
summary: "Alvaro Morales, CEO/co-founder of Orb, presents three frameworks for AI pricing: direct vs indirect monetization, value metric spectrum selection, and continuous experimentation via pricing simulation."
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.42
lifecycle: draft
lifecycle_changed: 2026-07-03
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Monetizing AI — Alvaro Morales, Orb

> **Speaker:** [[entities/alvaro-morales|Alvaro Morales]], Co-founder and CEO of [[entities/orb|Orb]]
> **Event:** AI Engineer World's Fair 2025
> **Video:** https://www.youtube.com/watch?v=6WQYLQB0odc

## Core Thesis

AI companies should not "price on vibes." Instead, pricing strategy should be data-driven — using real usage data to simulate the impact of pricing changes before rolling them out. Three frameworks help navigate the uniquely challenging landscape of AI monetization. ^[extracted]

## Three Challenges of AI Pricing

1. **Rapid change.** Model and inference costs, capabilities, and products are evolving at unprecedented speed, making it hard to keep pricing current. ^[extracted]
2. **Margin and COGS pressure.** Unlike traditional SaaS (ship first, figure out pricing later), AI products have significant and variable inference costs that demand upfront pricing discipline. ^[extracted]
3. **Customer ROI hunger.** Users are actively seeking to understand what ROI they're getting from AI technologies. ^[extracted]

Even established players struggle — ChatGPT Pro at $200/month was reportedly a loss driver for the company. ^[extracted]

## Framework 1: Direct vs Indirect Monetization

See [[concepts/direct-vs-indirect-ai-monetization]] for full treatment.

The Simon Kutcher framework asks: should monetization be direct (standalone product or add-on) or indirect (bundled to drive upsells or desired behavior)?

| Strategy | Example | Rationale |
|---|---|---|
| Add-on (direct) | [[entities/github-copilot|GitHub Copilot]] as $ add-on on base seat | Not every GitHub user needs AI, so avoid blanket price increase |
| Bundle then upsell (indirect) | [[entities/notion|Notion AI]] bundled into Business/Enterprise tiers | Drive tier migration and justify price increases |
| Free to drive behavior (indirect) | Expedia: Instagram Reels → bookable trips, no charge | Absorb inference costs because more bookings = more commission revenue |

## Framework 2: Value Metric Spectrum

See [[concepts/value-metric-spectrum]] for full treatment.

The spectrum from loosely-coupled proxies of value to tightly-aligned ROI: ^[extracted]

| Metric | Example | How it works |
|---|---|---|
| Token / Resource | [[entities/vercel|Vercel]] V0 | Granular tokens for specific capabilities |
| Task / Workflow | Zapier | Pay per automated workflow step or task |
| Labor Replacement | (Emerging) | Per-hour agent pricing comparable to contractor rates |
| Outcome-Based | [[entities/intercom|Intercom]] FIN | $0.99 per successful ticket resolution |

Outcome-based pricing is the most discussed but hardest to execute. The customer and vendor must agree on a precise, objectively measurable definition of "outcome" — straightforward for support tickets, much harder for creative or strategic work. ^[extracted]

## Framework 3: Continuous Pricing Experimentation

Traditional SaaS pricing iteration follows a 1-3 year cycle: ship, pick a price, build value, then do a painful catch-up price increase. AI products cannot afford this pace — new model drops can change costs by 10x overnight (e.g., Cloud 4). ^[extracted]

The best AI teams build a muscle around continual pricing experimentation. This extends beyond the price point to the entire pricing experience: packaging, rate limits, volumes, custom terms, and how all of this is communicated to customers. ^[extracted]

## Orb Simulations

To address the experimentation need, Orb built **Orb Simulations** — a tool that lets teams back-test or test alternate pricing strategies against real product usage data before billing customers. ^[extracted]

The workflow:
1. Define a simulation time period (e.g., the closed beta period) ^[extracted]
2. Select a customer cohort (beta users not yet paying, or existing customers) ^[extracted]
3. Build pricing scenarios: add-on fixed fee, per-token, tiered usage, etc. ^[extracted]
4. Run the simulation to generate reports showing: ^[extracted]
   - Top-line revenue impact per scenario
   - Lowest average change to existing customers
   - Revenue mix projections
   - Per-customer impact scatter plots
5. Export the data for deeper analysis and confident go-to-market decisions ^[extracted]

The core philosophy: "AI builders should always simulate first before putting something out to market." ^[extracted]

## Key Examples

### GitHub Copilot (Add-on)
Launched as a separable monetizable add-on on GitHub's base seat, targeting only users who derive value from AI code completion. ^[extracted]

### Notion AI (From Add-on to Bundled)
First-to-market in its category, Notion launched AI as an add-on then bundled into Business/Enterprise tiers with price increases. ^[extracted]

### Vercel V0 (Token-based)
Token model with very granular capabilities, designed for a developer audience that wants visibility into what they're paying for. ^[extracted]

### Expedia (Free, Indirect)
AI feature turning Instagram Reels into bookable trips, free to users — costs absorbed to drive travel bookings. ^[extracted]

### Intercom FIN (Outcome-based)
$0.99 per successful ticket resolution, where success is defined as the end user confirming resolution without escalation. ^[extracted]

## Related Concept Pages
- [[concepts/direct-vs-indirect-ai-monetization]]
- [[concepts/value-metric-spectrum]]
- [[concepts/outcome-based-pricing-for-ai]]
- [[concepts/usage-based-pricing-for-ai]]
- [[concepts/pricing-as-friction]]
- [[concepts/ai-native-pricing-principles]]
- [[concepts/pricing-simulation]]
- [[concepts/agent-cost-predictability]]

## Related Entity Pages
- [[entities/alvaro-morales]]
- [[entities/orb]]
- [[entities/kshitij-grover]]
- [[entities/vercel]]
- [[entities/replit]]

## Related Reference Pages
- [[references/revenue-engineering-pricing-ai-product-grover-orb]] — Kshitij Grover's companion talk on pricing philosophy

## Sources
- <https://www.youtube.com/watch?v=6WQYLQB0odc> — Full talk recording
