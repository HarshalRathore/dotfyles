---
title: "Weave (W&B)"
category: entities
tags:
  - tool
  - observability
  - mcp
  - weights-and-biases
  - aief2025
aliases: [Weave, W&B Weave, weave]
sources:
  - "[[sources/watchv=lcqat4ip_le]]"
provenance:
  extracted: 0.90
  inferred: 0.06
  ambiguous: 0.04
base_confidence: 0.88
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/weights-and-biases]]"
    type: related_to
  - target: "[[concepts/mcp-observability]]"
    type: related_to
  - target: "[[concepts/open-telemetry]]"
    type: uses
---

# Weave (W&B)

**Weave** is W&B's LLM observability and agent development platform. At AI Engineer World's Fair 2025, they announced native [[concepts/mcp-observability|MCP]] tracing support.

## MCP Tracing

Weave now supports [[concepts/model-context-protocol|MCP]] tracing via a simple environment variable (`mcp_trace_list`). When set on both client and server, it displays tool calls and durations in the Weave UI. Initially supported only Python-based clients. ^[extracted]

## OpenTelemetry Endpoint

Weave accepts [[concepts/open-telemetry|OpenTelemetry]] traces via its OTLP endpoint at `1b.aii.otel`. Users authorize with headers and specify a project. This enables cross-language tracing — a TypeScript agent can send traces to the same Weave instance as a Python agent. ^[extracted]

## Weave MCP Server

Weave includes an [[concepts/model-context-protocol|MCP]] server that lets agents query and summarize their traces. This enables autonomous agent debugging: an agent can inspect its own execution data, discover support bots, and fix issues without human intervention. ^[extracted]

## Sources

- Video: <https://www.youtube.com/watch?v=Lcqat4iP_lE>
