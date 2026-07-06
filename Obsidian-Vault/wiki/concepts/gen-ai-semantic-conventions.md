---
title: GenAI Semantic Conventions
category: concepts
tags:
- semantic-conventions
- genai
- open-telemetry
- mcp
- agent-traces
aliases:
- GenAI semantic conventions
- GenAI semconv
- OpenTelemetry GenAI
sources:
- 'https://www.youtube.com/watch?v=lcqat4ip_le'
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/semantic-conventions]]'
  type: extends
- target: '[[concepts/open-telemetry]]'
  type: uses
- target: '[[concepts/mcp-observability]]'
  type: related_to
summary: GenAI Semantic Conventions
---

# GenAI Semantic Conventions

**GenAI Semantic Conventions** are a standards effort by the [[concepts/open-telemetry|OpenTelemetry]] team to define standardized attributes and values for [[concepts/model-context-protocol|MCP]] and generative AI observability. They are the domain-specific application of [[concepts/semantic-conventions|semantic conventions]] to the AI agent ecosystem. ^[extracted]

## Purpose

Just as HTTP semantic conventions define standard attributes for web requests (status codes, methods, URLs), GenAI semantic conventions define standard attributes for:

- LLM model calls (model name, token count, latency)
- [[concepts/model-context-protocol|MCP]] tool calls (tool name, parameters, results)
- Agent execution patterns (agent name, step number, tool usage)
- Error states and recovery patterns

## Status

As of the AIEF2025 talk, the GenAI semantic conventions effort was described as an active initiative. The speakers recommended the community check it out and participate in defining conventions. ^[extracted]

## Related Efforts

[[entities/arize|Arize]]'s open inference was mentioned as a "great start" in the space of higher-level SDKs and instrumentation conventions for [[concepts/mcp-observability|MCP]] observability. ^[extracted]

## Sources

- Video: <https://www.youtube.com/watch?v=Lcqat4iP_lE>
