---
title: "Good design hasn't changed with AI — John Pham, SF Compute"
tags:
  - reference
  - talk
  - design
  - ux
  - performance
  - accessibility
  - ai-engineer
sources:
  - "https://www.youtube.com/watch?v=7e7eVtcygCM"
summary: "AI Engineer World's Fair 2025 talk arguing that AI tools do not change the fundamental principles of good design, introducing the four-pillar framework (speed, trust, accessibility, the light) with case studies from SF Compute's GPU cloud onboarding and purchasing experience."
provenance:
  extracted: 0.78
  inferred: 0.18
  ambiguous: 0.04
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Good design hasn't changed with AI

> **Talk:** Good design hasn't changed with AI
> **Speaker:** [[entities/john-pham|John Pham]]
> **Organization:** [[entities/sf-compute|SF Compute]]
> **Event:** AI Engineer World's Fair 2025
> **Source:** [YouTube](https://www.youtube.com/watch?v=7e7eVtcygCM)

## Summary

John Pham argues that despite the rapid advancement of AI tools (prompt engineering, vibe coding), the principles of good design remain unchanged. Design is "how people experience your product" — encompassing every touchpoint from UI to APIs to error messages to docs to tweets. In an era where feature parity is no longer a differentiator (everyone ships daily), the human qualities of design become the competitive edge. ^[extracted]

## The Four Pillars Framework

Pham introduces the [[concepts/design-four-pillars|design four pillars]] framework:

- **Speed** — perceived time, feedback, jank-free. Speed wins the first click. ^[extracted]
- **Trust** — convey state, prevent errors, provide affordances, never lie. Trust keeps them around. ^[extracted]
- **Accessibility** — screen readers, contrast, reduced motion. Accessibility grows TAM. ^[extracted]
- **The Light** — care, user rewards, story. The light turns users into super fans. ^[extracted]

### Case Study: SF Compute Onboarding

SF Compute must comply with US export laws requiring identity verification (SSN, address) — unusual for a cloud provider, creating high friction. Design techniques used to make it feel light: ^[extracted]

1. **Speed**: First paint under 300ms, SSR, caching, 60FPS+, minimal bundles. Gamify Web Vitals (LCP, INP, CLS) as team objective. ^[extracted]
2. **Fog animation**: Event-driven San Francisco fog animation built from a single 14KB transparent cloud image — no third-party JavaScript, just CSS transforms, opacity, and stacking layers. Density controlled by opacity and layer count. ^[extracted]
3. **Trust**: Set expectations ("3 steps, under a minute"), update progress (endowment effect keeps users engaged), opt into extra complexity, auto-pick times, local time zones, honest communication ("not a sales call"). ^[extracted]
4. **Accessibility**: Respect `prefers-reduced-motion` (vestibular disorders), autocomplete attributes, no layout shifts, progressive disclosure, semantic HTML, screen reader testing. ^[extracted]
5. **Delight**: Color psychology (blues/greens slow time perception), peak-end bias — end onboarding by revealing a beautiful San Francisco scene so users remember the ending, not the hardship. ^[extracted]

### Case Study: GPU Habitat Live Feed

A live camera feed into the GPU datacenter showing the exact GPUs the user is about to buy: ^[extracted]

- Stacked divs rendered in browser primitives (not canvas/shaders — "stack divs are very fast on the web") ^[extracted]
- Looping video — small, fast to stream, not looped to avoid motion sickness ^[extracted]
- Panning by translating video within the viewport, zoom via scaling ^[extracted]
- Autocomplete fills, smart defaults, free-form time units (days/hours/weeks), nudge on errors ^[extracted]
- Proactive better pricing — recommending a cheaper configuration even when it reduces revenue ^[extracted]
- GPU tensor core shape as loading state (inside reference for the audience) ^[extracted]

### Prediction Cone

A pattern for nested menus developed at Vercel: instead of requiring precise pointer control to reach submenu items (which collapse on stray cursor movement), the system generates a [[concepts/prediction-cone-ui|prediction cone]] — a geometric shape that maps to user intent, keeping the submenu open across a wider cursor path. Makes interactions feel "supernatural." ^[extracted]

## Key Quotes

> "Design is not the pretty pixels or all of these fancy animations. Design is also owned by everyone. If your title is not a designer, you still own design." ^[extracted]

> "In the age of AI where prompt and vibe coding is a very big thing now, feature parity is no longer a product differentiator. The key differentiator is the very human thing, which is everything that is part of design." ^[extracted]

> "Speed wins the first click, trust keeps them around, accessibility grows your total addressable market, and the light turns users into super fans." ^[extracted]

> "People who vomit during your product experience is not a KPI that you want to increase." ^[extracted] — on respecting prefers-reduced-motion

> "We're not maximizing revenue because we think we should actually show care for our users. By showing care, we actually increase revenue on the long-term horizon." ^[extracted]

## Concepts Introduced

- [[concepts/design-four-pillars]] — Core framework
- [[concepts/perceived-performance-ux]] — Perceived performance design
- [[concepts/prediction-cone-ui]] — Prediction cone UI pattern

## Related

- [[references/critical-ai-inference-cio-trust-telemetrak-2025]] — Complementary AI trust framework (AI Engineer World's Fair 2025)
- [[references/survive-ai-knife-fight-brian-balfour]] — Product differentiation in the age of AI
- [[concepts/pit-of-success-design]] — Related design philosophy

## Sources

- [YouTube: Good design hasn't changed with AI — John Pham, SF Compute](https://www.youtube.com/watch?v=7e7eVtcygCM)
