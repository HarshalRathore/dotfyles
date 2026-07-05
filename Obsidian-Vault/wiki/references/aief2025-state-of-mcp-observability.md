---
title: "The State of MCP Observability: Observable.tools"
category: references
tags:
  - aief2025
  - mcp
  - observability
  - open-telemetry
  - talk
aliases: [state of mcp observability, observable.tools talk, mcp observability aief2025]
sources:
  - "[[sources/watchv=lcqat4ip_le]]"
provenance:
  extracted: 0.95
  inferred: 0.03
  ambiguous: 0.02
base_confidence: 0.90
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/alex-volkov]]"
    type: related_to
  - target: "[[entities/benjamin-eckel]]"
    type: related_to
  - target: "[[concepts/mcp-observability]]"
    type: related_to
---

# The State of MCP Observability: Observable.tools

**Speakers:** [[entities/alex-volkov|Alex Volkov]] ([[entities/weights-and-biases|W&B]]) and [[entities/benjamin-eckel|Benjamin Eckel]] ([[entities/dylibso|Dylibso]])

**Video:** <https://www.youtube.com/watch?v=Lcqat4iP_lE>

## TL;DR

The rise of [[concepts/model-context-protocol|MCP]] is creating an observability blind spot for AI agents. The speakers demonstrated how [[concepts/open-telemetry|OpenTelemetry]] can solve this via [[concepts/trace-context-propagation|trace context propagation]], announced [[entities/weights-and-biases|W&B Weave]]'s MCP support, and launched [[entities/observable.tools|observable.tools]] — a manifesto for vendor-neutral [[concepts/mcp-observability|MCP]] observability.

## Problem & Motivation

- AI agents using [[concepts/model-context-protocol|MCP]] tools create an observability gap: developers lose visibility into end-to-end agent execution
- Enterprise engineering teams won't ship [[concepts/model-context-protocol|MCP]] to production without being able to identify security and reliability problems before customers do
- Every observability provider is "solving the same problems in isolation"
- [[entities/benjamin-eckel|Benjamin Eckel]] personally experienced this: after adding [[concepts/model-context-protocol|MCP]] tools to his agent, his end-to-end observability "went a little bit dark"

## Solution Architecture

### OpenTelemetry Integration

The core proposal: treat [[concepts/model-context-protocol|MCP]]-powered agents as [[concepts/distributed-tracing|distributed systems]] and apply [[concepts/open-telemetry|OpenTelemetry]] — the established standard for distributed observability.

**Key primitives:**
- **Traces** — atomic operations represented as trees of spans
- **Spans** — duration and metadata for individual steps
- **Sinks** — centralized telemetry databases/platforms (W&B, Datadog, etc.)
- **OTLP** — the wire protocol for sending traces to sinks

### Trace Context Propagation

The critical technical challenge: passing [[concepts/open-telemetry|OTEL]] trace context from [[concepts/model-context-protocol|MCP]] client to server.

**Implementation:**
1. Client extracts current span and passes it via [[concepts/model-context-protocol|MCP]] protocol metadata payload
2. Server pulls context out, inherits it as current span
3. Both client and server send spans to the same sink
4. Sink stitches together the complete distributed trace

**Status:** "Pretty tricky to get working" — required "abusing" a lower-level interface. Working TypeScript demo available on GitHub. ^[extracted]

### Two Scenarios

| Scenario | Visibility | Solution |
|----------|-----------|----------|
| Different domains (third-party MCP servers) | Black box — single span | Accept as limitation |
| Same domain (you own both client and server) | Full internal visibility | [[concepts/trace-context-propagation|Context propagation]] |

## Announcements

### W&B Weave MCP Support

- Native [[concepts/model-context-protocol|MCP]] tracing in Weave
- Single env variable: `mcp_trace_list`
- Initially Python-only, cross-language via [[concepts/open-telemetry|OTEL]]
- OTLP endpoint: `1b.aii.otel` with auth headers + project spec

### mcp.run OTEL Export

- [[entities/mcp.run|mcp.run]] will export telemetry from Profiles and Task client to [[concepts/open-telemetry|OTEL]]-compatible sinks
- Enables viewing mcp.run traces in any OTEL platform

### Meta Discovery Demo

[[entities/benjamin-eckel|Benjamin Eckel]] demonstrated a Claude Opus 4 agent that:
1. Used Weave's MCP server to inspect its own traces
2. Discovered a support bot MCP server
3. Queried it for debugging information
4. Fixed a bug autonomously
5. Verified the fix
6. All without human keyboard input

## Call to Action

- **AI Engineers**: Start thinking about [[concepts/mcp-observability|MCP]] observability
- **Tool builders**: Work on higher-level SDKs and instrumentation conventions (e.g., Arize's open inference)
- **Platform builders**: Add [[concepts/open-telemetry|OTEL]] support, review RFCs
- **Everyone**: Participate in [[entities/observable.tools|observable.tools]] and GenAI semantic conventions

## Limitations

- [[concepts/trace-context-propagation|Context propagation]] is currently manual and requires "abusing" lower-level interfaces
- Higher-level SDKs and [[concepts/semantic-conventions|semantic conventions]] are needed to make this accessible
- [[concepts/open-telemetry|OTEL]] adoption for [[concepts/model-context-protocol|MCP]] is early — "everything's just kind of coming together"
- Python-only support initially for Weave MCP tracing

## Related

- [[concepts/mcp-observability]] — The broader concept of MCP observability
- [[concepts/open-telemetry]] — OpenTelemetry as the proposed standard
- [[concepts/distributed-tracing]] — Distributed tracing primitives
- [[concepts/trace-context-propagation]] — The key technical mechanism
- [[concepts/semantic-conventions]] — Standardized attribute names
- [[entities/observable.tools]] — The manifesto for vendor-neutral MCP observability

## Sources

- Video: <https://www.youtube.com/watch?v=Lcqat4iP_lE>
