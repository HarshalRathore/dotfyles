---
title: "MCP Native Integration"
tags:
  - mcp
  - tool-integration
  - ai-agents
  - aws
  - strands-agents
sources:
  - "AIEF2025 - Building Agents at Cloud Scale — Antje Barth, AWS - https://www.youtube.com/watch?v=WJjInLeaJjo"
summary: "Native Model Context Protocol (MCP) integration in AI agent frameworks, enabling agents to discover and use tools from thousands of MCP servers without custom adapters."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/strands-agents|Strands Agents]]"
    type: implements
  - target: "[[entities/amazon-q-developer|Amazon Q Developer]]"
    type: related_to
  - target: "[[concepts/agent-tool-discovery|Agent Tool Discovery]]"
    type: related_to
---
# MCP Native Integration

The integration of Model Context Protocol (MCP) directly into AI agent frameworks, allowing agents to discover, connect to, and use tools from any MCP server as first-class capabilities. ^[extracted]

## How It Works

In Strands Agents, MCP integration is native — agents can connect to MCP servers and automatically treat discovered tools as available capabilities:

1. **Tool discovery**: The agent queries connected MCP servers for available tools.
2. **Permission**: The agent requests user permission before using a discovered tool.
3. **Execution**: The tool is invoked through the MCP protocol.
4. **Response**: Results are returned grounded in the MCP server's data source.

## Real Example: Amazon Q Developer CLI

When asked about Amazon Bedrock, the CLI:
1. Detected an available MCP tool (AWS documentation MCP server)
2. Connected to it via MCP
3. Requested user permission
4. Returned a response grounded in official AWS documentation

This demonstrates MCP as a first-class tool discovery and execution layer, not an afterthought. ^[extracted]

## Ecosystem Impact

- **Thousands of MCP servers** are immediately available as agent tools.
- **No custom adapters needed** — MCP is the universal protocol.
- **Standardized tool interface** — any MCP-compliant tool works with any MCP-enabled agent.

## Complementary: A2A

Support for Agent-to-Agent (A2A) protocol is coming soon, extending MCP's tool-focused integration to full agent-to-agent communication. ^[extracted]

## Related Pages

- [[entities/strands-agents]] — SDK with native MCP integration
- [[entities/amazon-q-developer|Amazon Q Developer]] — CLI demonstrating MCP in action
- [[concepts/agent-tool-discovery|Agent Tool Discovery]] — Broader tool selection patterns
- [[concepts/agentic-services|Agentic Services]] — MCP enables agentic service capabilities
