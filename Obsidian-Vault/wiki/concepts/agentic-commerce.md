---
title: "Agentic Commerce"
category: concepts
tags:
  - agentic-commerce
  - ai-commerce
  - agent-infrastructure
  - e-commerce
  - intent-infrastructure
aliases: [agentic e-commerce, agent commerce]
sources:
  - "AIEF2025 - Machines of Buying and Selling Grace - Adam Behrens, New Generation - https://www.youtube.com/watch?v=zlZz0mDF2eg"
provenance:
  extracted: 0.60
  inferred: 0.40
  ambiguous: 0.00
base_confidence: 0.70
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/e-commerce-evolution|E-commerce Evolution]]"
    type: extends
  - target: "[[concepts/intent-infrastructure|Intent Infrastructure]]"
    type: uses
  - target: "[[concepts/agent-checkout|Agent Checkout]]"
    type: requires
---

# Agentic Commerce

Agentic commerce is the transition from static websites with human browsing to an economy where AI agents on both sides of transactions interact through programmatic interfaces. ^[extracted]

## Evolution

The evolution follows a clear pattern: e-commerce digitized merchandise and distribution, moving inventory from the back of a shop to the front and enabling browsing at scale. Agentic commerce digitizes the participants and their interactions. ^[extracted] The transition moves from static websites to merchant agents, from consumers browsing to consumer agents, and from low-level payment infrastructure to higher-level intent infrastructure. ^[extracted]

## Two Architectures

Two possible architectures for agentic commerce:

1. **Agent-visits-websites**: AI agents visit websites optimized for agents, dynamically generating product catalogs and brand style guidelines within a chat interface like [[entities/chatgpt|ChatGPT]], then completing checkout autonomously. ^[extracted]

2. **Programmatic-access**: Agents interact via [[concepts/mcp|MCP servers]] or APIs, reasoning over API calls to return dynamically generated UI elements and executing purchases through API endpoints rather than web navigation. ^[extracted]

## Goal

The fundamental goal does not change: transactions. Agentic commerce still aims for high-quality conversion with happy users who don't return their items. ^[extracted]

## Related Concepts

Agentic commerce requires [[concepts/delegated-authentication|delegated authentication]], [[concepts/buyer-seller-intent|buyer and seller intent]] resolution, [[concepts/product-aggregation|product data aggregation]], and [[concepts/market-makers|market design]] — all of which are currently suboptimal and represent open research problems. ^[inferred]

## Sources

- AIEF2025 - Machines of Buying and Selling Grace - Adam Behrens, New Generation - https://www.youtube.com/watch?v=zlZz0mDF2eg
