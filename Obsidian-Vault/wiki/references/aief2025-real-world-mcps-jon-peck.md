---
title: Real World MCPs in GitHub Copilot Agent Mode — Jon Peck, Microsoft
category: references
tags:
- aief2025
- mcp
- github-copilot
- agent-mode
- jon-peck
- microsoft
- vscode
sources:
- 'https://www.youtube.com/watch?v=rkvilz06y08'
provenance:
  extracted: 0.95
  inferred: 0.05
  ambiguous: 0.0
base_confidence: 0.85
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
summary: Real World MCPs in GitHub Copilot Agent Mode — Jon Peck, Microsoft
---

# Real World MCPs in GitHub Copilot Agent Mode — Jon Peck, Microsoft

## TL;DR

[[entities/jon-peck|Jon Peck]] of [[entities/microsoft|Microsoft]] demonstrates end-to-end integration of [[concepts/model-context-protocol|MCP]] servers into [[entities/github-copilot|GitHub Copilot]] Agent Mode within [[entities/vs-code|VS Code]], showing how developers can connect AI agents to external data sources (PostgreSQL, local databases, web APIs) with user-permission gating. The talk covers the full MCP lifecycle: discovery, installation, configuration, permission, execution, and iterative refinement.

## Problem / Motivation

Copilot has evolved through three modes: code completion (microsecond-level inline suggestions), chat (single-shot multi-file changes), and agent mode (complete task execution with deep interaction). Agent mode can build greenfield apps from a README spec or perform deep refactoring, but it needs access to external data sources — databases, APIs, advice systems — to do real work beyond code generation. [[concepts/model-context-protocol|MCP]] provides the open protocol for this integration.

## Method / Architecture

The integration follows a clear pipeline:

1. **README-driven spec** — The developer writes a complete README (project structure, env vars, database schema, API endpoints, optional workflow graphs via [[concepts/mermaid|Mermaid]] or vision-capable LLMs) and tells Copilot Agent Mode to implement it.
2. **MCP discovery** — Developer visits `github.com/modelcontextprotocol/servers`, searches for the needed server (e.g., PostgreSQL), and installs via one-click VS Code integration.
3. **Configuration** — MCP server config (connection strings, auth tokens) is added to VS Code settings; the server is started locally.
4. **Agent prompt** — Developer asks Copilot to use a specific MCP ("use the PostgreSQL MCP to pull data and create mock.json for tests").
5. **Permission gate** — Copilot pauses and asks the user for permission before connecting to the MCP. The user approves, and the agent proceeds.
6. **MCP handshake** — Copilot and the MCP server communicate: Copilot identifies the needed MCP, calls it, the MCP interrogates the external data source, and Copilot parses responses to produce output files.
7. **Iteration** — First prompts rarely work perfectly; the developer iterates using README files, [[concepts/copilot-instructions|Copilot Instructions]], and prompt files.

## Key Equations

Not applicable — this is a workflow demonstration, not a mathematical model.

## Results

- **Greenfield app from README**: Copilot Agent Mode built a complete travel-booking app (data models, app.py, frontend) in ~8 minutes from a README-only spec.
- **MCP-powered database access**: PostgreSQL MCP server connected to a local database, pulled schema and data, generated `mock.json` for testing — all with read-only safety guarantees.
- **Permission gating**: The "continue" box appears whenever the agent needs terminal access or MCP connections, ensuring user approval before any external action.
- **Iterative workflow**: The talk emphasizes that "your first prompt will not be right" — iterative refinement via README files, Copilot Instructions, and prompt files is the expected pattern.

## Limitations

- Demonstrated on a local, unauthenticated PostgreSQL instance — production scenarios with remote databases and proper auth tokens were mentioned but not demonstrated.
- The travel-booking app was "not well styled" — basic functionality was shown, not polish.
- MCP-to-MCP protocol (remote servers in protected environments) was mentioned but not demonstrated.
- Internet connectivity issues during the live demo were acknowledged.

## Related

- [[concepts/model-context-protocol]] — The MCP protocol itself
- [[entities/github-copilot]] — GitHub Copilot's evolution and capabilities
- [[entities/jon-peck]] — Speaker biography and other talks
- [[concepts/agent-vs-workflow]] — Agent vs. workflow debate
- [[concepts/ai-native-toolchain]] — AI-native developer toolchain
- [[concepts/copilot-instructions]] — Copilot Instructions for team standards
- [[concepts/readme-driven-development]] — README as agent spec

## Sources

- AIEF2025 - Real world MCPs in GitHub Copilot Agent Mode — Jon Peck, Microsoft - https://www.youtube.com/watch?v=RkVILz06y08
