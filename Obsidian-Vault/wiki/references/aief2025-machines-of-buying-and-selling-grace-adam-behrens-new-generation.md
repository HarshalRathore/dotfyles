---
title: AIEF2025 - Machines of Buying and Selling Grace - Adam Behrens, New Generation
category: references
tags:
- conference-talk
- aief2025
- agentic-commerce
- e-commerce
- agent-infrastructure
aliases:
- Machines of Buying and Selling Grace
- Adam Behrens AIEF2025
sources:
- AIEF2025 - Machines of Buying and Selling Grace - Adam Behrens, New Generation - https://www.youtube.com/watch?v=zlZz0mDF2eg
provenance:
  extracted: 0.95
  inferred: 0.05
  ambiguous: 0.0
base_confidence: 0.9
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[entities/adam-behrens|Adam Behrens]]'
  type: related_to
- target: '[[entities/new-generation|New Generation]]'
  type: related_to
- target: '[[concepts/agentic-commerce|Agentic Commerce]]'
  type: related_to
summary: AIEF2025 - Machines of Buying and Selling Grace - Adam Behrens, New Generation
---

# AIEF2025 - Machines of Buying and Selling Grace - Adam Behrens, New Generation

Adam Behrens, a philosopher-turned-engineer and founder of [[entities/new-generation|New Generation]], delivered a talk at AIEF2025 mapping the evolution of e-commerce from static websites to an agentic future where AI agents on both sides of transactions interact through programmatic interfaces.

## Core Thesis

A store is "a location for and a protocol that facilitates transactions" — merchants wanting to sell, buyers wanting to buy, and a system to mediate. E-commerce digitized merchandise and distribution; AI digitizes the participants and their interactions. The transition moves from static websites to merchant agents, from consumer browsing to consumer agents, and from low-level payment infrastructure to higher-level intent infrastructure.

## Two Futures for Agentic Commerce

Behrens outlines two possible architectures for the agentic future: (1) AI agents that visit websites optimized for agents — dynamically generating product catalogs and brand style guidelines within a chat interface like [[entities/chatgpt|ChatGPT]], then completing checkout autonomously; (2) Agents with programmatic access via [[concepts/mcp|MCP servers]] or APIs, reasoning over API calls to return dynamically generated UI elements and executing purchases through API endpoints rather than web navigation.

## Three Challenges

1. **Transactions**: When software clicks the buy button instead of humans, current solutions include virtual cards (the Stripe SDK approach where the software provider spins up a virtual card) or delegated authentication (Visa's approach where the agent uses your actual credit card through the checkout flow). ^[extracted]

2. **Intent translation**: Fuzzy buyer intent (keyword searches, click data) must be resolved to specific SKUs. Currently this requires explicit product detail page URLs. In the future, conversation data will explicitly capture buyer intent rather than inferring it statistically. ^[extracted]

3. **Product data aggregation**: Finding product availability across thousands of stores is currently solved via product feeds (requiring individual merchant relationships) or web scraping (repetitive, bot-heavy). The proposed solution is a unified API for product data — "Plaid for product data" — aggregating over merchants the way Plaid aggregates over financial institutions. ^[extracted]

## Buyer and Seller Preferences

Buyer preferences today are one-sided and narrow (siloed accounts, limited [[concepts/agent-memory|LLM memory]]. Seller preferences are limited to quarterly reporting. The future envisions two-sided, expansive preferences: rich user context across purchase and life aspects, and businesses expressing real-time strategic goals (inventory levels, target users, tariff impacts).

## Market Design

The talk draws an analogy to financial market systems — Behrens previously worked at [[entities/bridgewater|Bridgewater]] on trading systems. Just as finance developed market makers and third-party institutions to manage differences between buyers and sellers, agentic commerce needs similar intermediaries. The frontier is adding intelligence to decision-making at each component, enabling agents to reason over and negotiate intents.

## Sources

- AIEF2025 - Machines of Buying and Selling Grace - Adam Behrens, New Generation - https://www.youtube.com/watch?v=zlZz0mDF2eg
