---
title: Buyer and Seller Intent
category: concepts
tags:
- buyer-intent
- seller-intent
- intent-infrastructure
- ai-commerce
- preferences
aliases:
- buying intent
- selling intent
- commerce intent
sources:
- AIEF2025 - Machines of Buying and Selling Grace - Adam Behrens, New Generation - https://www.youtube.com/watch?v=zlZz0mDF2eg
provenance:
  extracted: 0.75
  inferred: 0.25
  ambiguous: 0.0
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[concepts/intent-infrastructure|Intent Infrastructure]]'
  type: implements
- target: '[[concepts/agentic-commerce|Agentic Commerce]]'
  type: component-of
- target: '[[concepts/agent-negotiation|Agent Negotiation]]'
  type: enables
summary: Buyer and Seller Intent
---

# Buyer and Seller Intent

In commerce, intent represents the desire and direction of both buyers and sellers. The agentic future shifts intent from inferred to explicit, and from narrow to expansive. ^[extracted]

## Buyer Intent: From Inferred to Explicit

Today, buyer intent is fuzzy — expressed through keyword searches, click data, and site metrics. It must be statistically inferred. ^[extracted]

In the agentic future, buyer intent is explicitly captured through conversation data. You can ask a user agent what it's trying to do rather than statistically inferring it. ^[extracted]

### The SKU Resolution Problem

A key challenge: fuzzy buyer intent (e.g., "I want a pair of running shoes") must be resolved to a specific SKU — the inventory representation of a product. Today this requires explicitly providing a product detail page URL to an agent. ^[extracted]

## Seller Intent: From Static to Dynamic

Today, seller intent is represented by static product detail pages with a buy button, price, and maybe discounts or bundles. ^[extracted]

In the future, product detail pages will be dynamic: real-time product availability, contextual pricing and discounts served inline, and the ability to infinitely bundle products across multiple merchants. ^[extracted]

## Buyer and Seller Preferences

Buyer preferences today are one-sided and narrow (siloed user accounts, transaction data, limited [[concepts/agent-memory|LLM memory]]. Seller preferences are limited to quarterly and annual reporting. ^[extracted]

The future envisions two-sided, expansive preferences: rich user context across purchase and life aspects, and businesses expressing real-time strategic goals (inventory levels, target users, tariff impacts). ^[extracted]

## Sources

- AIEF2025 - Machines of Buying and Selling Grace - Adam Behrens, New Generation - https://www.youtube.com/watch?v=zlZz0mDF2eg
