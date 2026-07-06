---
title: "Full Spec MCP: Hidden Capabilities of the MCP spec — Harald Kirschner, Microsoft/VSCode"
category: references
tags:
  - mcp
  - model-context-protocol
  - aief2025
  - vscode
  - microsoft
  - sampling
  - dynamic-discovery
  - elicitation
  - streamable-http
summary: "Harald Kirschner's AIEF2025 talk on unlocking the full Model Context Protocol spec beyond tools — dynamic discovery, sampling, elicitations, streamable HTTP, and the MCP Steering Committee."
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
sources:
  - "https://www.youtube.com/watch?v=exed-8gfumm"

---

# Full Spec MCP: Hidden Capabilities of the MCP spec

Harald Kirschner ([[entities/harald-kirschner]]) from Microsoft/VSCode presented at AI Engineer World's Fair 2025 on unlocking the full [[concepts/model-context-protocol|MCP]] spec beyond the commonly-used tools primitive.

## Key Themes

**The "MCP is just another API wrapper" syndrome:** Most practitioners only use MCP tools, treating it as a simple function-calling interface. This creates a reinforcing loop where limited usage leads to limited client/SDK investment, which reinforces limited usage. [[entities/microsoft|Microsoft]]'s own [[entities/github-copilot|GitHub Copilot]] MCP support started with tools-only and progressively added discovery and routes.

**Full spec unlocks rich stateful interactions:** The full spec enables dynamic tool discovery, server-to-client [[concepts/model-context-protocol|sampling]], file references via resources, and user-directed elicitation — all critical for making MCP servers truly stateful and context-aware.

**The ecosystem is early but moving fast:** The MCP Steering Committee met in person for the first time just 10 days before this talk at the MCP Dev Summit. [[entities/microsoft|VS Code]] v1.10 shipped full spec support including sampling, dynamic discovery, and elicitations.

## Primitives Covered

- **Tools** — actions, easy mapping to function calling, but quality problems with too many/too diverse/too repetitive tools
- **Resources** — semantic layer for file references and exposing content to both LLM and user
- **Prompts** — dynamic prompt templates
- **Sampling** — servers requesting LLM completions from clients
- **Dynamic Discovery** — servers adding/removing tools at runtime
- **Elicitations** — tools requesting concrete user input directly

## Infrastructure

- **Streamable HTTP** — replacing SSE for lower stateful churn
- **Off Spec** — enterprise-grade authorization
- **MCP Community Registry** — server discovery at modelcontextprotocol/registry on GitHub
- **VS Code Dev Mode** — debugger attachment for MCP servers running inside VS Code

## Call to Action

Kirschner urges practitioners to: build action-oriented, context-aware, semantic-aware MCP servers using the full spec; contribute to open RFCs (namespaces, search); file issues and provide feedback to drive SDK/client roadmaps; and showcase stateful server patterns so interoperability gaps close faster.

## Related

- [[concepts/model-context-protocol]] — MCP protocol overview
- [[concepts/mcp-gateway-pattern]] — Centralized gateway architecture
- [[concepts/enterprise-mcp-deployment]] — MCP maturity stages
- [[entities/microsoft]] — Microsoft's MCP involvement
- [[entities/harald-kirschner]] — Speaker, Microsoft/VSCode
