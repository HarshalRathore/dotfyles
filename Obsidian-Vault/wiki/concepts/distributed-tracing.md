---
title: "Distributed Tracing"
category: concepts
tags:
  - distributed-tracing
  - tracing
  - observability
  - open-telemetry
  - spans
  - traces
aliases: [distributed-tracing, distributed trace, distributed traces]
sources:
  - "[[sources/watchv=lcqat4ip_le]]"
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/open-telemetry]]"
    type: uses
  - target: "[[concepts/mcp-observability]]"
    type: related_to
  - target: "[[concepts/trace-context-propagation]]"
    type: extends
---

# Distributed Tracing

**Distributed tracing** is the practice of tracking a request as it flows through multiple services in a distributed system. In the [[concepts/open-telemetry|OpenTelemetry]] model, it works by having each service send its spans to a common sink, which stitches together the complete trace across all services. ^[extracted]

## How It Works

In a distributed trace, each service (client, server, external dependency) generates spans that represent its portion of the request. When all spans flow to the same sink, the system can reconstruct the full call graph and show end-to-end execution. ^[extracted]

### Example: Checkout Flow

A checkout API trace might include:
- The checkout endpoint itself
- A fraud service
- A payment processor
- An inventory service

Without distributed tracing, the fraud service would appear as a "black box" — a single span with no internal detail. With [[concepts/trace-context-propagation|context propagation]], the fraud service sends its own spans to the same sink, revealing its internal HTTP requests, processing time, and any errors. ^[extracted]

## MCP Application

In the [[concepts/model-context-protocol|MCP]] context, distributed tracing solves the problem of seeing into [[concepts/model-context-protocol|MCP]] servers that you own but run in a different domain. The [[concepts/model-context-protocol|MCP]] client and server both send spans to the same sink, and the sink stitches them together into a single coherent trace. ^[extracted]

The demo showed a trace of an agent executing "read and summarize the top article on Hacker News" — first showing the remote fetch server as a black box, then breaking it open to reveal an HTTP request taking ~350ms followed by markdown processing. ^[extracted]

## Sources

- Video: <https://www.youtube.com/watch?v=Lcqat4iP_lE>
