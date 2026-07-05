---
title: "Discover Functionality"
category: concepts
tags:
  - product-management
  - ai-agents
  - discovery
  - emergent-behavior
  - aief2025
aliases: [discover functionality, discover what AI can do, functionality discovery]
sources:
  - "[[sources/watchv=pthmdt92qng]]"
provenance:
  extracted: 0.82
  inferred: 0.16
  ambiguous: 0.02
base_confidence: 0.76
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/affordance-thinking]]"
    type: enabled_by
  - target: "[[concepts/emergent-behavior-in-ai]]"
    type: responds_to
  - target: "[[concepts/product-discovery]]"
    type: extends
  - target: "[[concepts/agent-evaluations]]"
    type: measured_by
---

# Discover Functionality

**Discover functionality** is the product discovery method for AI-native systems where the builder cannot fully predict what the system will do. Instead of specifying features and then building them, product people provide the right building blocks (affordances) and then **discover** what users compose with them. ^[extracted]

## The Core Idea

> "Our job as product people is to discover functionality — what are the right building blocks, what are the right Lego bricks that we give our engineering team, our product, our customers, let them compose, and we discover emergent behavior." — Ben Stein ^[extracted]

This inverts the traditional product development model:
- **Traditional**: Spec → Build → Ship → Measure
- **Discover Functionality**: Build affordances → Ship → Observe emergent behavior → Learn what works → Expand affordances

## Why It's Different

Ben Stein notes he "couldn't not sit down in front of a Google Doc and be like, oh, let me like type out what this thing should" — the task is literally impossible to fully specify. Even if it were possible, "how do I then communicate it" to a development team or backlog? ^[extracted]

## The New Product Job

The product person's job becomes:
1. **Identify the right Lego bricks** — What affordances should the agent have?
2. **Ship and observe** — Let users and the agent compose them.
3. **Discover what works** — Use evals and observation to learn what emergent behaviors are valuable.
4. **Expand** — Add more affordances where discovery reveals opportunity.

## Relationship to Other Concepts

Discover functionality is the practical method enabled by [[concepts/affordance-thinking|affordance thinking]]. It's the response to [[concepts/emergent-behavior-in-ai|emergent behavior]] — when behavior is emergent, you can't specify it, you can only discover it. It extends traditional [[concepts/product-discovery|product discovery]] into the non-deterministic AI domain. ^[inferred]

## Sources

- [[references/aief2025-shipping-products-when-you-dont-know-what-they-can-do|AIEF2025 - Shipping Products When You Don't Know What They Can Do]]
