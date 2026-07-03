---
title: "Workday"
category: entities
tags:
  - company
  - enterprise-software
  - hcm
  - financials
  - ai
sources:
  - "AIEF2025 - Build Dynamic Products, and Stop the AI Sideshow — Eliza Cabrera (Workday) + Jeremy Silva (Freeplay) - https://www.youtube.com/watch?v=CB-4NKDYnRs"
summary: "Enterprise cloud software company providing HCM, financials, and planning services. Serves approximately 60% of the S&P 500. Has progressively integrated Gen AI capabilities from embedded features to an agent system of record."
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Workday

Workday is an enterprise cloud software company providing human capital management (HCM), financial management, and planning services. According to [[entities/eliza-cabrera|Eliza Cabrera]], Workday serves "like 60% of the S&P 500." ^[extracted]

## AI Product Evolution

Workday's Gen AI product journey was presented by Eliza Cabrera as a real-world example of the [[concepts/dynamic-products|crawl-walk-run framework]]:

### Crawl Phase (Embedded AI, 2023–2024 R2)

AI features embedded into existing product surface area without a separate AI UI:
- AI-powered knowledge base ingestion — content authors upload 20+ page policy PDFs, and the AI creates employee FAQs and talking points for managers in a consistent format ^[extracted]
- One-click translations across 34 languages from the knowledge base editor, with version management for the base article and each translated variant ^[extracted]
- Users could benefit without knowing they were using Gen AI — features used purple sparkles as AI indicators but weren't the entire experience ^[extracted]

### Walk Phase (Contextual AI, 2024)

The Workday Assistant — a contextually aware copilot that lives across Workday's suite:
- Provides contextual suggestions based on what page the user is on ^[extracted]
- Handles sensitive PII (pay, compensation) — a higher risk tier than knowledge base content ^[extracted]
- Required platform-level cross-suite coordination across HCM and financials teams (benefits, procurement, core HCM) ^[extracted]
- Top-down strategy with bottoms-up execution to thread the needle across product experiences ^[extracted]

### Run Phase (Agentic AI, 2025)

The agent system of record: the Workday Assistant becomes autonomous and proactive:
- Listens to policy changes and notifies users with suggestions ^[extracted]
- Extends the same employee self-service use case with agentic capabilities behind the scenes ^[extracted]
- Users don't need to understand "agents" — the work happens behind the scenes ^[extracted]
- Requires threading AI across the entire Workday platform ^[extracted]

## Key People

- [[entities/eliza-cabrera]] — Principal AI Product Manager

## Related Pages

- [[entities/eliza-cabrera]] — The PM leading Workday's AI products
- [[concepts/dynamic-products]] — The framework Workday's journey exemplifies
- [[concepts/ai-sideshow]] — The anti-pattern Workday's integrated approach avoids
- [[entities/freeplay]] — Freeplay helped identify the broader AI sideshow pattern

## Sources

- [[references/aief2025-build-dynamic-products-stop-ai-sideshow|Build Dynamic Products, and Stop the AI Sideshow — AI Engineer World's Fair 2025]]
