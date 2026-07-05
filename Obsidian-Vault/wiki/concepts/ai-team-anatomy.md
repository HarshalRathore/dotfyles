---
title: "AI Team Anatomy"
category: concepts
tags: [ai-team, ml-team, org-design, ai-engineering, responsibilities]
aliases: [what an ai team does, ai team responsibilities]
relationships:
  - target: "[[concepts/ai-hiring-trade-offs]]"
    type: related_to
  - target: "[[concepts/generalist-vs-specialist]]"
    type: related_to
  - target: "[[concepts/company-type-spectrum]]"
    type: related_to
sources:
  - "[[sources/watchv=sbuxrluvrwk]]"
summary: "The comprehensive set of responsibilities an AI team must handle: use case definition, product integration, ROI measurement, data strategy, workflow refinement, interface building, and go-to-market."
provenance:
  extracted: 0.95
  inferred: 0.03
  ambiguous: 0.02
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# AI Team Anatomy

The full set of responsibilities that a comprehensive AI team must handle within an organization. Articulated by [[entities/denys-linkov|Denys Linkov]] at AIEF2025 as evidence that AI team building is a multi-disciplinary effort — not something one AI researcher can accomplish alone. ^[extracted]

## What an AI Team Must Do

Linkov identifies these core responsibilities for an AI team:

1. **Define use cases** — Identify where AI can create value in the organization
2. **Integrate with products** — Most work is brownfield, not greenfield; AI must fit into existing products
3. **Measure ROI** — Quantify the business impact of AI initiatives
4. **Find the right data** — Data strategy and data acquisition
5. **Test and refine workflows** — Iterate on AI-powered workflows
6. **Build interfaces** — Create the UX and tooling for AI features
7. **Sell the product** — Go-to-market and customer adoption
8. **Make customers care** — Drive engagement and value realization

## The Key Insight: No Single Person Does All This

The critical point is that **no single job title owns all of these responsibilities**. You cannot hire an AI researcher and tell them to "go make me $10 million from this product" — unless you are in a very specific niche. ^[extracted]

This means:
- AI team building is a **comprehensive organizational effort**, not a hiring decision for one role
- Success requires a **team structure** that covers all these areas
- The organization is not just one AI team in isolation — shipping the org chart creates "weird product behaviors"
- Different parts of the organization need different AI capabilities

## Implications for Team Structure

Because no single person handles all these responsibilities, AI teams should be structured to cover:
- Technical capability (use cases, integration, data, testing)
- Product capability (interfaces, product integration)
- Business capability (ROI, selling, customer engagement)

This supports the generalist hiring approach — generalists who can span multiple of these areas are more valuable than specialists who focus on one. ^[inferred]

## Related

- [[concepts/ai-hiring-trade-offs|AI Hiring Trade-offs]] — Evaluating skills along training, serving, business axes
- [[concepts/generalist-vs-specialist|Generalist vs. Specialist Hiring]] — Why generalists cover more of these areas
- [[concepts/ai-team-bottleneck-identification|AI Team Bottleneck Identification]] — What's actually stopping success
- [[concepts/ml-team-building|Building the First ML Team]] — Platform investment strategy
- [[entities/denys-linkov|Denys Linkov]] — Source of this framework
