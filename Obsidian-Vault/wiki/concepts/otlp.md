---
title: OTLP (OpenTelemetry Protocol)
category: concepts
tags:
- otlp
- open-telemetry
- protocol
- observability
- telemetry
aliases:
- OTLP
- OpenTelemetry Protocol
sources:
- 'https://www.youtube.com/watch?v=lcqat4ip_le'
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.82
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/open-telemetry]]'
  type: extends
- target: '[[concepts/distributed-tracing]]'
  type: related_to
- target: '[[concepts/mcp-observability]]'
  type: related_to
summary: OTLP (OpenTelemetry Protocol)
---

# OTLP (OpenTelemetry Protocol)

**OTLP** (OpenTelemetry Protocol) is the wire protocol used by [[concepts/open-telemetry|OpenTelemetry]] to send telemetry data (traces, metrics, logs) from instrumented applications to [[concepts/open-telemetry|OTEL]]-compatible sinks. ^[extracted]

## Usage in MCP Observability

At AI Engineer World's Fair 2025, [[entities/weights-and-biases|W&B Weave]] was presented as an [[concepts/open-telemetry|OTEL]] sink that accepts traces via OTLP. Users send traces to W&B's OTLP endpoint (`1b.aii.otel`) with:

- Authorization headers
- Project specification

This enables any [[concepts/model-context-protocol|MCP]]-instrumented application to send its traces to W&B for visualization and debugging. ^[extracted]

## Cross-Language Benefit

Because OTLP is an open, language-agnostic protocol, a TypeScript agent and a Python agent can both send traces to the same W&B project — enabling cross-language [[concepts/distributed-tracing|distributed tracing]] of [[concepts/model-context-protocol|MCP]] interactions. ^[extracted]

## Sources

- Video: <https://www.youtube.com/watch?v=Lcqat4iP_lE>
