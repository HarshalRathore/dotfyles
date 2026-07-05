---
title: "Outcome-Based Pricing for AI"
category: concepts
tags: [pricing, ai-engineering, monetization, product-strategy]
sources:
  - "[[sources/watchv=1c3szbaxomw]]"
  - "[[sources/watchv=6wqylqb0odc]]"
  - "[[sources/watchv=hoylz7ivgjo]]"
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.42
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-03
updated: 2026-07-04
---

# Outcome-Based Pricing for AI

A pricing model where customers pay based on the outcome or value delivered rather than the inputs consumed (seats, API calls, compute time). This represents a further evolution beyond usage-based pricing.

## Evolution of Pricing Models

[[entities/kshitij-grover|Kshitij Grover]] and [[entities/alvaro-morales|Alvaro Morales]] of [[entities/orb|Orb]] both describe this evolution: ^[extracted]
1. **Fixed license** — One-time purchase, highest user commitment
2. **Seat-based subscription** — Per-user recurring fee
3. **Usage-based pricing** — Pay for what you consume (API calls, tokens, credits)
4. **Outcome-based pricing** — Pay for the result delivered

## Challenges

- **Defining the outcome.** What constitutes a successful outcome? Does an AI agent that produces code count outcomes per function, per working app, per user satisfaction score? ^[extracted]
- **Measurement precision.** The SLA language must be precise enough to be unambiguous to both provider and customer. ^[extracted]
- **Provider risk.** The provider bears execution risk — if the AI fails to deliver the outcome, the provider doesn't get paid. ^[inferred]

## Working Example: Intercom FIN

[[entities/intercom|Intercom]] FIN is one of the few successful outcome-based pricing examples at scale. It charges $0.99 per successful customer support ticket resolution. ^[extracted]

The mechanism: the charge fires only when the end user confirms the answer resolved their query and does not need escalation to a human agent. ^[extracted]

This works because:
- The outcome is unambiguous — "did this resolve your question?" is a binary, verifiable signal. ^[extracted]
- The cost to the vendor (the support ticket they would have handled) is directly comparable. ^[inferred]
- It replaces an existing cost structure companies already track (cost-per-ticket for human support). ^[inferred]

### Voice Channel: Finvoice

The same outcome-based pricing extends to [[concepts/finvoice|Finvoice]], Intercom's voice AI agent for phone support. ^[extracted] The infrastructure cost for voice is estimated at $0.20–$0.30 per minute, while the outcome-based charge remains $0.99 per resolved interaction — providing healthy margin on resolved calls. ^[extracted] Peter Bar of Intercom Fin notes that while usage-based pricing (per-minute or per-call) is currently the most dominant model, the market is expected to converge toward outcome-based pricing because the incentive alignment is superior. ^[extracted]

## The Outcome Definition Challenge

Alvaro Morales notes that outside customer support, successful outcome-based pricing is still rare. The fundamental problem: customer and vendor must agree on what the outcome is and measure it objectively. ^[extracted]

| Domain | Outcome clarity | Feasibility |
|---|---|---|
| Support ticket resolution | High — binary resolved/escalated signal | Working today (Intercom FIN) |
| Code generation | Medium — does it compile? pass tests? user satisfaction? | Emerging |
| Creative work | Low — subjective quality assessment | Hard |
| Strategic advisory | Very low — value is long-term and indirect | Hardest |

Morales predicts the industry will continue trying to "crack this code" — finding ways to define and measure outcomes such that outcome-based pricing becomes viable beyond customer support. ^[extracted]

## Value Metric Spectrum Position

Outcome-based pricing sits at the far end of the [[concepts/value-metric-spectrum]] — the most tightly aligned to actual ROI, but also the hardest to implement. It is not a proxy for ROI, it is literally ROI. ^[extracted]
## Industry Trajectory

Grover predicts outcome-based pricing will become more real in the AI agent space, with companies increasingly defining clear success language in contracts. ^[extracted]

The [[entities/jasper|Jasper]] example (moving to unlimited pricing by abstracting model selection) shows a company moving away from granular metering toward simpler value-aligned pricing, which shares some philosophical DNA with outcome-based models. ^[inferred]

## Related
- [[concepts/pricing-as-friction]] — Outcome pricing minimizes friction for end users
- [[concepts/value-metric-spectrum]] — Outcome pricing as the most ROI-aligned metric
- [[concepts/ai-native-pricing-principles]] — Flexibility to experiment with pricing models
- [[concepts/usage-based-pricing-for-ai]] — Predecessor model in the evolution
- [[concepts/voice-ai-cost-structure]] — Voice AI agent cost breakdown
- [[references/revenue-engineering-pricing-ai-product-grover-orb]] — Kshitij Grover talk
- [[references/monetizing-ai-alvaro-morales-orb]] — Alvaro Morales talk
- [[references/aief2025-shipping-enterprise-voice-ai-100-days-peter-bar]] — Peter Bar on pricing models

## Sources
- [[references/revenue-engineering-pricing-ai-product-grover-orb]] — Kshitij Grover, Orb, AI Engineer World's Fair 2025
- [[references/monetizing-ai-alvaro-morales-orb]] — Alvaro Morales, Orb, AI Engineer World's Fair 2025
- [[references/aief2025-shipping-enterprise-voice-ai-100-days-peter-bar]] — Peter Bar, Intercom Fin, AIEF2025
