---
title: "AI Sideshow"
category: concepts
tags:
  - ai
  - product-strategy
  - anti-pattern
  - methodology
sources:
  - "https://www.youtube.com/watch?v=cb-4nkdynrs"
summary: "The anti-pattern of treating AI as a separate, bolt-on initiative running as a sidecar to core product strategy rather than deeply integrating it into product planning and customer problem-solving."
provenance:
  extracted: 0.80
  inferred: 0.18
  ambiguous: 0.02
base_confidence: 0.65
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# AI Sideshow

The **AI sideshow** is the anti-pattern of treating AI as a separate initiative that runs as a sidecar to core product strategy, rather than integrating AI deeply into product planning. Coined by [[entities/eliza-cabrera|Eliza Cabrera]] ([[entities/workday|Workday]]) and [[entities/jeremy-silva|Jeremy Silva]] ([[entities/freeplay|Freeplay]]) at AI Engineer World's Fair 2025, it describes what happens when "companies know they rightly need to prioritize AI, but the way they do that is by creating this sort of centralized AI strategy" that runs disconnected from the core product strategy. ^[extracted]

## Causes

The AI sideshow arises from three interrelated patterns:

1. **Risk Quarantining** — Companies seek to mitigate AI risk by quarantining it into specific corners of the product. Teams treat AI reliability as an unsolvable problem and isolate AI features rather than integrating AI risk management into standard product planning. ^[extracted]

2. **Technology-First Approach** — Teams prioritize the technology over customer needs, becoming "the hammer in search of the nail." They build features that demonstrate AI capability rather than solve actual customer problems. ^[extracted] Manifestations include building chatbots because they demonstrate AI capability (not because customers struggle with support) and document summarization because it shows what the tech can do (not because users suffer from information overload). ^[extracted]

3. **Top-Down Solution Pushing** — Companies push AI solutions from the top down rather than setting top-level strategy and letting bottoms-up discovery manifest that priority. "It's likely your product folks who are boots on the ground every day, who understand the right solutions here" — they need space to experiment, prototype, and fail fast. ^[extracted]

## Consequences

- Non-differentiated AI products that feel bolt-on rather than natural
- Proliferation of disconnected AI features across the product suite
- Customer confusion about value proposition — AI that "announces itself as AI" rather than simply solving the problem better ^[inferred]
- Missed opportunities for deeply integrated product experiences

## The Cure

Avoiding the AI sideshow requires three shifts:

1. **Integrate AI risk into planning** — Rather than shying away from AI reliability risk and quarantining it, build evaluation and testing systems that give teams confidence to ship AI features as part of the core product. ^[extracted]

2. **Start with the customer problem** — If you're inventing new problems to solve with AI, you've gone astray. The hallmark of successful AI integration is "AI products that need not announce themselves as AI, but rather just solve the customer problem better than what came before." ^[extracted]

3. **Enable bottoms-up discovery** — Set top-line strategy but allow product teams to discover the right AI applications through experimentation. ^[extracted]

## The Crawl-Walk-Run Alternative

Rather than building a separate AI initiative, teams should use the [[concepts/dynamic-products|crawl-walk-run framework for dynamic products]]: start with embedded AI experiences (crawl), build contextual and personalized AI (walk), then evolve to dynamic, interoperable integrated AI (run). At each stage, AI functionality builds on and extends the previous stage rather than being replaced. ^[extracted]

## Related Pages

- [[concepts/dynamic-products]] — The North Star alternative to the sideshow
- [[concepts/build-operate-divide]] — Related operational gap that sideshows create
- [[concepts/ai-iteration-loop]] — The operational loop needed to avoid the sideshow
- [[concepts/quality-chasm-in-ai]] — The V1-to-V2 quality gap sideshows exacerbate
- [[entities/eliza-cabrera]] — Co-author of the concept
- [[entities/jeremy-silva]] — Co-author of the concept
- [[entities/freeplay]] — Company that helped identify the pattern

## Sources

- [[references/aief2025-build-dynamic-products-stop-ai-sideshow|Build Dynamic Products, and Stop the AI Sideshow — AI Engineer World's Fair 2025]]
