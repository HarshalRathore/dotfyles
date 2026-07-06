---
title: Affordance Thinking
category: concepts
tags:
- product-management
- ai-agents
- affordances
- design-philosophy
- aief2025
aliases:
- affordance thinking
- affordance-based design
- think in affordances
sources:
- 'https://www.youtube.com/watch?v=pthmdt92qng'
provenance:
  extracted: 0.8
  inferred: 0.18
  ambiguous: 0.02
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/emergent-behavior-in-ai]]'
  type: extends
- target: '[[concepts/boundless-surface-area]]'
  type: responds_to
- target: '[[concepts/discover-functionality]]'
  type: enables
- target: '[[concepts/unopinionated-product-design]]'
  type: related_to
summary: Affordance Thinking
---

# Affordance Thinking

**Affordance thinking** is a product design philosophy for AI-native products where the developer cannot fully predict what the system will do. Instead of spec-ing specific features and workflows, product managers define the **affordances** — the building blocks and capabilities — that agents and users can compose. ^[extracted]

## The Core Shift

Traditional product management works by specifying exact user flows: "If user tags teammate in comment, teammate replies in thread." This breaks down when the underlying system (an LLM-based agent) has unbounded input space and emergent behavior. ^[extracted]

Affordance thinking replaces this with: "The teammate has affordances to comment, communicate, email, and collaborate." The LLM and agentic workflow determine how these are composed in any given situation. ^[extracted]

## Why It's Necessary

Two structural forces make affordance thinking essential: ^[extracted]

1. **LLM opacity** — We don't know what LLMs can do. Unlike traditional software with a bounded interface surface area, LLMs are inherently unpredictable in their capabilities.
2. **Boundless customer expectations** — A text input is an open invitation. Give one affordance and users will want it everywhere (Google Docs → Linear → Figma → LinkedIn).

## Implications for Product Work

- **PRDs change** — Traditional PRDs can't describe open-ended agent behavior. New documentation affordances are needed.
- **Feature specs become capability lists** — Instead of "feature X does Y," describe "agent has affordance Z."
- **Trust the agent** — The agentic workflow (planning, work decomposition) is trusted to compose affordances appropriately.
- **Discover, don't specify** — The job shifts from specifying behavior to discovering what emergent behavior users find valuable. ^[inferred]

## Relationship to Other Concepts

Affordance thinking is the practical response to [[concepts/boundless-surface-area|boundless surface area]]. It enables [[concepts/emergent-behavior-in-ai|emergent behavior]] by providing the building blocks without prescribing composition. It works hand-in-hand with [[concepts/discover-functionality|discovering functionality]] as the product discovery method. ^[inferred]

## Sources

- [[references/aief2025-shipping-products-when-you-dont-know-what-they-can-do|AIEF2025 - Shipping Products When You Don't Know What They Can Do]]
