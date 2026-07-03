---
title: "Perceived Performance UX"
tags:
  - performance
  - ux
  - frontend
  - web-vitals
aliases: [perceived time design, perceived performance, performance perception]
sources:
  - "AI Engineer World's Fair 2025 - Good design hasn't changed with AI — John Pham, SF Compute - https://www.youtube.com/watch?v=7e7eVtcygCM"
summary: "Design techniques for making software feel fast to users, centered on the observation that humans perceive events under ~400ms as instantaneous — first paint, 60FPS, minimal bundles, SSR, caching, and color psychology as perception modifiers."
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

# Perceived Performance UX

Perceived performance UX is the practice of designing software to feel fast, not just to be fast. [[entities/john-pham|John Pham]] ([[entities/sf-compute|SF Compute]]) articulates a set of concrete techniques centered on the human perception threshold: most humans can only perceive events under ~400ms as instantaneous. ^[extracted]

## Key Thresholds and Techniques

### First Paint Under 300ms

The first paint should happen in under 300ms — a buffer below the 400ms human perception threshold. Achieved through: ^[extracted]

- Server-side rendering of critical content
- Aggressive caching
- Minimizing bundle size and external assets shipped to the client
- Every additional megabyte shipped measurably degrades user experience and business metrics (studies show e-commerce revenue drops with page size) ^[extracted]

### 60FPS+ Experiences

All animations and interactions should run at 60FPS+ with no stutters or jank. The experience should feel fluid. ^[extracted]

### Gamify Web Vitals

Track LCP (Largest Contentful Paint), INP (Interaction to Next Paint), and CLS (Cumulative Layout Shift) as a team scoreboard. The team's objective function is to reduce these scores over time. ^[extracted]

## Browser Primitives Over Third-Party JavaScript

A recurring theme: use browser primitives (CSS transforms, opacity, stacking, HTML elements) instead of shaders/canvas/third-party JS for animations and effects. ^[extracted] Examples:

- **Fog animation**: 14KB single transparent cloud image, duplicated with offset transforms, variable opacity, and variable speed — no third-party JS ^[extracted]
- **GPU habitat feed**: stacked divs instead of canvas — "stack divs are very fast on the web, shaders and canvas are very slow" ^[extracted]
- **Prediction cone**: geometric computation, no heavy rendering pipeline ^[extracted]

## Color Psychology and Time Perception

Colors (particularly blues and greens) can slow down a person's perception of time. This is used intentionally in interfaces where the user should not rush through important flows (e.g., identity verification during onboarding). ^[extracted] ^[ambiguous]

## Related

- [[concepts/design-four-pillars]] — Speed is the first pillar
- [[concepts/prediction-cone-ui]] — UI pattern optimized for perceived performance
- [[concepts/pit-of-success-design]] — Design philosophy for making correct paths frictionless
