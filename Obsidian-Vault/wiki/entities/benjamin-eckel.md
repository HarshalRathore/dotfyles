---
title: "Benjamin Eckel"
category: entities
tags:
  - person
  - co-founder
  - cto
  - dylibso
  - mcp
  - observability
  - aief2025
aliases: [Benjamin Eckel, benjamineckel, Ben Eckel]
sources:
  - "[[sources/watchv=lcqat4ip_le]]"
provenance:
  extracted: 0.92
  inferred: 0.06
  ambiguous: 0.02
base_confidence: 0.90
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/dylibso]]"
    type: related_to
  - target: "[[entities/mcp.run]]"
    type: related_to
  - target: "[[concepts/mcp-observability]]"
    type: related_to
  - target: "[[entities/observable.tools]]"
    type: related_to
---

# Benjamin Eckel

**Benjamin Eckel** is co-founder and CTO of [[entities/dylibso|Dylibso]], creators of [[entities/mcp.run|mcp.run]]. He previously worked at [[entities/datadog|Datadog]] and currently works on [[entities/weights-and-biases|Weave]] at W&B.

## mcp.run

Ben leads the development of [[entities/mcp.run|mcp.run]], a platform for running both MCP clients and servers. Key features include:

- **Profiles** — slice and dice multiple MCP servers into one virtual server
- **Task client** — a single-prompt agent triggerable via URL or schedule
- **OTEL export** — soon exporting telemetry to [[concepts/open-telemetry|OpenTelemetry]]-compatible sinks

## MCP Observability Work

Ben experienced the [[concepts/mcp-observability|MCP]] observability problem firsthand: after adding [[concepts/model-context-protocol|MCP]] tools to his agent, the end-to-end observability he was used to from his own code "went a little bit dark." ^[extracted]

He built a working demo of [[concepts/distributed-tracing|distributed tracing]] across [[concepts/model-context-protocol|MCP]] client and server boundaries using [[concepts/open-telemetry|OpenTelemetry]] context propagation through the protocol's metadata payload — effectively "abusing" a lower-level interface to shuttle trace context. ^[extracted]

## Meta Discovery Story

During the talk, Ben described a moment where his Claude Opus 4 coding agent used [[entities/weights-and-biases|Weave]]'s MCP server to discover a support bot MCP server, queried it for debugging information, fixed a bug, and verified the fix — all without human keyboard input. ^[extracted]

## Sources

- Video: <https://www.youtube.com/watch?v=Lcqat4iP_lE>
