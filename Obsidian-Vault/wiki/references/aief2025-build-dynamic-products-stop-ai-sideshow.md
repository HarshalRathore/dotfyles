---
title: "Build Dynamic Products, and Stop the AI Sideshow — Eliza Cabrera (Workday) + Jeremy Silva (Freeplay)"
category: references
tags:
  - reference
  - talk
  - aief2025
  - product-strategy
  - ai-integration
  - crawl-walk-run
sources:
  - "[[sources/watchv=cb-4nkdynrs]]"
summary: "AI Engineer World's Fair 2025 talk by Eliza Cabrera (Workday) and Jeremy Silva (Freeplay) arguing against bolt-on AI features and presenting the crawl-walk-run framework for deeply integrating AI into products."
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.65
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Build Dynamic Products, and Stop the AI Sideshow

> [!tldr] Teams fall into the "AI sideshow" trap — building bolt-on AI features that demonstrate capability rather than solving customer problems. The alternative is a crawl-walk-run progression: start with embedded AI in existing UX, then build contextual AI, then evolve to autonomous agents.

**Speakers:** [[entities/eliza-cabrera|Eliza Cabrera]] (Principal AI PM, [[entities/workday|Workday]]), [[entities/jeremy-silva|Jeremy Silva]] (Product Lead, [[entities/freeplay|Freeplay]])
**Event:** AI Engineer World's Fair 2025
**Source:** [YouTube](https://www.youtube.com/watch?v=CB-4NKDYnRs)

## Summary

The talk diagnoses why so many AI products feel bolt-on and undifferentiated: companies create centralized AI strategies that run as sidecars to core product strategy, resulting in non-integrated features. The solution is to deeply integrate AI into product planning through a crawl-walk-run maturity model. Eliza Cabrera illustrates the framework through Workday's real product evolution — from AI-powered knowledge base features (crawl), to the contextually aware Workday Assistant (walk), to the agent system of record (run).

## Key Arguments

### 1. The AI Sideshow

The central problem: companies create centralized AI strategies that "start running as this sort of sidecar to their core product strategy, rather than the two be deeply integrated." ^[extracted] This produces bolt-on, non-differentiated AI features that feel disconnected from the core product experience. ^[extracted]

### 2. Three Causes of the Sideshow

- **Risk quarantining** — Companies seek to mitigate AI risk by isolating it to corners of the product rather than integrating risk management ^[extracted]
- **Technology first, customer second** — Teams become "the hammer in search of the nail," building chatbots and summarizers because they demonstrate AI capability, not because customers need them ^[extracted]
- **Top-down solutions** — Pushing solutions down from leadership rather than enabling bottoms-up discovery ^[extracted]

### 3. How to Avoid the Sideshow

- **Integrate AI risk into planning** — Build evaluation and testing systems to wrap arms around the risk ^[extracted]
- **Start with the customer problem** — Don't invent new problems for AI; make existing experiences better ^[extracted]
- **Enable bottoms-up discovery** — Set top-line strategy and let product teams find the right applications through experimentation ^[extracted]

### 4. The Crawl-Walk-Run Framework

The core maturity model for AI product integration:

| Phase | Approach | Workday Example |
|-------|----------|-----------------|
| **Crawl** | Embedded AI in existing UX, no new surface area | KB content gen + translations in editor |
| **Walk** | Contextual AI, new surface area, cross-suite integration | Workday Assistant (contextually aware copilot) |
| **Run** | Autonomous, proactive AI, rethought UX and architecture | Agent system of record (proactive, policy-aware) |

Each phase builds on the previous — functionality is extended, not thrown away. ^[extracted]

### 5. The Hallmark of Success

> "AI products that need not announce themselves as AI, but rather just solve the customer problem better than what came before." ^[extracted]

This is the defining characteristic of successful AI integration — when the customer doesn't need to think about the technology at all.

## Key Takeaways

1. The **AI sideshow** is the anti-pattern of treating AI as a separate initiative — it produces bolt-on, non-differentiated features ^[extracted]
2. **Risk quarantining** is a natural but counterproductive response to AI reliability concerns ^[extracted]
3. The **crawl-walk-run framework** gives teams a progressive path from embedded AI to autonomous agents ^[extracted]
4. Each phase extends, not replaces, the previous phase — you're "building functionality as you go" ^[extracted]
5. Successful AI integration is invisible — the customer problem is solved better without the user needing to know about the AI ^[extracted]
6. **Bottoms-up discovery** with top-down strategy alignment is the organizational model that enables dynamic products ^[extracted]
7. Workday's evolution from KB features to agent system of record demonstrates the framework in practice at enterprise scale (~60% of S&P 500) ^[extracted]

## Pages Created from This Source

- [[concepts/ai-sideshow]] — The anti-pattern of bolt-on AI
- [[concepts/dynamic-products]] — The crawl-walk-run framework and product vision
- [[entities/eliza-cabrera]] — Principal AI PM at Workday
- [[entities/jeremy-silva]] — Product lead at Freeplay
- [[entities/workday]] — Enterprise HCM/financials platform

## Pages Updated from This Source

- [[entities/freeplay]] — Added Jeremy Silva's product lead role and this talk

## Related Pages

- [[concepts/build-operate-divide]] — Jeremy Silva's other talk on AI operational challenges
- [[concepts/ai-iteration-loop]] — The operational loop needed to execute the crawl-walk-run progression
- [[concepts/quality-chasm-in-ai]] — The V1-to-V2 gap the sideshow exacerbates

## Sources

- [YouTube: Build Dynamic Products, and Stop the AI Sideshow](https://www.youtube.com/watch?v=CB-4NKDYnRs) — AI Engineer World's Fair 2025
