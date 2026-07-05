---
title: "MCP Observability"
category: concepts
tags:
  - mcp
  - observability
  - tracing
  - distributed-systems
  - open-telemetry
  - aief2025
aliases: [mcp-observability, MCP observability, observability for MCP]
sources:
  - "[[sources/watchv=lcqat4ip_le]]"
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
  - target: "[[concepts/open-telemetry]]"
    type: uses
  - target: "[[concepts/distributed-tracing]]"
    type: extends
  - target: "[[concepts/model-context-protocol]]"
    type: related_to
  - target: "[[entities/observable.tools]]"
    type: related_to
---

# MCP Observability

**MCP observability** is the ability to trace, monitor, and debug the end-to-end execution of [[concepts/model-context-protocol|MCP]]-powered AI agents in production. The rise of [[concepts/model-context-protocol|MCP]] is creating an observability blind spot: as AI agents use more and more tools via [[concepts/model-context-protocol|MCP]], developers lose visibility into what happens end-to-end within their agents. ^[extracted]

## The Problem

When [[concepts/model-context-protocol|MCP]]-powered agents call external tools and servers, developers face three critical gaps:

1. **What happened?** — Without observability, you cannot quickly understand why things went wrong in production
2. **Where did it go wrong?** — The boundary between client and server becomes opaque
3. **How did it go wrong?** — Internal server execution is invisible to the client

Enterprise engineering teams won't ship [[concepts/model-context-protocol|MCP]] to production without being able to identify security and reliability problems before customers do. ^[extracted]

## Current State

Observability in [[concepts/model-context-protocol|MCP]] is "not evenly distributed." Some platforms like [[entities/weights-and-biases|Weave]] offer bespoke integrations, while others require manual [[concepts/distributed-tracing|distributed tracing]] setup. The community needs to come together to create tooling and conventions that make [[concepts/mcp-observability|MCP]] observability accessible without requiring expertise in observability infrastructure. ^[extracted]

## Proposed Solution: OpenTelemetry

The talk proposes [[concepts/open-telemetry|OpenTelemetry]] (OTEL) as the standard for [[concepts/mcp-observability|MCP]] observability. [[concepts/model-context-protocol|MCP]]-powered agents are "really just another distributed system," and [[concepts/open-telemetry|OpenTelemetry]] has been the established solution for distributed system observability for decades. ^[extracted]

The key challenge is [[concepts/trace-context-propagation|trace context propagation]] — passing trace context from the [[concepts/model-context-protocol|MCP]] client to the server so that [[concepts/distributed-tracing|distributed traces]] can be stitched together at the sink. ^[extracted]

## Two Scenarios

### Different Domains

When the [[concepts/model-context-protocol|MCP]] client and server are in different administrative domains (e.g., using a third-party [[concepts/model-context-protocol|MCP]] server like GitHub or Stripe), the remote server appears as a "black box" — a single service span without internal detail. ^[extracted]

### Same Domain

When you own both the client and server (even if in different data centers), [[concepts/trace-context-propagation|context propagation]] allows the server to send its spans to the same sink as the client, stitching together the complete trace. ^[extracted]

## Call to Action

- **AI Engineers**: Start thinking about observability for [[concepts/model-context-protocol|MCP]] tooling and whether you're getting visibility to the end-to-end execution chain
- **Tool builders**: Work on higher-level SDKs (e.g., Arize's open inference) and contribute to instrumentation conventions
- **Platform builders**: Add [[concepts/open-telemetry|OTEL]] support and help review RFCs

## Sources

- Video: <https://www.youtube.com/watch?v=Lcqat4iP_lE>
