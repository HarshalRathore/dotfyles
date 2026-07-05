---
title: "Cloudflare"
category: entities
tags: [company, infrastructure, cdn, compute, ai]
aliases: [Cloudflare Workers, CF]
sources:
  - "[[sources/watchv=1c3szbaxomw]]"
  - "[[sources/watchv=ccswz5bjlo8]]"
  - "[[sources/watchv=d4dswf-__rm]]"
  - "AIEF2025 - Building Agents (the hard parts!) - Rita Kozlov, Cloudflare - https://www.youtube.com/watch?v=j_TKDweOsYE"
summary: "Cloud infrastructure and CDN company. Co-developed Oblivious HTTP (OHTTP) with Apple. Serves as the anonymizer relay for Apple's Private Cloud Compute. Workers platform enables CPU-millisecond pricing well-suited for AI agent workloads. Hosts Durable Objects for stateful serverless primitives. Released Agents SDK for building and hosting AI agents and MCP servers."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.42
lifecycle: draft
lifecycle_changed: 2026-07-03
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---
# Cloudflare

Cloudflare is a cloud infrastructure and content delivery network company. Its Workers platform is built on isolates (lightweight compute containers), enabling a pricing model based on CPU milliseconds rather than wall time.

## Architectural Advantage in Pricing

Cloudflare's architectural bet on isolates as lightweight compute machines allows a fundamentally different pricing model: charging for CPU milliseconds instead of wall time. ^[extracted]

This is particularly advantageous for AI agent workloads: ^[extracted]
- An agent that makes external API calls (e.g., to [[entities/openai|OpenAI]] or Anthropic) is not charged for idle wait time.
- The user pays only for actual computation, not for the wall-clock duration of network calls.
- This passes down technical innovation (isolates architecture) as pricing leverage for end users. ^[inferred]

## Key Insight

The Cloudflare example illustrates how a product's underlying architecture can create pricing differentiation that is hard for competitors to replicate. The technical decision to use isolates translates directly into a pricing advantage for AI workloads. ^[inferred]

## Oblivious HTTP and Privacy

Cloudflare co-developed the [[concepts/oblivious-http|Oblivious HTTP]] (OHTTP) protocol with [[entities/apple|Apple]] and others. In Apple's [[concepts/private-cloud-compute|Private Cloud Compute]] architecture, all user inference requests are routed through Cloudflare as the OHTTP relay — so Apple's servers only see requests came from Cloudflare, not from individual user IP addresses. This provides the network-layer component of [[concepts/non-targetability|non-targetability]]. ^[extracted]

This positions Cloudflare as a critical infrastructure provider in the emerging [[concepts/private-ai-inference|private AI inference]] ecosystem. ^[inferred]

## MCP Auth and Agent Identity

Michael Grinich ([[entities/workos|WorkOS]]) at AI Engineer World's Fair 2025 cited Cloudflare as a key implementation of the [[concepts/agent-middleware-trust-boundary|agent middleware trust boundary]] pattern — Cloudflare's MCP auth work leverages their position as a networking stack provider to enforce authorization at the network layer, between agent code and enterprise resources. ^[extracted]

This positions Cloudflare alongside WorkOS and Microsoft in the emerging [[concepts/agent-identity|agent identity]] infrastructure ecosystem. ^[inferred]

## Developer Platform Mission

Rita Kozlov (VP of Product for Cloudflare's developer platform) frames Cloudflare's mission for developers as making it as easy as possible to bring an idea to life — from writing the first line of code, to deploying to production, to going live for the first user and the millions that follow. ^[extracted]

Cloudflare's developer services include functions (Workers), storage, compute, and AI inference. About 20% of Internet traffic flows through Cloudflare, so even users who haven't directly signed up have used Cloudflare's infrastructure (Uber, food delivery, etc.). ^[extracted]

## Durable Objects and Stateful Serverless

Cloudflare's Durable Objects are a serverless primitive with persistent state — analogous to serverless functions but with state management built in. They serve as the foundation for Cloudflare's Agents SDK, providing built-in state management for MCP servers and agent workflows without external database dependencies. ^[extracted]

## Agents SDK

Cloudflare released the Agents SDK, a development toolkit for building and hosting AI agents and MCP servers. Key capabilities:
+ Built-in `MCPAgents` class for hosting remote MCP servers with OAuth, transport (SSE/WebSockets), and HTTP streaming
+ State management via Durable Objects
+ OAuth abstraction — "for people who never want to touch OAuth again"
+ Cross-SDK compatibility with OpenAI's Agents SDK ^[extracted]

## Related
- [[concepts/durable-objects]] — Durable Objects as stateful serverless primitive
- [[entities/cloudflare-agents-sdk]] — Cloudflare's Agents SDK
- [[concepts/model-context-protocol]] — MCP servers hosted on Cloudflare
- [[concepts/pricing-as-friction]] — How pricing signals value
- [[concepts/ai-native-pricing-principles]] — Margin structure as a pricing axis
- [[references/revenue-engineering-pricing-ai-product-grover-orb]] — Source talk
- [[concepts/oblivious-http|Oblivious HTTP]] — Cloudflare co-developed this privacy protocol
- [[concepts/private-cloud-compute|Private Cloud Compute]] — Apple's PCC uses Cloudflare as anonymizer relay
- [[concepts/non-targetability|Non-Targetability]] — privacy property enabled by OHTTP routing
- [[concepts/agent-middleware-trust-boundary]] — Cloudflare's network-layer MCP auth is an implementation of this pattern
- [[concepts/agent-identity]] — The broader agent identity paradigm Cloudflare's MCP auth supports

