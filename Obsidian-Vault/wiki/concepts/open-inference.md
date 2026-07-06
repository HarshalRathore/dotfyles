---
title: OpenInference
category: concepts
tags:
- open-inference
- mcp
- observability
- instrumentation
- semantic-conventions
- aief2025
aliases:
- OpenInference
- open-inference
- Open Inference
sources:
- 'https://www.youtube.com/watch?v=lcqat4ip_le'
provenance:
  extracted: 0.92
  inferred: 0.06
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/semantic-conventions]]'
  type: extends
- target: '[[concepts/mcp-observability]]'
  type: related_to
- target: '[[entities/arize]]'
  type: related_to
summary: OpenInference
---

# OpenInference

**OpenInference** is a higher-level SDK and instrumentation convention for [[concepts/mcp-observability|MCP]] observability, created by [[entities/arize|Arize]]. It provides standardized attributes and values for agent traces, tool calls, and LLM interactions.

## Purpose

OpenInference sits above raw [[concepts/open-telemetry|OpenTelemetry]] spans, offering a more developer-friendly interface for instrumenting AI agents. While [[concepts/semantic-conventions|semantic conventions]] define the attribute vocabulary, OpenInference provides the SDK-level abstractions that make applying those conventions practical. ^[extracted]

## Status

At AI Engineer World's Fair 2025, [[entities/alex-volkov|Alex Volkov]] described OpenInference as a "great start" in the space of higher-level SDKs and instrumentation conventions for [[concepts/mcp-observability|MCP]] observability. The speakers urged tool builders to work on such higher-level abstractions rather than requiring developers to manually manage [[concepts/trace-context-propagation|trace context propagation]] through protocol metadata payloads. ^[extracted]

## Relationship to GenAI Semantic Conventions

OpenInference complements the [[concepts/gen-ai-semantic-conventions|GenAI Semantic Conventions]] effort by the [[concepts/open-telemetry|OpenTelemetry]] team. Where GenAI semconv defines the attribute names and values, OpenInference provides the SDK tools to apply them. ^[extracted]

## Sources

- Video: <https://www.youtube.com/watch?v=Lcqat4iP_lE>
