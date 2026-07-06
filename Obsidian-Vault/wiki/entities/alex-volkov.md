---
title: Alex Volkov
category: entities
tags:
- person
- ai-evangelist
- weights-and-biases
- mcp
- observability
- aief2025
aliases:
- Alex Volkov
- alexvolkov
sources:
- 'https://www.youtube.com/watch?v=lcqat4ip_le'
provenance:
  extracted: 0.9
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.9
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[entities/weights-and-biases]]'
  type: related_to
- target: '[[concepts/mcp-observability]]'
  type: related_to
- target: '[[entities/observable.tools]]'
  type: related_to
summary: Alex Volkov
---

# Alex Volkov

**Alex Volkov** is an AI evangelist at [[entities/weights-and-biases|Weights & Biases]] (W&B) and co-presenter at AI Engineer World's Fair 2025 on MCP observability.

## Observable.tools Initiative

Alex created [[entities/observable.tools|observable.tools]], a manifesto driving the conversation around vendor-neutral, standardized observability for the [[concepts/model-context-protocol|MCP]] ecosystem. The initiative brings together observability providers to agree on common standards rather than each solving the same problems in isolation. ^[extracted]

## W&B Weave MCP Support

At the AIEF2025 talk, Alex announced that [[entities/weights-and-biases|Weave]] now supports [[concepts/model-context-protocol|MCP]] tracing. Developers only need to set an `mcp_trace_list` environment variable on their client and server to see tool calls and durations. This initially worked only with Python-based clients as a bespoke integration into W&B's SDKs. ^[extracted]

## Additional Context

Alex runs the Thursday AI podcast and organizes the AI Engineer conference. He also organizes Swyx. ^[inferred]

## Sources

- Video: <https://www.youtube.com/watch?v=Lcqat4iP_lE>
