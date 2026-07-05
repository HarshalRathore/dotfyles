---
title: "Model Context Protocol"
category: concepts
tags: [mcp, model-context-protocol, agent-tools, claude, openapi, api-integration, theodora-chu, anthropic]
summary: "A protocol for connecting language models to external tools and data sources. Created by two Anthropic engineers, launched at Hack Week, and adopted by Cursor, VS Code, Google, Microsoft, and OpenAI."
sources:
  - "AIEF2025 - Design like Karpathy is watching — Zeke Sikelianos, Replicate - https://www.youtube.com/watch?v=huQPkrwVWwc"
  - "AIEF2025 - MCP: Origins and Requests For Startups — Theodora Chu, Model Context Protocol PM, Anthropic - https://www.youtube.com/watch?v=x-8pBqWiTzk"
provenance: { extracted: 0.8, inferred: 0.15, ambiguous: 0.05 }
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-04T00:00:00Z
updated: 2026-07-05T00:00:00Z
relationships:
  - target: "[[concepts/openapi-for-agents|OpenAPI for Agents]]"
    type: extends
  - target: "[[concepts/agent-readable-docs|Agent-Readable Docs]]"
    type: related_to
  - target: "[[concepts/llm-as-primary-audience|LLM as Primary Audience]]"
    type: related_to
  - target: "[[entities/replicate|Replicate]]"
    type: related_to
  - target: "[[entities/anthropic|Anthropic]]"
    type: related_to
  - target: "[[entities/theodora-chu|Theodora Chu]]"
    type: related_to
  - target: "[[concepts/model-agency|Model Agency]]"
    type: related_to
---

## Model Context Protocol (MCP)

MCP is a protocol for connecting language models to external tools and data sources. It takes an OpenAPI schema and transforms it into a format that language models know how to use directly.

### How It Works

At its core, MCP bridges the gap between structured API descriptions (OpenAPI JSON schemas) and the way language models interact with tools. An OpenAPI schema describes your API's paths, endpoints, parameters, and payloads in structured JSON. MCP takes that schema and makes it directly actionable by an LLM.

### Replicate's MCP Server

Replicate built an MCP server that can be installed in Claude Desktop (not the web app) via a tiny JSON configuration line. The user gets their API token from the Replicate website, and Claude Desktop handles the MCP server installation locally. Once installed, Claude has full access to all Replicate API capabilities with the user's token.

### The "How Many of You" Test

During the AIEF2025 talk, Zeke Sikelianos asked the audience how many people felt they truly understood what MCP was — only about eight hands went up. This suggests that despite the hype around MCP, most developers don't have a clear mental model of what it actually is or how it works.

### Relationship to OpenAPI

MCP does not replace OpenAPI. It extends it. OpenAPI remains the source of truth for API contracts; MCP provides the bridge between that structured contract and the agent's tool-use interface.

### Origin Story

MCP was created by two engineers at Anthropic (David and Justin) who were tired of constantly copying and pasting context from outside the model's context window — Slack messages, Sentry error logs, and other sources. They asked: "How do you give the model the ability to climb out of its box and reach into the real world?" The answer was an open-source standardized protocol. ^[inferred]

### Design Principles

MCP's protocol design is guided by three principles:

1. **Agent-first architecture** — Agents are the future; the protocol is built for models that choose actions based on intelligence.
2. **Streamable HTTP transport** — Changed from SSE to enable more bidirectionality, essential for agent-to-agent communication.
3. **Server simplicity optimization** — The team believes there will be more MCP servers than clients, so they optimized for server builders, pushing complexity to the client side. ^[inferred]

### Adoption Timeline

MCP's adoption followed a clear progression:

1. **November (Hack Week)** — Internal launch at Anthropic, went viral internally, then open-sourced
2. **Launch skepticism** — Many asked "What's MCP?" and questioned why a new protocol was needed
3. **Cursor adoption** — The major turning point; after Cursor, VS Code, Source Graph, and other coding tools adopted MCP
4. **Model provider adoption** — Google, Microsoft, and OpenAI adopted MCP, making it "more and more the standard" ^[inferred]

### Roadmap

Theo Chu (MCP PM at Anthropic) highlighted two upcoming features:
- **Elicitation** — Allows servers to ask end users for additional information (e.g., a flight booking server asking "cheapest or fastest?")
- **Registry API** — Would make it easier for models to discover and connect to MCP servers ^[inferred]

### See Also

- [[concepts/model-agency|Model Agency]] — The core problem MCP solves
- [[concepts/mcp-hack-week-launch|MCP Hack Week Launch]] — Origin story
- [[concepts/mcp-adoption-timeline|MCP Adoption Timeline]] — Adoption journey
- [[concepts/mcp-elicitation|MCP Elicitation]] — Future feature for user input
- [[concepts/mcp-registry-api|MCP Registry API]] — Future feature for server discovery
