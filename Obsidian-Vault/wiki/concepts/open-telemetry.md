---
title: OpenTelemetry (OTEL)
category: concepts
tags:
- open-telemetry
- otel
- observability
- distributed-tracing
- telemetry
- mcp
aliases:
- OpenTelemetry
- OTEL
- otel
- Open Tel
sources:
- 'https://www.youtube.com/watch?v=lcqat4ip_le'
provenance:
  extracted: 0.75
  inferred: 0.2
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/mcp-observability]]'
  type: related_to
- target: '[[concepts/distributed-tracing]]'
  type: extends
- target: '[[concepts/otlp]]'
  type: related_to
- target: '[[concepts/semantic-conventions]]'
  type: related_to
summary: OpenTelemetry (OTEL)
---

# OpenTelemetry (OTEL)

**OpenTelemetry** (OTEL) is the industry-standard open-source framework for distributed system observability. At AI Engineer World's Fair 2025, it was proposed as the standard for [[concepts/mcp-observability|MCP]] observability, since [[concepts/model-context-protocol|MCP]]-powered agents are "really just another distributed system." ^[extracted]

## Core Primitives

### Traces

A **trace** is an atomic operation in a system, represented as a tree-like structure of steps called **spans**. Each span represents the duration and metadata for a step — from a high-level HTTP request to a tiny function call. ^[extracted]

### Spans

A **span** captures the duration and metadata for a single step in a trace. Spans have size (duration) and position (call graph hierarchy) that reveal system behavior from the trace data alone. ^[extracted]

### Sinks

A **sink** is a centralized database or platform where telemetry data flows. Sinks receive spans from multiple sources and can stitch together distributed traces. They often come with UIs, dashboards, alerting, and monitoring capabilities. ^[extracted]

## OpenTelemetry as Global Standard

[[concepts/open-telemetry|OpenTelemetry]] is becoming "the global standard" for observability. LLM observability tools like [[entities/weights-and-biases|W&B Weave]], [[entities/sentry|Sentry]], and others have adopted [[concepts/open-telemetry|OTEL]] support. The key benefit: as long as a developer instruments their application following the [[concepts/open-telemetry|OTEL]] spec, any [[concepts/open-telemetry|OTEL]]-compatible sink can receive and process the data — no code changes needed, potentially just configuration. ^[extracted]

## OTLP Protocol

[[concepts/open-telemetry|OpenTelemetry]] uses the **OpenTelemetry Protocol (OTLP)** as its wire format. Traces are sent to an OTLP endpoint (e.g., W&B's `1b.aii.otel`) with authorization headers and project specification. ^[extracted]

## MCP Integration

The integration of [[concepts/open-telemetry|OTEL]] with [[concepts/model-context-protocol|MCP]] requires [[concepts/trace-context-propagation|trace context propagation]] — passing trace context from client to server through the [[concepts/model-context-protocol|MCP]] protocol's metadata payload. This was described as "pretty tricky to get working" and required "abusing" a lower-level interface. ^[extracted] Higher-level tooling and [[concepts/semantic-conventions|semantic conventions]] are needed to make this smoother. ^[extracted]

## Sources

- Video: <https://www.youtube.com/watch?v=Lcqat4iP_lE>
