---
title: "SF Compute (San Francisco Compute Company)"
tags:
  - company
  - cloud
  - gpu
  - infrastructure
aliases: [San Francisco Compute Company, SF Compute]
sources:
  - "AI Engineer World's Fair 2025 - Good design hasn't changed with AI — John Pham, SF Compute - https://www.youtube.com/watch?v=7e7eVtcygCM"
summary: "GPU cloud provider based in San Francisco. Known for a design-forward onboarding experience that makes legally required compliance friction feel light through event-driven fog animations, expectation setting, and progressive disclosure."
provenance:
  extracted: 0.80
  inferred: 0.18
  ambiguous: 0.02
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# SF Compute

SF Compute (San Francisco Compute Company) is a cloud provider for GPUs. Because it operates in the US, it must comply with US export laws that restrict which countries can purchase GPUs. This creates a design challenge: users are asked for sensitive personal information (SSN, address) during onboarding, atypical for a cloud provider. ^[extracted]

## Design Philosophy

SF Compute's engineering team, led by [[entities/john-pham|John Pham]], treats design as central to the product experience. The onboarding flow is a showcase of [[concepts/design-four-pillars|four-pillar design]]:

- **Speed**: Server-side rendering, caching, minimal bundles, 60FPS+ animations, first paint under 300ms ^[extracted]
- **Trust**: Expectation setting ("3 steps, under a minute"), honest communication (not a sales call), auto-picking times for users, local time zones ^[extracted]
- **Accessibility**: Respecting `prefers-reduced-motion`, autocomplete attributes on all form inputs, semantic HTML, no layout shifts, progressive disclosure ^[extracted]
- **The Light (delight)**: Event-driven fog animation of San Francisco (single 14KB image, no third-party JS), peak-end bias culmination revealing a beautiful city scene ^[extracted]

## Product

The GPU purchasing interface features a "GPU habitat" — a live camera feed into the datacenter rendered purely with stacked divs and browser primitives (no canvas or shaders), showing the actual GPUs the user is about to buy. The video is a small, fast-streaming loop. Panning and zooming works by translating/re-scaling the video within the viewport. ^[extracted]

SF Compute does not maximize short-term revenue: they proactively suggest better pricing when a user's spec allows it, even when it means making less on the order. ^[extracted] This is a deliberate design decision to build long-term trust.

## Related

- [[entities/john-pham]] — Designer/engineer behind the onboarding experience
- [[concepts/design-four-pillars]] — Design framework used throughout the product
- [[concepts/perceived-performance-ux]] — Performance design approach
- [[concepts/prediction-cone-ui]] — UI pattern used in SF Compute's interfaces
