---
title: "The Rise of the Agentic Economy on the Shoulders of MCP — Jan Curn, Apify"
category: references
tags:
  - aief2025
  - talk
  - mcp
  - agentic-economy
  - tool-discovery
  - agent-identity
  - apify
  - jan-curn
aliases: [agentic economy, agentic mesh, agent-to-agent, B2A, A2A]
sources:
  - "AIEF2025 - The rise of the agentic economy on the shoulders of MCP — Jan Curn, Apify - https://www.youtube.com/watch?v=blW-lSd5CYQ"
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/jan-curn]]"
    type: created_by
  - target: "[[entities/apify]]"
    type: presented_by
  - target: "[[concepts/the-agentic-economy]]"
    type: primary_topic
---

# The Rise of the Agentic Economy on the Shoulders of MCP — Jan Curn, Apify

**Speaker:** Jan Čern, Founder & CEO of Apify
**Event:** AI Engineer World's Fair 2025
**Video:** https://www.youtube.com/watch?v=blW-lSd5CYQ

## Summary

Jan Čern argues that general intelligence in computing systems will emerge not from ever-larger single models, but from the interaction of multiple autonomous agents pursuing their own goals. MCP provides the missing communication fabric, but agents still cannot independently discover and purchase services — a gap that must be solved for a true agentic economy.

## Key Arguments

### Emergent Intelligence Analogy

Čern opens with an analogy: intelligence emerges in biological systems through neurons establishing connections and learning to communicate. The same pattern appears in markets (where collective intelligence exceeds individual participants) and companies (where collective output exceeds individual employees). General intelligence in computing will follow the same pattern — emerging from agent-to-agent interaction, not from monolithic models. ^[extracted]

### MCP as the Missing Piece

MCP provides the "missing part" that allows agents to communicate and create an "agentic mesh" — a fabric where agents can talk to each other. MCP has already become the standard for agentic interaction, dominating Google Trends compared to OpenAPI and Google's A2A protocol. Multiple registries of MCP servers now exist, including a registry of registries. ^[extracted]

### Tool Discovery: The Killer Feature

The most important feature of MCP for the agentic economy is **tool discovery** — the ability for clients to dynamically discover tools at runtime. With 5,000 tools on a marketplace, there is no way to publish them all through OpenAPI because the context would be too large. Tool discovery exposes tools only as needed, which is essential for scalability. ^[extracted]

### The Critical Gap: Agent Autonomy in Service Discovery

Despite MCP's progress, agents still cannot independently find counterparts or purchase services. Even with access to 5,000 tools via Zapier's MCP server, agents need human-provided API tokens for each individual service. Agents depend on human developers who build the system and give agents access to tools. Unless agents can independently discover and acquire services, we will not reach a higher level of agentic intelligence. ^[extracted]

### Two Proposed Solutions

1. **Agent self-subscription:** Agents could subscribe to services themselves — having email, credit cards, solving captchas. But this is impractical; many services require real persons behind accounts, phone numbers, etc. ^[extracted]

2. **Central identity and payments provider:** A central authority where agents can charge money and use it to buy and sell services. Companies pursuing this include Vertifier, Coinbase (X402 standard), Stripe, and MasterCard/Visa. However, launching a payment system faces the classic chicken-and-egg marketplace problem — PayPal spent $100M/month just to acquire market. ^[extracted]

## Key Terms

- **Agentic economy:** An economy where agents can find counterparts to interact with and purchase services from businesses, tools, or other agents (B2A, B2B, A2A)
- **Agentic mesh:** A fabric where agents can communicate and interact with each other
- **Tool discovery:** MCP's capability for clients to dynamically discover tools at runtime
- **Actors:** Apify's self-contained Docker-based tools with well-defined input/output
- **B2A:** Business-to-Agent
- **A2A:** Agent-to-Agent

## Related Pages

- [[concepts/the-agentic-economy]] — The agentic economy concept
- [[concepts/tool-discovery]] — MCP's tool discovery feature
- [[concepts/actor-model-software]] — Software as discrete, composable units
- [[concepts/emergent-intelligence]] — Intelligence as emergent behavior
- [[entities/apify]] — Apify marketplace
- [[entities/jan-curn]] — Jan Čern
