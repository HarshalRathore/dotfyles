---
title: "MCP Sampling"
category: concepts
tags:
  - mcp
  - sampling
  - model-context-protocol
  - server-initiated
  - llm-completion
summary: "MCP's server-to-client primitive that allows MCP servers to request LLM completions from the client, enabling servers to leverage the client's model without direct API access."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.65
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
sources:
  - "[[sources/watchv=exed-8gfumm]]"
  - "AIEF2025 - Building Agents (the hard parts!) - Rita Kozlov, Cloudflare - https://www.youtube.com/watch?v=j_TKDweOsYE"

---

# MCP Sampling

Sampling is the [[concepts/model-context-protocol|MCP]] primitive that allows servers to request LLM completions from the client. ^[extracted] It is one of the most underutilized primitives in the spec, despite having transformative potential for making MCP servers more intelligent and context-aware.

## How It Works

When a server needs LLM capabilities, it sends a sampling request to the client. The client then:
1. Shows a permission dialog to the user
2. Uses its configured model (e.g., GPT-4.1 in [[entities/microsoft|VS Code]]) to generate the completion
3. Returns the result to the server

[[entities/harald-kirschner]] noted the permission dialog in VS Code is currently wired to GPT-4.1 by default, with spec improvements planned for more structured formatting. ^[extracted]

## Use Cases

- **Summarizing resources** — compress large resource content into tangible summaries
- **Formatting content** — convert a fetched website into Markdown for the LLM
- **Agentic server tools** — servers that run via the LLM from the client, enabling tools that require reasoning without the server having direct model access
- **Progressive enhancement** — servers can return the "kitchen sink" initially, then use sampling to refine or filter based on client-side reasoning

## Implementation Status

As of the AIEF2025 talk, sampling was available in [[entities/microsoft|VS Code]] Insiders. [[entities/harald-kirschner]] emphasized that "everybody should support sampling" because of its transformative potential. ^[extracted] The spec is still evolving — more structured formatting ideas are being discussed but not yet implemented, since no client had adopted it yet.

## Adoption Observation

Rita Kozlov (Cloudflare) at AIEF2025 noted that she had not seen anyone using sampling in production yet in an MCP server — an "interesting conclusion" from her research while preparing the talk. ^[extracted] This aligns with Harald Kirschner's observation that the spec is still evolving with no client having adopted structured formatting yet. ^[extracted]

## Relationship to Other Primitives

Sampling complements [[concepts/mcp-dynamic-tool-discovery|dynamic tool discovery]]: discovery adapts the tool surface to context, while sampling gives servers reasoning capability about that context. Together they enable truly stateful, context-aware [[concepts/model-context-protocol|MCP]] interactions. ^[inferred]

Sampling also enables [[concepts/mcp-elicitation|elicitation]] to be more powerful — a server can use sampling to understand user intent before requesting specific input via elicitation. ^[inferred]

## Related

- [[concepts/model-context-protocol]] — MCP protocol overview
- [[concepts/mcp-dynamic-tool-discovery]] — Dynamic tool discovery
- [[concepts/mcp-elicitation]] — Elicitations for user input
- [[entities/harald-kirschner]] — VS Code MCP advocate
- [[entities/microsoft]] — Microsoft/VS Code
