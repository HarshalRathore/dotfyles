---
title: Continuous Viable Product
category: concepts
tags:
- product-development
- iteration
- viable-product
- mvp
- shipping
summary: A product that provides value at every iteration stage — every step is a functioning product that transports a user from A to B, enabling continuous feedback rather than waiting for a finished prod...
sources:
- AIEF2025 - Shipping something to someone always wins — Kenneth Auchenberg (ex. Stripe, VSCode) - https://www.youtube.com/watch?v=mHzJhXppwUA
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.9
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05 00:00:00+00:00
updated: 2026-07-05 00:00:00+00:00
relationships:
- target: '[[concepts/rapid-iteration-loop]]'
  type: related_to
- target: '[[concepts/ai-iteration-loop]]'
  type: extends
- target: '[[concepts/poc-hell]]'
  type: contradicts
---

## Definition

A continuous viable product is a product development approach where every iteration produces a functioning product that provides real value to users — not just a component or prototype that becomes useful only when all pieces are assembled. The product is viable from the first iteration onward, enabling continuous user feedback at every step of development.

## The Skateboard-to-Car Model

Kenneth Auchenberg's central metaphor illustrates this concept:

- **Non-viable approach**: Build individual components (wheels, chassis, engine) in isolation. No viable product exists until all pieces are assembled. No feedback possible until the end.
- **Continuous viable approach**: Build a skateboard (viable), then a scooter (viable), then a bike (viable), then a car (viable). Every step is a product that transports a person from A to B.

The key insight: a continuously viable solution is "many, many orders of magnitude more valuable" than a solution that only becomes viable at the end, because feedback is continuous rather than deferred.

## Contrast with Traditional MVP

While the Minimum Viable Product concept shares DNA with continuous viability, the distinction is important:

- **MVP**: A single initial product with minimal features, followed by iterations. The first iteration is the MVP; subsequent iterations add features.
- **Continuous viable product**: Every iteration is itself a viable product. There is no "pre-MVP" phase — from day one, users are getting value.

## Implications for AI Product Development

Kenneth argues this is especially critical in the AI era because:

1. AI tools dramatically reduce the cost of each iteration
2. The feedback loop itself is the competitive advantage — faster learning beats better initial design
3. Building in a vacuum (no feedback until the end) is the primary risk in AI product development

## Related Concepts

- [[concepts/rapid-iteration-loop|Rapid Iteration Loop]] — The operational mechanism that enables continuous viable products
- [[concepts/poc-hell|POC Hell]] — The opposite state: products stuck in prototype phase, never becoming viable
- [[concepts/ai-iteration-loop|AI Iteration Loop]] — The broader concept of iterative feedback in AI development
