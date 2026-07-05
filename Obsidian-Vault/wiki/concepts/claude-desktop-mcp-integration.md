---
title: "Claude Desktop MCP Integration"
category: concepts
tags: [claude-desktop, mcp, mcp-server, api-integration, agent-tools, developer-setup]
summary: "The mechanism for connecting Claude Desktop to external APIs via MCP servers. A minimal JSON configuration gives Claude direct access to platform capabilities with the user's API token."
sources:
  - "AIEF2025 - Design like Karpathy is watching — Zeke Sikelianos, Replicate - https://www.youtube.com/watch?v=huQPkrwVWwc"
provenance: { extracted: 0.9, inferred: 0.1, ambiguous: 0.0 }
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04T00:00:00Z
updated: 2026-07-04T00:00:00Z
relationships:
  - target: "[[concepts/mcp|Model Context Protocol]]"
    type: extends
  - target: "[[entities/replicate|Replicate]]"
    type: related_to
  - target: "[[concepts/openapi-for-agents|OpenAPI for Agents]]"
    type: related_to
---

## Claude Desktop MCP Integration

Claude Desktop MCP Integration is the mechanism for connecting Claude Desktop (the native app, not the web app) to external APIs through Model Context Protocol servers. It requires minimal configuration — a small JSON line in developer settings — and gives Claude direct access to all capabilities of the connected platform using the user's own API token.

### How It Works

1. **Get an API token** from the platform (e.g., Replicate website)
2. **Add a JSON configuration line** in Claude Desktop's developer settings
3. **Claude Desktop handles installation** of the MCP server locally
4. **Claude now has full API access** — it can make requests, run predictions, search models, and perform any action the API supports

### Significance

This integration pattern is significant because it eliminates the need for:
- Installing additional software
- Writing custom integration code
- Maintaining API wrappers

The user gets a token from the platform, pastes one line of JSON into Claude Desktop, and Claude can immediately do everything the platform's API allows. This is the simplest possible integration pattern for AI tool access.

### Replicate's MCP Server

Replicate built an MCP server that implements this pattern. Once installed, Claude can interact with all Replicate API capabilities — running models, checking predictions, searching the model catalog — entirely through natural language conversation within Claude Desktop.
