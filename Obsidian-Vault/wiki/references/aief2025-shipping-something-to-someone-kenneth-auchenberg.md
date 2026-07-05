---
title: AIEF2025 — Shipping something to someone always wins
category: references
tags:
  - aief2025
  - talk
  - product-development
  - iteration
  - feedback-loops
  - shipping
summary: Kenneth Auchenberg (ex-Stripe, VSCode) presents his core product principle: building great products is about rapid iterative feedback loops with real users, not big-bang launches. Uses the skateboard-to-car metaphor and practical tactics from his Stripe days.
sources:
  - AIEF2025 - Shipping something to someone always wins — Kenneth Auchenberg (ex. Stripe, VSCode) - https://www.youtube.com/watch?v=mHzJhXppwUA
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.92
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05T00:00:00Z
updated: 2026-07-05T00:00:00Z
relationships:
  - target: "[[entities/kenneth-auchenberg]]"
    type: related_to
  - target: "[[entities/stripe]]"
    type: related_to
  - target: "[[concepts/rapid-iteration-loop]]"
    type: related_to
  - target: "[[concepts/continuous-viable-product]]"
    type: related_to
---

## Summary

Kenneth Auchenberg's talk at the AI Engineer World's Fair 2025 distills his product-building philosophy into a single principle: shipping something to someone always wins. The core argument is that product success depends not on the number of big-bang launches but on the number of rapid iterative feedback loops you can run with real users.

## Key Arguments

### The Skateboard-to-Car Metaphor

Kenneth contrasts two approaches to building a product:

- **The tired way**: Build wheels, then chassis, then engine, then car. You have no viable product until the very end, no way to get feedback along the journey, and no way to know if incremental improvements are landing.
- **The wired way**: Build a skateboard, then a scooter, then a bike, then add the engine and you have a car. Every step is a continuously viable product that transports a person from A to B and generates real user feedback.

The key insight is that a continuously viable solution is "many, many orders of magnitude more valuable" than a solution that only becomes viable at the end, because it provides feedback along the way and prevents building in a vacuum.

### The Feedback Loop at Stripe

At Stripe, before locking in any major design decisions for new projects, the team ensured a feedback loop was in place with three requirements:

1. Real users who could see something
2. A way to get feedback from them
3. Ability to iterate and ship an improvement

The goal: run the full loop in less than a day, ideally faster. "If you cannot run your loop in a day, your process is broken."

### Practical Tactics

- **Write the launch post first**: Before building anything, write the PRD for Q or the launch blog post. This forces specificity, helps you understand what's being built, how to position it, and how to sell it. At Stripe, they pushed this document to early users for feedback before prototyping.
- **Design the best product first**: Design your ideal product before considering constraints like legal, compliance, and financials. Legal counterparts help you understand risks but should not shape the product — you make those calls.
- **Prototype everything**: In 2025, there is "no excuse" not to prototype. Whether you're a product leader or engineer, you can use tools like Bolt to hack something together fast.
- **Get high-quality feedback**: Don't just slap on metrics and pull a dashboard. Shadow customers integrating APIs, get them into Slack or Discord, text with them directly. Monitor API responses to see where people get stuck.
- **Feel like a professional services firm**: When you do this well, you should feel like you're running a professional services firm — deeply invested in making a very few set of users extremely happy.

### Open Questions

- How does the skateboard-to-car metaphor scale to complex enterprise platforms with multiple stakeholders?
- Can the "loop in a day" goal be achieved in larger organizations with more complexity, or does it require organizational isolation?
- How does Kenneth's approach translate to AI-native product development specifically, versus general product development?
