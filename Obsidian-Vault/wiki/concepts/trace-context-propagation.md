---
title: "Trace Context Propagation"
category: concepts
tags:
  - trace-context
  - context-propagation
  - distributed-tracing
  - open-telemetry
  - mcp
  - observability
aliases: [trace-context-propagation, context propagation, trace context]
sources:
  - "[[sources/watchv=lcqat4ip_le]]"
provenance:
  extracted: 0.88
  inferred: 0.08
  ambiguous: 0.04
base_confidence: 0.82
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/distributed-tracing]]"
    type: extends
  - target: "[[concepts/open-telemetry]]"
    type: uses
  - target: "[[concepts/mcp-observability]]"
    type: related_to
---

# Trace Context Propagation

**Trace context propagation** is the mechanism by which [[concepts/open-telemetry|OpenTelemetry]] trace context is passed from a [[concepts/model-context-protocol|MCP]] client to a [[concepts/model-context-protocol|MCP]] server, enabling [[concepts/distributed-tracing|distributed traces]] to be stitched together at the sink. ^[extracted]

## The Mechanism

In [[concepts/model-context-protocol|MCP]], trace context is propagated by:

1. **Client side**: Extract the current span when calling a tool, and pass it along to the server through the [[concepts/model-context-protocol|MCP]] protocol's metadata payload
2. **Server side**: Pull the trace context out, inherit it as the current span, and send spans to the same sink

This effectively "shuttles" the [[concepts/open-telemetry|OTEL]] data through the protocol's metadata field. ^[extracted]

## Implementation Notes

The talk described this as "pretty tricky to get working" and noted it required "abusing" a lower-level interface reserved for the [[concepts/model-context-protocol|MCP]] protocol. A working TypeScript demo was provided with a GitHub link. ^[extracted]

The speakers emphasized that higher-level tooling should be provided through SDKs rather than requiring developers to manually manage context propagation. ^[extracted]

## Cross-Language Benefit

Because [[concepts/open-telemetry|OTEL]] is an open protocol, context propagation enables cross-language tracing. A TypeScript agent can send traces to [[entities/weights-and-biases|W&B Weave]] while a Python agent does the same — both appearing in the same trace view with client spans in one color and server spans in another. ^[extracted]

## Sources

- Video: <https://www.youtube.com/watch?v=Lcqat4iP_lE>
