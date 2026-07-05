---
title: "Virtual Cards"
category: concepts
tags:
  - virtual-cards
  - payments
  - agent-payments
  - fintech
  - checkout
aliases: [virtual credit card, one-time card]
sources:
  - "AIEF2025 - Machines of Buying and Selling Grace - Adam Behrens, New Generation - https://www.youtube.com/watch?v=zlZz0mDF2eg"
provenance:
  extracted: 0.75
  inferred: 0.25
  ambiguous: 0.00
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/agent-checkout|Agent Checkout]]"
    type: enables
  - target: "[[concepts/delegated-authentication|Delegated Authentication]]"
    type: contrasts-with
  - target: "[[entities/stripe|Stripe]]"
    type: implemented-by
---

# Virtual Cards

Virtual cards are a payment mechanism for agent checkout where a software provider (like ChatGPT) spins up a virtual card and buys items on behalf of the user. ^[extracted]

## How It Works

When a user wants to buy something through an AI agent, the agent goes to the merchant's website and checks out using a virtual card that the software provider created for that transaction. The user checks out with ChatGPT or the software provider, not directly with the merchant. ^[extracted]

## Context

This is the current mainstream solution for agent-mediated checkout, contrasted with [[concepts/delegated-authentication|delegated authentication]] (Visa's approach) where the agent uses the user's actual credit card directly. ^[extracted]

## Trade-offs

Virtual cards abstract away the merchant-user relationship — the software provider becomes the intermediary in the transaction. This has implications for trust, dispute resolution, and the evolution toward [[concepts/intent-infrastructure|intent infrastructure]]. ^[inferred]

## Sources

- AIEF2025 - Machines of Buying and Selling Grace - Adam Behrens, New Generation - https://www.youtube.com/watch?v=zlZz0mDF2eg
