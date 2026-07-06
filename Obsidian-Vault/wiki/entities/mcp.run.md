---
title: mcp.run
category: entities
tags:
- mcp
- platform
- observability
- dylibso
- aief2025
aliases:
- mcp.run
- MCP Run
sources:
- 'https://www.youtube.com/watch?v=lcqat4ip_le'
provenance:
  extracted: 0.92
  inferred: 0.06
  ambiguous: 0.02
base_confidence: 0.88
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[entities/dylibso]]'
  type: related_to
- target: '[[entities/benjamin-eckel]]'
  type: related_to
- target: '[[concepts/mcp-observability]]'
  type: related_to
- target: '[[concepts/open-telemetry]]'
  type: uses
summary: mcp.run
---

# mcp.run

**mcp.run** is a platform by [[entities/dylibso|Dylibso]] for running both [[concepts/model-context-protocol|MCP]] clients and servers. It was announced at AI Engineer World's Fair 2025 that mcp.run will export telemetry to [[concepts/open-telemetry|OpenTelemetry]]-compatible sinks.

## Profiles

Profiles allow users to slice and dice multiple MCP servers into one single virtual server. This enables composition of capabilities from different servers under a unified interface. ^[extracted]

## Task Client

The Task client is a single-prompt agent that can be triggered via URL or schedule. It marries with the profiles concept — a profile defines the tools available, and Task executes a prompt against them. ^[extracted]

## OTEL Export

As of the AIEF2025 talk, mcp.run was preparing to export telemetry from both profiles and the Task client to [[concepts/open-telemetry|OpenTelemetry]]-compatible sinks. This would enable users to view their mcp.run traces in any OTEL-compatible observability platform. ^[extracted]

## Call to Action

Benjamin Eckel invited attendees to get a free account and try mcp.run at the AIEF2025 conference. ^[extracted]

## Sources

- Video: <https://www.youtube.com/watch?v=Lcqat4iP_lE>
