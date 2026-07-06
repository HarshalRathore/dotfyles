---
title: Weights & Biases (W&B)
category: entities
tags:
- company
- ai
- observability
- mcp
- weav
- aief2025
aliases:
- W&B
- Weights and Biases
- wandb
sources:
- 'https://www.youtube.com/watch?v=lcqat4ip_le'
provenance:
  extracted: 0.88
  inferred: 0.08
  ambiguous: 0.04
base_confidence: 0.88
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[entities/weave]]'
  type: related_to
- target: '[[concepts/open-telemetry]]'
  type: uses
- target: '[[entities/observable.tools]]'
  type: related_to
summary: Weights & Biases (W&B)
---

# Weights & Biases (W&B)

**Weights & Biases** (W&B) is an AI development platform known for [[entities/weave|Weave]], its LLM observability and agent development tool. At AI Engineer World's Fair 2025, they announced [[concepts/mcp-observability|MCP]] observability support.

## Weave MCP Support

W&B announced native [[concepts/model-context-protocol|MCP]] tracing support in Weave. Developers set an `mcp_trace_list` environment variable on client and server to see tool calls and durations. Initially supported only Python-based clients as a bespoke SDK integration. ^[extracted]

## OpenTelemetry Integration

W&B Weave supports [[concepts/open-telemetry|OpenTelemetry]] as an open protocol standard. Traces can be sent to W&B's OTLP endpoint at `1b.aii.otel` with authorization headers and project specification. This enables cross-language tracing — a TypeScript agent can send traces to the same Weave instance as a Python agent. ^[extracted]

## Weave MCP Server

Weave includes an [[concepts/model-context-protocol|MCP]] server that allows agents and chats to query and summarize their traces. This enables agents to inspect their own execution data and debug issues autonomously. ^[extracted]

## Observable.tools

Alex Volkov of W&B created [[entities/observable.tools|observable.tools]], a manifesto advocating for vendor-neutral, standardized observability in the [[concepts/model-context-protocol|MCP]] ecosystem. ^[extracted]

## Sources

- Video: <https://www.youtube.com/watch?v=Lcqat4iP_lE>
