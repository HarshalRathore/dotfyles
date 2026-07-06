---
title: Write the Launch Post
category: concepts
tags:
- product-development
- prd
- documentation
- shipping
- communication
summary: Writing the launch blog post or PRD before building anything. Forces specificity, clarifies what's being built, how to position it, and how to sell it. Pushed to real users for feedback before prot...
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
  type: related_to
- target: '[[concepts/documentation-as-agent-knowledge-base]]'
  type: related_to
---

## Definition

The "write the launch post" principle is the practice of writing the launch blog post, press release, or PRD for a product before any building, prototyping, or design work begins. This forces clarity about what is being built, who it is for, how it should be positioned, and how it will be communicated to users.

## The Practice

Kenneth Auchenberg describes this as "one of the easiest steps to miss" and "almost always a mistake not to sit down and write the launch blog post." The process works as follows:

1. **Write the launch post/PRD**: Articulate the product as if it already exists and is being shipped. Write something specific to your audience.
2. **Push it to real users**: Before building anything, before prototyping in Figma or Bolt — push this document to early users.
3. **Get feedback on the concept**: The feedback you get on the launch post validates (or invalidates) the product concept before any engineering investment.
4. **Use feedback to shape the build**: The launch post becomes a living document that evolves based on user feedback, guiding the actual build.

## Why It Works

Kenneth identifies four reasons this practice is powerful:

1. **Forces specificity**: Writing for a real audience forces you to be specific about what the product does and who it serves.
2. **Clarifies understanding**: You can only write a good launch post if you truly understand what's being built.
3. **Reveals positioning gaps**: The act of writing exposes gaps in how you would position or explain the product to users.
4. **Enables early feedback**: You get real user feedback on the concept before investing in prototypes or code.

## At Stripe

At Stripe, this practice was embedded from day one. When building APIs, they would draft a rough outline of the API documentation and push it to users for feedback. This ensured the product feedback loop was active before any prototype was built.

## Relationship to AI

Kenneth notes that in 2025, AI tools make it even easier to iterate on launch posts — you can generate multiple versions, test different angles, and refine based on feedback with minimal effort. The barrier to writing and iterating on launch content is essentially zero.

## Related Concepts

- [[concepts/rapid-iteration-loop|Rapid Iteration Loop]] — The launch post is both a feedback artifact and a shipping milestone
- [[concepts/ship-first-product|Ship First Product]] — Writing the launch post is a step in designing the product before constraints
- [[concepts/documentation-as-agent-knowledge-base|Documentation as Agent Knowledge Base]] — Writing for an audience (human or agent) requires clarity of thought
