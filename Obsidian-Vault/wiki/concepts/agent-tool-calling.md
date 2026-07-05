---
title: "Agent Tool Calling"
category: concepts
tags:
  - tool-calling
  - agents
  - function-calling
  - llm-capabilities
  - mcp
  - api-exposure
aliases:
  - function calling
  - tool use by LLMs
sources:
  - "AIEF2025 - Building Agents (the hard parts!) - Rita Kozlov, Cloudflare - https://www.youtube.com/watch?v=j_TKDweOsYE"
summary: "The capability of LLMs to invoke external tools and APIs as part of their reasoning process. A foundational capability that has matured significantly, enabling MCP as a standard for exposing APIs to LLMs."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/model-context-protocol]]"
    type: enables
  - target: "[[concepts/agent-architecture]]"
    type: core_component_of
  - target: "[[concepts/openapi-for-agents]]"
    type: related_to
---

# Agent Tool Calling

**Agent tool calling** (also called function calling) is the capability of LLMs to invoke external tools, APIs, and services as part of their reasoning process. This has become a foundational capability for building autonomous agents.

## Maturity of Tool Calling

Rita Kozlov (Cloudflare) at AIEF2025 highlighted a key observation: LLMs have become genuinely good at tool calling — something that "wasn't so much the case a few years ago if you tried to play around with tool calling, but now they are." ^[extracted]

This maturity is what makes modern MCP adoption viable — the protocol provides a standard way to expose APIs to LLMs, but it only matters because LLMs can now reliably consume and execute those tool definitions.

## Tool Calling in Agent Architecture

In the four-component agent framework:

1. The **AI reasoning** layer decides which tool to call and with what parameters
2. The **workflows** layer tracks which tools have been called and manages execution state
3. The **tools** layer provides the actual API endpoints, MCP servers, or service interfaces

## MCP as Tool Standardization

MCP (Model Context Protocol) addresses the problem of how to expose APIs to LLMs in a way that allows humans to talk to LLMs over natural language. Its core concepts include:

- **Tools** — The actual actionable capabilities the agent can invoke
- **Resources** — Data the agent needs to access (files, database records)
- **Prompts** — Pre-built prompt templates for consistent agent behavior
- **Sampling** — Server-to-client LLM completion requests

## Related

- [[concepts/model-context-protocol]] — MCP standard for tool exposure
- [[concepts/agent-architecture]] — Where tool calling fits in agent design
- [[concepts/openapi-for-agents]] — OpenAPI as an alternative tool standard
- [[concepts/assistive-vs-automation-agents]] — Automation agents depend on tool calling
