---
title: "Cloudflare"
category: entities
tags: [company, infrastructure, cdn, compute, ai]
aliases: [Cloudflare Workers, CF]
sources:
  - "AI Engineer World's Fair 2025 talk - Revenue Engineering: How to Price (and Reprice) Your AI Product — Kshitij Grover, Orb - https://www.youtube.com/watch?v=1C3sZbaxOmw"
  - "AIEF2025 - The Unofficial Guide to Apple's Private Cloud Compute - Jmo, CONFSEC - https://www.youtube.com/watch?v=CCsWZ5bJlO8"
  - "AIEF2025 - CIAM for AI: Authn/Authz for Agents — Michael Grinich, CEO of WorkOS - https://www.youtube.com/watch?v=D4Dswf-__RM"
summary: "Cloud infrastructure and CDN company. Co-developed Oblivious HTTP (OHTTP) with Apple. Serves as the anonymizer relay for Apple's Private Cloud Compute. Workers platform enables CPU-millisecond pricing well-suited for AI agent workloads."
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

## Related
- [[concepts/pricing-as-friction]] — How pricing signals value
- [[concepts/ai-native-pricing-principles]] — Margin structure as a pricing axis
- [[references/revenue-engineering-pricing-ai-product-grover-orb]] — Source talk
- [[concepts/oblivious-http|Oblivious HTTP]] — Cloudflare co-developed this privacy protocol
- [[concepts/private-cloud-compute|Private Cloud Compute]] — Apple's PCC uses Cloudflare as anonymizer relay
- [[concepts/non-targetability|Non-Targetability]] — privacy property enabled by OHTTP routing
- [[concepts/agent-middleware-trust-boundary]] — Cloudflare's network-layer MCP auth is an implementation of this pattern
- [[concepts/agent-identity]] — The broader agent identity paradigm Cloudflare's MCP auth supports
