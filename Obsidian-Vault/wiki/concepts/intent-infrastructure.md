---
title: "Intent Infrastructure"
category: concepts
tags:
  - intent-infrastructure
  - commerce-infrastructure
  - ai-infrastructure
  - transaction-infrastructure
aliases: [intent layer, commerce intent layer]
sources:
  - "AIEF2025 - Machines of Buying and Selling Grace - Adam Behrens, New Generation - https://www.youtube.com/watch?v=zlZz0mDF2eg"
provenance:
  extracted: 0.70
  inferred: 0.30
  ambiguous: 0.00
base_confidence: 0.70
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/agentic-commerce|Agentic Commerce]]"
    type: enables
  - target: "[[concepts/buyer-seller-intent|Buyer and Seller Intent]]"
    type: represents
  - target: "[[concepts/agent-checkout|Agent Checkout]]"
    type: feeds-into
---

# Intent Infrastructure

Intent infrastructure is the layer of commerce systems that operates above payment infrastructure, dealing with the explicit capture, translation, and resolution of buyer and seller intent rather than just the mechanics of money movement. ^[extracted]

## The Stack

The agentic commerce stack evolves from:
- Static websites → merchant agents
- Consumer browsing → consumer agents
- Low-level payment infrastructure → higher-level intent infrastructure ^[extracted]

## Key Capabilities

Intent infrastructure must handle:

1. **Explicit intent capture**: Instead of statistically inferring buyer intent from keyword searches and click data, conversation data explicitly captures what the user wants. ^[extracted]

2. **Intent-to-SKU resolution**: Translating fuzzy buyer intent to specific inventory items (SKUs). ^[extracted]

3. **Dynamic seller expression**: Enabling merchants to express real-time availability, contextual pricing, and cross-merchant bundling. ^[extracted]

4. **Preference aggregation**: Managing complex, changing, and conflicting buyer and seller preferences. ^[extracted]

## Significance

Intent infrastructure represents the next layer of abstraction in commerce — moving beyond "how do I pay" to "what does the buyer actually want and how do I match it with what the seller offers." ^[inferred]

## Sources

- AIEF2025 - Machines of Buying and Selling Grace - Adam Behrens, New Generation - https://www.youtube.com/watch?v=zlZz0mDF2eg
