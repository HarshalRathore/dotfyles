---
title: Linear
tags:
- company
- tool
- developer-tools
- issue-tracker
- project-management
- ai
- agent-platform
- speaker
- aief2025
aliases:
- Linear
- linear.app
summary: Product development tool used by OpenAI, Ramp, and thousands of modern software companies. Describes itself as 'an operating system for engineering and product teams.' Launched an agent coordinatio...
sources:
- '[[sources/aief2025-building-the-platform-for-agent-coordination-—-tom-moor]]'
- 'https://www.youtube.com/watch?v=ug9iadmi2dg'
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
base_confidence: 0.95
lifecycle: draft
tier: supporting
created: 2026-07-04 00:00:00+00:00
updated: 2026-07-04 00:00:00+00:00
relationships:
- target:
  - - concepts/agent-coordination|Agent Coordination
  type: uses
- target:
  - - concepts/hybrid-search|Hybrid Search
  type: uses
category: entities
---

# Linear

Linear is a product development tool that describes itself as "an operating system for engineering and product teams to build their products." It started as a simple issue tracker and has evolved into a comprehensive platform used by companies like OpenAI, Ramp, and Vassell. ^[extracted]

## Product Philosophy

Linear is built around "speed, clarity, removing friction" — designed to be the best tool for individual contributors to use daily. The company's approach to AI has been characterized by "small, pragmatic value adds" that are "seamless and hidden" rather than obvious AI features. ^[extracted]

## AI Features

Linear has built several AI-powered features across two phases:

**Phase 1 (2023):**
- **Similar Issues v1:** Suggested related issues using simple cosine embedding comparisons against a PostgreSQL vector database ^[extracted]
- **Natural Language Filters:** Converts natural language queries (e.g., "bugs assigned to me in the last two weeks that are closed") into filter expressions ^[extracted]
- **Slack-to-Issue:** Automatically creates structured issues from Slack thread text when an issue is created from a Slack message ^[extracted]

**Phase 2 (2024+):**
- **Product Intelligence (Similar Issues v2):** Full pipeline with query rewriting, hybrid search, re-ranking, and deterministic rules to produce a relationship map between issues ^[extracted]
- **Customer Feedback Analysis:** Analyzes hundreds or thousands of customer requests to identify feature opportunities per project ^[extracted]
- **Daily/Weekly Pulse:** Synthesizes workspace updates into summaries with audio podcast versions ^[extracted]
- **Issue from Video:** Analyzes customer-submitted video recordings to extract reproduction steps and create issues ^[extracted]

## Infrastructure Evolution

Linear's search infrastructure has evolved significantly:

1. **2023:** OpenAI embeddings stored in PostgreSQL Vector on GCP — a pragmatic decision using "solid things" ^[extracted]
2. **2024:** Migrated to hybrid search using **Turbo Puffer** as the search index and **Cohere** embeddings (deemed better for their domain than OpenAI's) ^[extracted]

## Agent Platform

Linear launched an agent coordination platform that treats agents as "infinitely scalable cloud-based teammates." The platform enables integration with coding agents like CodeGen and aims to make Linear "pluggable" — since every team is shaped differently and can't be served by a one-size-fits-all AI feature set. ^[extracted]

## Customers

OpenAI, Ramp, Vassell, and thousands of other modern software companies. ^[extracted]

## Related

- [[entities/tom-moor|Tom Moor]]
- [[concepts/agent-coordination|Agent Coordination]]
- [[concepts/hybrid-search|Hybrid Search]]
- [[concepts/product-intelligence|Product Intelligence]]
- [[concepts/seamless-ai|Seamless AI]]
