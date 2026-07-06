---
title: "MCP Dynamic Tool Discovery"
category: concepts
tags:
  - mcp
  - dynamic-discovery
  - tools
  - stateful
  - model-context-protocol
summary: "MCP's built-in capability for servers to add or remove tools at runtime, enabling context-aware tool exposure that adapts to the current state of a session or application."
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

# MCP Dynamic Tool Discovery

Dynamic tool discovery is the [[concepts/model-context-protocol|MCP]] spec capability for servers to add or remove tools at runtime, without requiring a client restart or reconnection. ^[extracted]

## How It Works

The MCP spec allows servers to send updates to clients about new tools becoming available or existing tools being removed. The client receives these updates and refreshes its available tool set on the fly. ^[extracted]

## Use Case: Context-Aware Tools

[[entities/harald-kirschner]] demonstrated this with a dungeon-crawl game powered by [[entities/microsoft|VS Code]] MCP. The game server tracks which room the player is in and dynamically exposes only the tools relevant to the current state:

- Walking east/north — always available
- Picking up items — available when items exist in the room
- Battling monsters — only appears when a monster is present in the current room

This eliminates the "too many tools" problem where AI gets confused by an oversized, static tool set. ^[extracted]

## Contrast with Static Tool Sets

Static tool sets expose all available tools upfront, leading to:
1. **Too many tools** — AI gets confused by volume
2. **Too many domains** — different tool properties and instructions per domain
3. **Repetition** — more turns to solve problems increases confusion

Research from [[entities/llamaindex|LangChain]] cited by [[entities/harald-kirschner]] confirms all three vectors degrade tool-use quality. ^[extracted]

## User-Defined Tool Sets

Complementing dynamic discovery, [[entities/microsoft|VS Code]] v1.10 introduced user-defined tool sets — curated groupings of tools for specific workflows (e.g., "front-end testing flow"). These are selected by the user and persist for the session. ^[extracted]

## Relationship to Sampling

Dynamic discovery and [[concepts/mcp-sampling|sampling]] are complementary: discovery adapts the tool surface to context, while sampling lets servers request LLM completions from clients for reasoning about that context. Together they enable truly stateful, context-aware MCP interactions. ^[inferred]

## Related

- [[concepts/model-context-protocol]] — MCP protocol overview
- [[concepts/mcp-sampling]] — Server-to-client LLM sampling
- [[concepts/mcp-tool-sets]] — User-defined tool groupings
- [[entities/harald-kirschner]] — VS Code MCP advocate
- [[entities/microsoft]] — Microsoft/VS Code
