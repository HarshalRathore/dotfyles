---
title: 'AIEF2025 - MCP: Origins and Requests For Startups — Theodora Chu'
category: references
tags:
- aief2025
- mcp
- model-context-protocol
- theodora-chu
- anthropic
- origin-story
- design-principles
- agent-architecture
- elicitation
- registry-api
summary: Theodora Chu (MCP PM at Anthropic) covers MCP's origin story, design principles, project updates, and roadmap — from two engineers copying context to a standardized protocol adopted by Cursor, VS C...
sources:
- 'AIEF2025 - MCP: Origins and Requests For Startups — Theodora Chu, Model Context Protocol PM, Anthropic - https://www.youtube.com/watch?v=x-8pBqWiTzk'
provenance:
  extracted: 0.95
  inferred: 0.03
  ambiguous: 0.02
base_confidence: 0.9
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05 00:00:00+00:00
updated: 2026-07-05 00:00:00+00:00
relationships:
- target: '[[entities/theodora-chu|Theodora Chu]]'
  type: related_to
- target: '[[entities/anthropic|Anthropic]]'
  type: related_to
- target: '[[concepts/mcp|Model Context Protocol]]'
  type: related_to
---

# AIEF2025 - MCP: Origins and Requests For Startups — Theodora Chu

**Speaker:** Theodora Chu, Product Manager for MCP at Anthropic
**Event:** AI Engineer World's Fair 2025
**Video:** https://www.youtube.com/watch?v=x-8pBqWiTzk

## Overview

Theodora Chu delivered a comprehensive overview of the Model Context Protocol's journey from its inception at Anthropic to becoming an industry-standard protocol adopted by major AI companies. She covered the origin story, design principles, project updates, and future roadmap.

## Key Topics

### Origin Story

MCP was conceived by two engineers at Anthropic (David and Justin) who were tired of constantly copying and pasting context from outside the model's context window — Slack messages, Sentry error logs, and other sources. They asked: "How do you give the model the ability to climb out of its box and reach into the real world?" ^[extracted]

The genesis was about **model agency** — not just context, but the model's ability to interact with the outside world. They concluded it had to be an open-source standardized protocol to work at scale, because closed ecosystems require BD/partnerships just to access integration teams. ^[extracted]

### Launch and Early Adoption

MCP launched internally at Anthropic's Hack Week in November and went viral — engineers across teams started building MCPs to automate their own and other teams' workflows. It was open-sourced to the world shortly after. ^[extracted]

Early reception was mixed. Many asked "What's MCP?" or "What's MPC?" and questioned why a new protocol was needed when models could already call tools. The turning point came when Cursor adopted MCP, followed by other coding tools (VS Code, Source Graph). More recently, Google, Microsoft, and OpenAI adopted MCP. ^[extracted]

### Design Principles

Theo outlined three core design principles:

1. **Agent-first architecture** — Agents are the future; the protocol is built for models that choose actions based on intelligence, not predetermined workflows. ^[extracted]
2. **Streamable HTTP transport** — Changed from SSE to enable more bidirectionality, essential for agent-to-agent communication. A "controversial decision" but justified by the agent-first vision. ^[extracted]
3. **Server simplicity optimization** — The team believes there will be more MCP servers than clients, so they optimized for server builders with better tooling, pushing complexity to the client side. ^[extracted]

### Project Updates (Last 6 Months)

- **Remote MCPs** — Ability for folks to build remote MCPs
- **Auth fix** — Auth was "got wrong initially" but fixed in the draft spec via community contribution
- **Renewable HTTP** — Launched as the primary transport (replacing SSE)
- **SDK and Inspector updates** — Improved developer experience, with the inspector noted as "probably our most underutilized tool" ^[extracted]

### Future Roadmap

- **Elicitation** — Added to the draft spec; allows servers to ask end users for more information (e.g., a flight booking server asking "cheapest or fastest?")
- **Registry API** — In progress; would make it easier for models to discover and connect to MCP servers ^[extracted]

### Call to Community

Theo emphasized that standards become standards because they are useful to builders. She encouraged the audience to contribute issues and submit PRs directly to the MCP GitHub repo, emphasizing that the goal is to make the protocol "maximally useful for you all and for model providers." ^[extracted]

## Related Pages

- [[concepts/mcp|Model Context Protocol]] — MCP protocol overview
- [[concepts/model-agency|Model Agency]] — The core problem MCP solves
- [[concepts/mcp-streamable-http|MCP Streamable HTTP Transport]] — Transport evolution
- [[concepts/mcp-elicitation|MCP Elicitation]] — Future feature for user input
- [[concepts/mcp-registry-api|MCP Registry API]] — Future feature for server discovery
- [[entities/anthropic|Anthropic]] — MCP's home organization
- [[entities/theodora-chu|Theodora Chu]] — Speaker and MCP PM
