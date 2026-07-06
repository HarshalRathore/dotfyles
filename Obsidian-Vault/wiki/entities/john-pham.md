---
title: John Pham
tags:
- person
- designer
- ux
- performance
sources:
- 'https://www.youtube.com/watch?v=7e7evtcygcm'
summary: Designer and engineer at SF Compute, previously at Vercel. Known for building memorable and viral web experiences, creator of the prediction cone UI pattern and the four-pillar design framework.
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: entities
---

# John Pham

John Pham is a designer and engineer at [[entities/sf-compute|SF Compute]] (San Francisco Compute Company), a GPU cloud provider. He previously worked at [[entities/vercel|Vercel]]. He is known for building visually memorable and viral web experiences. ^[extracted]

## Design Philosophy

Pham argues that despite advances in AI tools, the principles of good design have not changed. He defines design as "how people experience your product" across every touchpoint — not just UI pixels but APIs, error messages, docs, emails, and tweets. ^[extracted]

He articulates a [[concepts/design-four-pillars|four-pillar design framework]]: speed, trust, accessibility, and "the light" (delight). The slogan: speed wins the first click, trust keeps them around, accessibility grows your total addressable market, and the light turns users into super fans. ^[extracted]

## Notable Work

- **SF Compute onboarding** — legally-required identity verification flow made to feel light through design: event-driven fog animation (single 14KB image, no third-party JS), expectation setting, progressive disclosure, peak-end bias culmination ^[extracted]
- **GPU habitat live feed** — live camera feed into GPU datacenter rendered with stack divs and browser primitives, no canvas/shaders, animated via video translation within viewport ^[extracted]
- **Prediction cone** — [[concepts/prediction-cone-ui|prediction cone]] pattern for nested menus that maps to user intent, eliminating janky pointer requirements ^[extracted]
- **GPU loading state** — tensor core shape as loading indicator for GPU buyers ^[extracted]

## Key Techniques

Pham emphasizes: first paint under 300ms (human perception threshold is ~400ms), 60FPS+ experiences, SSR, caching, minimal bundles, no third-party JavaScript where possible, browser primitives for animation, respecting `prefers-reduced-motion`, semantic HTML, autocomplete attributes, progressive disclosure, and the peak-end psychological bias to end experiences on a high note. ^[extracted]

## Related

- [[concepts/perceived-performance-ux]] — Perceived performance design, a pillar of Pham's framework
- [[concepts/design-four-pillars]] — His four-pillar framework
- [[concepts/prediction-cone-ui]] — The prediction cone pattern
