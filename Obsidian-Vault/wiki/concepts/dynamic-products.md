---
title: Dynamic Products
category: concepts
tags:
- ai
- product-strategy
- methodology
- architecture
aliases:
- crawl-walk-run AI integration
- dynamic AI products
sources:
- 'https://www.youtube.com/watch?v=pthmdt92qng'
summary: 'The North Star for AI product integration: AI features that are deeply and dynamically integrated into the product ecosystem, responsive to environment and user context, achieved through a crawl-wa...'
provenance:
  extracted: 0.75
  inferred: 0.22
  ambiguous: 0.03
base_confidence: 0.6
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-04
---

# Dynamic Products

**Dynamic products** are the North Star for AI product design — products where AI is deeply and dynamically integrated into the product ecosystem, responsive to user context and environment. The concept was introduced by [[entities/eliza-cabrera|Eliza Cabrera]] ([[entities/workday|Workday]]) and [[entities/jeremy-silva|Jeremy Silva]] ([[entities/freeplay|Freeplay]]) at AI Engineer World's Fair 2025 as the alternative to the [[concepts/ai-sideshow]] anti-pattern. ^[extracted]

## The Crawl-Walk-Run Framework

The path from bolt-on AI to dynamic products follows a three-stage maturity model, where each stage builds on the previous without throwing functionality away:

### Crawl: Embedded AI Experiences

Start by adding AI on the back end without building much new product surface area. Accentuate and accelerate existing functionality rather than rethinking the UX. ^[extracted]

**Example (customer support SaaS):** Build semantic search that surfaces previous similar questions to help agents respond faster. ^[inferred]

**Workday's example:** AI-powered knowledge base content generation (ingesting policy PDFs to create employee FAQs) and one-click translations into 34 languages, built as panel features in the existing editor, not as a separate chatbot. ^[extracted] The features used AI but didn't announce themselves — users could benefit without understanding they were using Gen AI. ^[extracted]

### Walk: Contextual and Personalized AI

Start building new product surface area, but don't yet need to fundamentally rethink core app architecture or UX. AI features become contextually aware and personalized. ^[extracted]

**Example (customer support SaaS):** Pre-drafted responses ready for the agent before they open a ticket. ^[inferred]

**Workday's example:** The Workday Assistant — a contextually aware copilot that knows what page the user is on and provides relevant suggestions while handling sensitive PII and working across the HCM and financials suite. This required platform-level coordination across product teams (benefits, procurement, core HCM). ^[extracted]

### Run: Dynamic, Interoperable, Integrated AI

This is where you start to fundamentally rethink UI, UX, and app architecture. AI operates autonomously and proactively across the product suite. ^[extracted]

**Example (customer support SaaS):** An autonomous agent that can triage issues and respond to customers, operating across the full product feature set. ^[inferred]

**Workday's example:** The agent system of record — the Workday Assistant becomes autonomous and proactive, listening to policy changes, notifying users with suggestions, and threading AI across the entire platform (serving ~60% of the S&P 500). ^[extracted]

## Hallmarks of Dynamic Products

- **Don't announce themselves as AI** — The customer problem is the focus, not the technology. ^[extracted]
- **Solve customer problems better** than what came before, rather than inventing new problems for AI to solve. ^[extracted]
- **Environmentally responsive** — As new data inputs and modalities (multimodal) become available, the product's problem space extends naturally. ^[extracted]
- **Interoperable** — AI features work across the product suite, not in isolated silos. ^[extracted]
- **Iterative maturity** — The organization matures through crawl-walk-run, training itself on what building impactful AI experiences means. ^[extracted]

## The Strategic Imperative

Dynamic products are the answer to the [[concepts/ai-sideshow]] problem. The quote from the talk captures the strategy: "Understand that [crawl, walk, run] are stepping stones in terms of teaching your organization, training up your organization on what it means to actually be building impactful AI experiences." ^[extracted] As organizations mature, dynamic products open new problem spaces by digitizing new data and inputs, making the product responsive to its environment in ways static products cannot be. ^[inferred]

## Related Pages

- [[concepts/ai-sideshow]] — The anti-pattern dynamic products replace
- [[concepts/build-operate-divide]] — Related operational framework for scaling AI
- [[concepts/ai-iteration-loop]] — The operational loop that powers the crawl-walk-run progression
- [[concepts/agentic-architecture]] — Architectural patterns that enable the "run" phase
- [[concepts/multimodal-agent-architecture]] — New input modalities that extend the problem space
- [[concepts/human-in-the-loop-regulated-ai]] — Keeping humans in the loop during the progressive integration

## Sources

- [[references/aief2025-build-dynamic-products-stop-ai-sideshow|Build Dynamic Products, and Stop the AI Sideshow — AI Engineer World's Fair 2025]]
