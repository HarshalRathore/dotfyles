---
title: Delegated Authentication
category: concepts
tags:
- delegated-authentication
- agent-checkout
- payments
- authentication
- ai-agents
aliases:
- agent checkout authentication
sources:
- AIEF2025 - Machines of Buying and Selling Grace - Adam Behrens, New Generation - https://www.youtube.com/watch?v=zlZz0mDF2eg
provenance:
  extracted: 0.7
  inferred: 0.3
  ambiguous: 0.0
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[concepts/agent-checkout|Agent Checkout]]'
  type: implements
- target: '[[concepts/virtual-cards|Virtual Cards]]'
  type: contrasts-with
- target: '[[entities/visa|Visa]]'
  type: developed-by
summary: Delegated Authentication
---

# Delegated Authentication

Delegated authentication is a payment infrastructure pattern where an AI agent can use a user's actual credit card and go through the checkout flow on their behalf, rather than relying on intermediary payment mechanisms. ^[extracted]

## Two Approaches to Agent Checkout

When software clicks the buy button instead of a human, there are two solutions:

1. **Virtual cards (Stripe SDK model)**: The user checks out with ChatGPT or the software provider, which spins up a virtual card and buys the item on the user's behalf. ^[extracted]

2. **Delegated authentication (Visa approach)**: The agent uses the user's actual credit card and goes through the checkout flow directly. This is described as "the more elegant solution." ^[extracted]

## Significance

Delegated authentication represents a shift from low-level payment infrastructure to higher-level intent infrastructure in the agentic commerce stack. ^[inferred] It preserves the user's actual payment credentials and checkout context, enabling a more seamless and trustworthy agent-mediated transaction.

## Sources

- AIEF2025 - Machines of Buying and Selling Grace - Adam Behrens, New Generation - https://www.youtube.com/watch?v=zlZz0mDF2eg
