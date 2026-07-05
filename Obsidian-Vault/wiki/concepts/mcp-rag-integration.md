---
title: "MCP RAG Integration"
category: concepts
tags:
  - mcp
  - rag
  - claude-desktop
  - integration
  - agent-tools
summary: "Connecting RAG agents to external applications like Claude Desktop via the Model Context Protocol (MCP), enabling RAG capabilities to be consumed by other AI systems."
sources:
  - "AIEF2025 - Forget RAG Pipelines—Build Production Ready Agents in 15 Mins: Nina Lopatina, Rajiv Shah, Contextual - https://www.youtube.com/watch?v=lArgRvBV3tQ"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.70
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/contextual-ai]]"
    type: related_to
  - target: "[[concepts/rag-as-managed-service]]"
    type: related_to
  - target: "[[concepts/document-mcp-server]]"
    type: related_to
  - target: "[[concepts/agent-tool-calling]]"
    type: related_to
---

# MCP RAG Integration

The Model Context Protocol (MCP) provides a mechanism for connecting RAG agents to external applications, enabling RAG capabilities to be consumed as tools within broader agent ecosystems. ^[extracted]

## Contextual's MCP Integration

At AI Engineer World's Fair 2025, **[[entities/contextual-ai|Contextual AI]]** demonstrated connecting their RAG agent to **Claude Desktop** via MCP. This integration allows Claude Desktop to leverage Contextual's RAG capabilities — document ingestion, retrieval, and generation — as tools available within the Claude conversation interface. ^[extracted]

## Why MCP Matters for RAG

MCP transforms RAG from a standalone application into a composable capability:

- **RAG as a tool** — Instead of users interacting with a RAG application directly, RAG becomes a tool that any MCP-compatible agent can invoke
- **Cross-application integration** — A single RAG backend can serve multiple frontends (Claude Desktop, custom apps, other agent systems)
- **Agent ecosystems** — RAG capabilities can be combined with other agent tools (code execution, web search, database queries) within a single agent workflow

## Relation to Document Toolbox

This pattern extends the **[[concepts/document-mcp-server|document MCP server]]** concept — a generalized set of document interaction tools exposed to AI agents via MCP — by adding the full RAG pipeline (extraction, retrieval, generation) rather than just retrieval. ^[inferred]
