---
title: Market Design
category: concepts
tags:
- market-design
- market-makers
- commerce-infrastructure
- preference-management
- ai-markets
aliases:
- market design theory
- commerce market design
sources:
- AIEF2025 - Machines of Buying and Selling Grace - Adam Behrens, New Generation - https://www.youtube.com/watch?v=zlZz0mDF2eg
provenance:
  extracted: 0.65
  inferred: 0.35
  ambiguous: 0.0
base_confidence: 0.7
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[entities/bridgewater|Bridgewater]]'
  type: domain-exemplar
- target: '[[concepts/market-makers|Market Makers]]'
  type: requires
- target: '[[concepts/agent-negotiation|Agent Negotiation]]'
  type: enables
summary: Market Design
---

# Market Design

Market design is the framework for managing differences between buyers and sellers in a commerce system — particularly when preferences are complex, change over time, conflict between parties, and participants have a disincentive to honestly report their preferences. ^[extracted]

## The Problem

In agentic commerce, buyer and seller preferences are both expansive and dynamic. The challenges are wide open:

- Preferences are complex and change over time
- Preferences often conflict between buyers and sellers
- There is a disincentive to honestly report your preferences ^[extracted]

## Financial Markets as Analogy

[[entities/adam-behrens|Adam Behrens]] draws an analogy to financial market systems, where he previously worked at [[entities/bridgewater|Bridgewater]]. In finance, third-party institutions and market makers manage the differences between buyers and sellers. Agentic commerce needs to move to a similar model. ^[extracted]

## Current vs Future

Today, the current solution is to naively trust the information given to agents. Other approaches involve [[concepts/prompt-injection|prompt injection]] or manipulation of LLMs. ^[extracted]

The future requires adding intelligence to decision-making at each component — consumers and merchants need not just intents and preferences, but intelligence that can reason over them and negotiate them. ^[extracted]

## Sources

- AIEF2025 - Machines of Buying and Selling Grace - Adam Behrens, New Generation - https://www.youtube.com/watch?v=zlZz0mDF2eg
