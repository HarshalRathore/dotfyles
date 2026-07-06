---
title: "MCP Tool Quality vs Quantity"
category: concepts
tags:
  - mcp
  - tools
  - quality
  - model-context-protocol
  - ai-reliability
summary: "The principle that MCP server design should prioritize tool quality over quantity — fewer, well-designed tools outperform large static tool sets that confuse AI agents."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.65
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
sources:
  - "https://www.youtube.com/watch?v=exed-8gfumm"

---

# MCP Tool Quality vs Quantity

The principle that [[concepts/model-context-protocol|MCP]] server design should prioritize tool quality over quantity. ^[extracted] This is one of the core arguments in [[entities/harald-kirschner]]'s AIEF2025 talk on full [[concepts/model-context-protocol|MCP]] spec adoption.

## The Three Vectors of Tool Confusion

Research from [[entities/llamaindex|LangChain]] cited by [[entities/harald-kirschner]] identifies three ways that excessive or poorly designed tool sets degrade AI performance:

1. **Too many tools** — The AI gets confused by the volume of available tools. Each tool adds cognitive load to the model's decision-making.
2. **Too many domains** — When tools have different properties and instructions per domain, the AI struggles to understand the context and select appropriately.
3. **Repetition** — The more repetitions the AI must perform to run tools and solve a problem, the easier it is to get confused.

## Client-Side Mitigations

[[entities/microsoft|VS Code]] implements several controls to address these issues:

### Per-Chat Tool Selection

A "tool packer" that lets users reduce the tool set to what's needed for a specific chat session. It has keyboard accessibility and persists for the session. ^[extracted]

### Tool Mentioning

Users can type tool names directly (e.g., "use this tool") and the client infers the right parameters, reducing the need for the AI to discover tools through conversation. ^[extracted]

### User-Defined Tool Sets

Curated groupings of tools for specific workflows (e.g., "front-end testing flow"). Selected by the user and persisting for the session. ^[extracted]

## Design Principle

"Quality over quantity" applies to [[concepts/model-context-protocol|MCP]] server design:
- Fewer, well-described tools outperform large static tool sets
- Tools should be dynamically exposed based on context ([[concepts/mcp-dynamic-tool-discovery|dynamic discovery]])
- Tool descriptions should be optimized for the model, not the API surface
- [[entities/david-cramer|David Cramer]] of [[entities/sentry|Sentry]] echoes this: "You cannot just be like, I got an API. I'm going to expose all those endpoints as tools. You're going to get the worst results." ^[extracted]

## Related

- [[concepts/model-context-protocol]] — MCP protocol overview
- [[concepts/mcp-dynamic-tool-discovery]] — Dynamic tool discovery
- [[concepts/mcp-tool-sets]] — User-defined tool groupings
- [[entities/harald-kirschner]] — VS Code MCP advocate
- [[entities/david-cramer]] — Sentry founder, MCP practitioner
- [[entities/sentry]] — Production MCP server
