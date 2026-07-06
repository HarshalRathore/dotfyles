---
title: Meta Discovery
category: concepts
tags:
- meta-discovery
- mcp
- agent-debugging
- autonomous-agents
- observability
- aief2025
aliases:
- meta-discovery
- Meta Discovery
- self-discovery
sources:
- 'https://www.youtube.com/watch?v=lcqat4ip_le'
provenance:
  extracted: 0.95
  inferred: 0.04
  ambiguous: 0.01
base_confidence: 0.88
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/mcp-observability]]'
  type: related_to
- target: '[[entities/weave]]'
  type: uses
- target: '[[concepts/agent-to-agent-observability]]'
  type: extends
summary: Meta Discovery
---

# Meta Discovery

**Meta Discovery** is the capability of an AI agent to use [[concepts/model-context-protocol|MCP]] servers to inspect its own execution data, discover other MCP servers, and autonomously debug and fix issues — all without human keyboard input.

## The Demo

During the AIEF2025 talk, [[entities/benjamin-eckel|Benjamin Eckel]] demonstrated a Claude Opus 4 agent that performed a complete meta-discovery loop:

1. Used [[entities/weights-and-biases|Weave]]'s [[concepts/model-context-protocol|MCP]] server to inspect its own traces
2. Discovered a support bot MCP server through the Weave trace query
3. Queried the support bot for debugging information about a bug
4. Fixed the bug autonomously
5. Verified the fix
6. All without human keyboard input

This demonstrated that [[concepts/mcp-observability|MCP]] observability tools can themselves become [[concepts/model-context-protocol|MCP]] tools that agents use, creating a meta-layer of agent-to-agent interaction. ^[extracted]

## Significance

Meta Discovery represents a key use case for [[concepts/mcp-observability|MCP]] observability: the observability platform itself becomes an MCP server, enabling agents to query their own execution data and take corrective action. This turns observability from a passive monitoring tool into an active debugging capability. ^[extracted]

## Sources

- Video: <https://www.youtube.com/watch?v=Lcqat4iP_lE>
