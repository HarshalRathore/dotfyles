---
title: Semantic Conventions
category: concepts
tags:
- semantic-conventions
- open-telemetry
- observability
- mcp
- spans
aliases:
- semantic-conventions
- semantic convention
- semconv
sources:
- 'https://www.youtube.com/watch?v=lcqat4ip_le'
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/open-telemetry]]'
  type: uses
- target: '[[concepts/gen-ai-semantic-conventions]]'
  type: extends
- target: '[[concepts/mcp-observability]]'
  type: related_to
summary: Semantic Conventions
---

# Semantic Conventions

**Semantic conventions** are standardized attribute names and values that observability platforms agree on, so that a sink can understand what a span represents regardless of who instrumented it. Without them, user-defined span attributes are opaque — the sink doesn't know if a span represents an HTTP request with a 200 status code or an [[concepts/model-context-protocol|MCP]] tool call with an error. ^[extracted]

## The Problem

[[concepts/open-telemetry|OpenTelemetry]] spans carry user-defined attributes. If every developer uses different attribute names for the same concept, observability platforms cannot provide consistent dashboards, alerting, or analysis. ^[extracted]

## The Solution

Semantic conventions solve this by defining a shared vocabulary:

- Standard attribute names (e.g., `http.status_code`, `mcp.tool.name`)
- Standard value sets (e.g., HTTP status codes, error codes)
- Standard span types (e.g., what makes a span an "MCP tool call" vs. an "HTTP request")

## GenAI Semantic Conventions

The [[concepts/open-telemetry|OTEL]] team is working on a **GenAI semantic conventions** effort specifically for [[concepts/model-context-protocol|MCP]] observability. This defines what attributes and values should be used for agent traces, tool calls, and LLM interactions. ^[extracted]

## Call to Action

The speakers urged the community to participate in defining [[concepts/semantic-conventions|semantic conventions]] for [[concepts/model-context-protocol|MCP]] so that all observability platforms agree on a common vocabulary. ^[extracted]

## Sources

- Video: <https://www.youtube.com/watch?v=Lcqat4iP_lE>
