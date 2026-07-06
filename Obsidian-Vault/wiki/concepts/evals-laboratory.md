---
title: Evals as Laboratory
category: concepts
tags:
- evals
- experimentation
- iteration
- production-ai
- braintrust
sources:
- AIEF2025 - Why should anyone care about Evals? — Manu Goyal, Braintrust - https://www.youtube.com/watch?v=jJ45Yz1lJao
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/ai-iteration-loop|AI Iteration Loop]]'
  type: enables
- target: '[[concepts/eval-driven-development|Eval-Driven Development]]'
  type: implements
- target: '[[concepts/ship-confidently|Ship Confidently]]'
  type: supports
summary: Evals as Laboratory
---

# Evals as Laboratory

Evals function as a laboratory for experimentation — a safe environment where you can run changes and measure their impact before deploying to production. This reframes evals from a gatekeeping mechanism to a creative engine. ^[extracted]

## The Laboratory Analogy

Without evals, the only way to get signal on changes is by shipping to production and observing real-world outcomes. This approach is expensive, slow, and risky. ^[extracted]

With good evals, you build a laboratory where you can:

- Run experiments freely without production risk
- Complete approximately 90% of the product iteration loop offline
- Iterate rapidly and confidently before any deployment
- Discover which production examples would be most valuable for the next cycle ^[extracted]

## Implications for Development Velocity

The laboratory framing means evals directly accelerate development velocity. Teams that invest in eval infrastructure can ship more frequently and with greater confidence, because they have moved the bulk of their learning cycle into a safe, fast, cheap environment. ^[extracted]

This is the inverse of the traditional "build → ship → measure" cycle. Instead: "experiment → measure → ship only what's proven." ^[inferred]

## Relationship to Other Concepts

The laboratory concept is the operational heart of [[concepts/eval-driven-development|eval-driven development]] and the mechanism that makes [[concepts/ship-confidently|shipping confidently]] possible. It is also the engine of the [[concepts/ai-iteration-loop|AI iteration loop]], providing the experiment and measure stages. ^[inferred]

## Related

- [[concepts/eval-driven-development|Eval-Driven Development]] — The methodology that uses evals as the primary development driver
- [[concepts/ai-iteration-loop|AI Iteration Loop]] — The cycle the laboratory accelerates
- [[concepts/ship-confidently|Ship Confidently]] — The outcome of investing in eval infrastructure
- [[concepts/data-flywheel|Data Flywheel]] — The broader loop the laboratory feeds into
