---
title: "Value Metric Spectrum for AI Pricing"
category: concepts
tags: [pricing, ai-engineering, monetization, product-strategy, ai-agents]
aliases: [value metric selection, AI pricing spectrum, pricing metric spectrum, token-to-outcome spectrum]
sources:
  - "https://www.youtube.com/watch?v=6wqylqb0odc"
summary: "A spectrum of value metrics for AI pricing, ranging from resource-based (tokens) through task-based and labor replacement to fully outcome-based pricing aligned with ROI."
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

# Value Metric Spectrum for AI Pricing

A framework for selecting the right value metric when pricing AI products, articulated by [[entities/alvaro-morales|Alvaro Morales]] of [[entities/orb|Orb]] at AI Engineer World's Fair 2025. The spectrum ranges from resource-based proxies of value to direct outcome alignment. ^[extracted]

## The Spectrum

As AI agents redefine how users derive value from software — shifting from logging into a web application to agents doing work autonomously — pricing must evolve. The key question is: how tightly aligned to discrete units of value or ROI should pricing be? ^[extracted]

```
Resource-based ──→ Proxy of value ──→ Labor replacement ──→ Outcome-based
   (Tokens)        (Tasks/steps)        (Agent hours)         (Results)
```

## Levels

### 1. Token / Resource-Based
Charge for granular units of AI compute — tokens, API calls, compute credits. Best for developer audiences who understand and want visibility into the underlying consumption. ^[extracted]

**Example: [[entities/vercel|Vercel]] V0** uses a token-based model based on very granular capabilities. This aligns with their developer audience, who wants to understand the specific capabilities they can drive. ^[extracted]

### 2. Task / Workflow-Based
Charge per discrete task or workflow step. Abstracts away from tokens toward the unit of user intent. ^[extracted]

**Example: Zapier** uses task-based pricing where various tasks in an entire workflow (Zap) are the unit of value. Users subscribe to a certain number of tasks per month with overage options. ^[extracted]

### 3. Labor Replacement
Price comparable to the human labor the AI replaces — per hour of agent work, similar to hiring a consultant. ^[extracted]

This model maps directly to the user's comparison: "Do I hire a person or an agent?" The value is clear because it replaces an existing cost structure the buyer already understands. ^[inferred]

### 4. Outcome-Based
Charge only when the AI delivers a measurable successful outcome. This is not a proxy for ROI — it is the ROI itself. ^[extracted]

**Example: [[entities/intercom|Intercom]] FIN** charges $0.99 per successful customer support ticket resolution. The charge only fires when the end user confirms the answer resolved their query without escalation to a human agent. ^[extracted]

## The Outcome-Based Frontier

Outcome-based pricing is the most discussed and hardest to execute. The core challenge: customer and vendor must align on the definition of the outcome and measure it objectively. ^[extracted]

- **Works well** for clear, simple outcomes like support ticket resolution — "did this resolve your question?" is unambiguous and measurable. ^[extracted]
- **Hard to apply** to creative or less directly measurable domains — what constitutes a successful outcome for a creative writing agent or a strategy advisor? ^[extracted]

Outside customer support, successful examples of outcome-based pricing are still rare. The industry will continue exploring how to define and measure outcomes across diverse domains. ^[extracted]

## Related
- [[concepts/outcome-based-pricing-for-ai]] — Deep dive on outcome-based models
- [[concepts/usage-based-pricing-for-ai]] — Resource and task-based models
- [[concepts/direct-vs-indirect-ai-monetization]] — Whether to charge at all
- [[concepts/pricing-as-friction]] — How pricing friction varies across the spectrum
- [[entities/alvaro-morales]] — Speaker who articulated this framework
- [[references/monetizing-ai-alvaro-morales-orb]] — Source talk

## Sources
- [[references/monetizing-ai-alvaro-morales-orb]] — Alvaro Morales, Orb, AI Engineer World's Fair 2025
