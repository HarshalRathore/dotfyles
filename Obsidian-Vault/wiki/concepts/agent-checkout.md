---
title: "Agent Checkout"
category: concepts
tags:
  - agent-checkout
  - checkout
  - payments
  - ai-agents
  - transaction-infrastructure
aliases: [agentic checkout, AI checkout]
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
  - target: "[[concepts/delegated-authentication|Delegated Authentication]]"
    type: uses
  - target: "[[concepts/virtual-cards|Virtual Cards]]"
    type: uses
  - target: "[[concepts/agentic-commerce|Agentic Commerce]]"
    type: component-of
---

# Agent Checkout

Agent checkout is the process where an AI agent completes a purchase transaction on behalf of a user — the point where software clicks the buy button instead of a human. ^[extracted]

## The Problem

In code, a payment is represented with a payment intent when a user clicks a buy button. That intent goes through a set of transformations through the checkout process that results in success and money movement. The question is: what if software is the one clicking this button? ^[extracted]

## Two Solutions

1. **Virtual cards**: The user checks out with ChatGPT or the software provider, which spins up a virtual card and buys the item on the user's behalf. ^[extracted]

2. **Delegated authentication**: The agent uses the user's actual credit card and goes through the checkout flow directly. ^[extracted]

## Goal

The checkout goal remains unchanged: high-quality conversion with happy users who hopefully don't return the item they receive. ^[extracted]

## Sources

- AIEF2025 - Machines of Buying and Selling Grace - Adam Behrens, New Generation - https://www.youtube.com/watch?v=zlZz0mDF2eg
