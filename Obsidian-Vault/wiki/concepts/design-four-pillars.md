---
title: "Design Four Pillars"
tags:
  - design-philosophy
  - ux
  - framework
  - product-design
aliases: [four pillars of design, speed trust accessibility light]
sources:
  - "[[sources/watchv=7e7evtcygcm]]"
summary: "A design framework articulating four pillars of product experience: Speed (perceived performance), Trust (state communication, error prevention, affordances), Accessibility (inclusive design), and The Light (delight, care, and memorable moments)."
provenance:
  extracted: 0.65
  inferred: 0.30
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Design Four Pillars

The four pillars of design, articulated by [[entities/john-pham|John Pham]] ([[entities/sf-compute|SF Compute]]), are a framework for building products that people love to use. In an era where AI enables rapid feature development, feature parity is no longer a differentiator — design is the human edge. ^[extracted]

The slogan: **Speed wins the first click, trust keeps them around, accessibility grows your total addressable market, and the light turns users into super fans.** ^[extracted]

## The Pillars

### 1. Speed

Speed is about perceived time, feedback, and absence of jank. The goal: make the product feel so fast the user does not feel slowed down by it. ^[extracted]

- First paint under 300ms (human perception threshold is ~400ms) ^[extracted]
- 60FPS+ experiences — no stutters, no jank ^[extracted]
- SSR, caching, minimal bundle sizes, minimal external assets ^[extracted]
- Track and gamify Web Vitals (LCP, INP, CLS) as team objective function ^[extracted]
- [[concepts/perceived-performance-ux]] — Dedicated concept on perceived performance

### 2. Trust

Trust means the product conveys its state honestly, prevents errors, provides affordances, and never lies. The product should care about the user and forgive their mistakes. ^[extracted]

- Set clear expectations ("this will take 3 steps and under a minute") ^[extracted]
- Update progress — the endowment effect keeps users engaged once they've started ^[extracted]
- Let users opt into complexity (e.g., "business account requires one extra step") rather than forcing it ^[extracted]
- Pick defaults for the user (auto-pick meeting times, local time zones) ^[extracted]
- Be honest — if you're not the right solution, recommend alternatives ^[extracted]
- Show care over revenue — proactively save users money even at short-term cost ^[extracted]

### 3. Accessibility

Design for everyone because products are built to be useful, and usefulness should be enjoyed by everyone. ^[extracted]

- Respect `prefers-reduced-motion` — motion can trigger vomiting in people with vestibular disorders ^[extracted]
- Semantic HTML, proper labels on every input ^[extracted]
- `autocomplete` attributes on all form inputs — let browsers auto-fill ^[extracted]
- No layout shifts (CLS = 0) — buttons shouldn't move as user clicks ^[extracted]
- [[concepts/progressive-disclosure-forms|Progressive disclosure]] to reduce cognitive load ^[extracted]
- Test with screen readers ^[extracted]

### 4. The Light (Delight)

The light is what makes unique experiences enjoyable and memorable. It contributes to how a person will remember and share your product. ^[extracted]

- **Care** — show users you value them over short-term revenue (e.g., proactively offer better pricing) ^[extracted]
- **User rewards** — the peak-end psychological bias: end the experience on a high note so the hardship disappears from memory ^[extracted]
- **Story** — lean into metaphors and visual devices that create an emotional connection ^[extracted]

## Application

Pham applied this framework at SF Compute to make a legally required identity verification flow feel light: fog animation, expectation setting, three-step progressive disclosure, and a peak-end culmination revealing a beautiful San Francisco scene. ^[extracted]

## Related

- [[concepts/perceived-performance-ux]] — Speed pillar
- [[concepts/prediction-cone-ui]] — UI pattern for trust and speed
- [[concepts/pit-of-success-design]] — Related design philosophy for trust
