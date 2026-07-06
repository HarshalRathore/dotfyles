---
title: MCP Handshake
category: concepts
tags:
- mcp
- handshake
- agent
- copilot
- protocol
sources:
- 'https://www.youtube.com/watch?v=rkvilz06y08'
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.78
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
summary: MCP Handshake
---

# MCP Handshake

The MCP Handshake is the communication protocol between [[entities/github-copilot|GitHub Copilot]] and an [[concepts/model-context-protocol|MCP]] server during an agent workflow. Copilot parses the user's prompt, identifies the needed MCP, requests user permission, then engages in a sequential conversation with the MCP server to discover data, extract it, and use it for code generation. ^[extracted]

## The Handshake Sequence

Jon Peck's demonstration showed the following sequential steps:

1. **Prompt parsing** — Copilot parses the user's request and identifies that an MCP connection is needed. ^[extracted]
2. **MCP selection** — Copilot identifies which MCP server to use (e.g., PostgreSQL MCP). ^[extracted]
3. **Permission request** — Copilot pauses and asks the user for permission to connect. ^[extracted]
4. **Schema discovery** — The MCP interrogates the database to discover the schema. ^[extracted]
5. **Table identification** — The MCP identifies and selects specific tables to query. ^[extracted]
6. **Data extraction** — The MCP pulls data from the selected tables. ^[extracted]
7. **Response parsing** — Copilot parses all MCP responses and uses them to produce output (e.g., creating `mock.json` files). ^[extracted]
8. **Context accumulation** — Copilot adds the extracted data to its context for subsequent work (e.g., building test files). ^[extracted]

## Key Insight

The handshake is not a single call but a multi-step conversation where Copilot and the MCP "handshake and talk" — each step's response informs the next. Copilot parses each response and decides what to do next, accumulating context for the broader agent workflow. ^[extracted]

## Relationship to Agent Iteration

The MCP Handshake is one component of the broader agent iteration loop: "your first prompt will not be right." The handshake enables the agent to access real data, but the developer still needs to iterate on the prompt to get the desired output. ^[extracted]

## Related

- [[concepts/model-context-protocol]] — The MCP protocol
- [[concepts/mcp-permission-gate]] — Permission gating for MCP connections
- [[entities/postgres-mcp]] — PostgreSQL MCP server
- [[concepts/readme-driven-development]] — README-driven development workflow
