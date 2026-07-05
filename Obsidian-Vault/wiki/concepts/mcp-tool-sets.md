---
title: "MCP Tool Sets"
category: concepts
tags:
  - mcp
  - tool-sets
  - tools
  - vscode
  - model-context-protocol
summary: "User-defined groupings of MCP tools for specific workflows, enabling focused tool exposure without the confusion of oversized static tool sets."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.70
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
sources:
  - "[[sources/watchv=exed-8gfumm]]"

---

# MCP Tool Sets

Tool Sets are user-defined groupings of [[concepts/model-context-protocol|MCP]] tools for specific workflows. ^[extracted] They are a usability concept that complements the spec-level [[concepts/mcp-dynamic-tool-discovery|dynamic tool discovery]] mechanism.

## The Problem

When an MCP server exposes many tools, the AI agent gets confused by:
1. **Too many tools** — volume overwhelms the model
2. **Too many domains** — inconsistent properties and instructions
3. **Repetition** — more turns needed to solve problems

Research from [[entities/llamaindex|LangChain]] confirms all three vectors degrade tool-use quality. ^[extracted]

## How Tool Sets Work

A user defines a tool set by selecting the tools relevant to a specific workflow. For example:
- "Front-end testing flow" — a curated set of testing tools
- "Debugging flow" — tools for debugging and diagnostics
- "Deployment flow" — tools for building and deploying

Once created, the user selects the tool set and all tools in it are exposed to the agent for the session. ^[extracted]

## VS Code Implementation

[[entities/microsoft|VS Code]] v1.10 shipped user-defined tool sets as part of its full [[concepts/model-context-protocol|MCP]] spec support. They are designed for:
- **Session persistence** — tool sets persist for the duration of the session
- **Workflow focus** — each set is tailored to a specific type of work
- **User control** — the user defines and selects sets, not the server

## Contrast with Dynamic Discovery

| Aspect | Tool Sets | Dynamic Discovery |
|--------|-----------|-------------------|
| Who controls | User | Server |
| When it changes | User selection | Runtime state |
| Scope | Session-wide | Per-request |
| Purpose | Workflow curation | Context awareness |

They are complementary: a user selects a tool set for their workflow, and the server dynamically adjusts within that set based on session state. ^[inferred]

## Related

- [[concepts/model-context-protocol]] — MCP protocol overview
- [[concepts/mcp-dynamic-tool-discovery]] — Dynamic tool discovery
- [[concepts/mcp-sampling]] — Server-to-client LLM sampling
- [[entities/harald-kirschner]] — VS Code MCP advocate
- [[entities/microsoft]] — Microsoft/VS Code
