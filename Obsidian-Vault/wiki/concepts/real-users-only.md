---
title: Real Users Only
category: concepts
tags:
- user-research
- product-development
- feedback-loops
- personas
- ux
summary: The principle that feedback loops require real people with names, emails, and phone numbers — not personas or abstract user segments. You must know your users personally and understand how they sol...
sources:
- AIEF2025 - Shipping something to someone always wins — Kenneth Auchenberg (ex. Stripe, VSCode) - https://www.youtube.com/watch?v=mHzJhXppwUA
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.92
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05 00:00:00+00:00
updated: 2026-07-05 00:00:00+00:00
relationships:
- target: '[[concepts/rapid-iteration-loop]]'
  type: extends
- target: '[[concepts/high-bandwidth-feedback]]'
  type: related_to
---

## Definition

The "real users only" principle holds that effective feedback loops require working with actual people — individuals with names, emails, and phone numbers — rather than personas, abstract user segments, or UX research profiles. You must know your users personally and understand how they currently solve the problem you're addressing.

## The Principle

Kenneth Auchenberg is explicit about this requirement:

> "You need to be very specific about the customers you're building your feature or product for... you should actually work with real people that you know — people that have a name, an email, somebody you can call."

He goes further: "If you don't know any real people but you only have your UXR persona, you have a problem."

## Why Personas Are Insufficient

Kenneth identifies several reasons personas fail as feedback sources:

1. **No direct communication**: You cannot call a persona. You cannot text them when something breaks.
2. **No personal relationship**: Personas don't have relationships with you. Real users develop relationships that create trust and openness.
3. **No empathy bridge**: Without knowing real people, you cannot build the empathy needed to navigate and build hypotheses about how to solve their problems.
4. **No context**: Personas lack the rich context of how people actually solve problems today — their workarounds, frustrations, and workflows.

## Building Empathy Through Direct Contact

Kenneth emphasizes that you need to "understand the real people you're working with, how they're solving the problem today." This requires:

- Being in their shoes — literally or figuratively
- Building empathy through direct contact
- Understanding their current workflows and pain points
- Developing hypotheses based on real observation, not assumptions

## At Stripe

At Stripe, this principle was operationalized by:

1. Identifying specific real users who would use the new feature
2. Getting them into direct communication channels (Slack, text)
3. Understanding their current workflows before building anything
4. Writing the launch post and pushing it to them for feedback before prototyping

## Relationship to AI Product Development

Kenneth argues this is especially important in the AI era because:

1. AI products are novel and users' mental models are still forming
2. AI interaction patterns are not well understood — you need real users to discover what works
3. AI tools make it easier to prototype and iterate, but only if you have real users to test with
4. The feedback loop is the competitive advantage, and real users are the only source of meaningful feedback

## Related Concepts

- [[concepts/rapid-iteration-loop|Rapid Iteration Loop]] — Real users are one of the three requirements for a functional feedback loop
- [[concepts/high-bandwidth-feedback|High-Bandwidth Feedback]] — Real users enable high-bandwidth feedback; personas do not
- [[concepts/write-the-launch-post|Write the Launch Post]] — The launch post is pushed to real users for feedback
