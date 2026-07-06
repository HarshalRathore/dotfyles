---
title: Usage-Based Pricing for AI
category: concepts
tags:
- pricing
- ai-engineering
- monetization
- infrastructure
sources:
- 'https://www.youtube.com/watch?v=1c3szbaxomw'
- 'https://www.youtube.com/watch?v=6wqylqb0odc'
provenance:
  extracted: 0.72
  inferred: 0.23
  ambiguous: 0.05
base_confidence: 0.42
lifecycle: draft
lifecycle_changed: 2026-07-03
tier: supporting
created: 2026-07-03
updated: 2026-07-03
summary: Usage-Based Pricing for AI
---

# Usage-Based Pricing for AI

A pricing model where customers pay based on their actual consumption of the product — tokens, API calls, compute time, credits, or agent checkpoints — rather than a fixed per-seat or per-license fee.

## Motivation

- **Aligns cost with value.** Users pay only for what they consume, lowering the entry barrier. ^[extracted]
- **Reflects variable COGS.** AI products have highly variable underlying costs (model inference, compute, API calls) that usage-based pricing can mirror. ^[extracted]
- **Enables experimentation.** Low initial commitment invites users to try the product and discover its value. ^[extracted]

## Challenges

- **Cost unpredictability.** Users may not know how much a given task will cost, especially with agents whose execution path is opaque. ^[extracted]
- **Credit confusion.** Abstract credit units (50,000 credits, 200,000 credits) can be psychologically effective but numerically meaningless to users. ^[extracted]
- **Degenerate workloads.** A small number of power users can drive disproportionately high costs. ^[extracted]

## Examples

### Token-Based (Granular Usage)
**[[entities/vercel|Vercel]] V0** uses a token-based model charging for very granular capabilities. This aligns with their developer audience, who wants visibility into what specific capabilities they're consuming. ^[extracted]

### Task-Based (Workflow Abstraction)
**Zapier** uses task-based pricing where the unit of value is an automated workflow step (a "Zap"). Users subscribe to a certain number of tasks per month, with overage options. This abstracts away from underlying token consumption toward the user's intent — the workflow they want automated. ^[extracted]

### Checkpoint-Based (Agent Pricing)
**[[entities/replit|Replit]]** uses checkpoint-based pricing for its coding agent, charging per agent checkpoint rather than per token or compute second. This captures the value of each discrete agent output while abstracting internal complexity. ^[extracted]

### Credit-Based (Abstract Units)
**Unify** (agent platform for go-to-market teams) uses credit-based pricing with higher price points that communicate enterprise positioning. ^[extracted]

### Infrastructure-Based
**[[entities/cloudflare|Cloudflare]] Workers** charges for CPU milliseconds rather than wall time, benefiting AI workloads that make external API calls. ^[extracted]

## Relationship to Other Models

Usage-based pricing sits between seat-based subscriptions (more predictable but less flexible) and outcome-based pricing (more aligned with value but harder to measure). Many AI companies layer all three: a base seat fee plus usage credits plus premium outcome-based tiers. ^[inferred]

Usage-based pricing forms the middle of the [[concepts/value-metric-spectrum]], bridging resource-level metrics (tokens) and task-level metrics toward fully outcome-aligned pricing.

## Related
- [[concepts/pricing-as-friction]] — Usage pricing as variable friction
- [[concepts/agent-cost-predictability]] — Mitigating usage pricing unpredictability
- [[concepts/value-metric-spectrum]] — How usage-based metrics fit in the broader pricing spectrum
- [[concepts/outcome-based-pricing-for-ai]] — The next evolution beyond usage-based
- [[entities/orb]] — Billing infrastructure for usage-based models

## Sources
- [[references/revenue-engineering-pricing-ai-product-grover-orb]] — Kshitij Grover, Orb, AI Engineer World's Fair 2025
- [[references/monetizing-ai-alvaro-morales-orb]] — Alvaro Morales, Orb, AI Engineer World's Fair 2025
