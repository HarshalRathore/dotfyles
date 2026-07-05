---
title: "observable.tools"
category: entities
tags:
  - mcp
  - observability
  - open-source
  - manifesto
  - aief2025
aliases: [observable.tools, Observable Tools]
sources:
  - "[[sources/watchv=lcqat4ip_le]]"
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/mcp-observability]]"
    type: related_to
  - target: "[[concepts/open-telemetry]]"
    type: related_to
  - target: "[[entities/alex-volkov]]"
    type: related_to
---

# observable.tools

**observable.tools** is a manifesto created by [[entities/alex-volkov|Alex Volkov]] of [[entities/weights-and-biases|W&B]] to drive the conversation around vendor-neutral, standardized observability for the [[concepts/model-context-protocol|MCP]] ecosystem.

## Purpose

The manifesto addresses the problem that every observability provider in the [[concepts/model-context-protocol|MCP]] space is "solving the same problems in isolation." It brings together observability providers — including W&B, Datadog, and others — to agree on common standards for [[concepts/mcp-observability|MCP]] observability. ^[extracted]

## OpenTelemetry Alignment

The manifesto advocates aligning [[concepts/model-context-protocol|MCP]] observability with [[concepts/open-telemetry|OpenTelemetry]] (OTEL), recognizing that [[concepts/model-context-protocol|MCP]]-powered agents are "really just another distributed system." The goal is to marry the open [[concepts/model-context-protocol|MCP]] protocol with OTEL's established observability primitives. ^[extracted]

## Call to Action

Alex Volkov invited the community to check out the manifesto, join the conversation, and visit the W&B booth at AIEF2025. ^[extracted]

## Sources

- Video: <https://www.youtube.com/watch?v=Lcqat4iP_lE>
