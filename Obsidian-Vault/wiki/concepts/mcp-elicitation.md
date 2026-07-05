---
title: "MCP Elicitation"
category: concepts
tags: [mcp, elicitation, user-input, server-to-client, draft-spec, human-in-the-loop]
summary: "An MCP draft spec feature that allows servers to ask end users for additional information, enabling interactive workflows where the server can request clarification from the human user through the client."
sources:
  - "AIEF2025 - MCP: Origins and Requests For Startups — Theodora Chu, Model Context Protocol PM, Anthropic - https://www.youtube.com/watch?v=x-8pBqWiTzk"
provenance: { extracted: 0.90, inferred: 0.07, ambiguous: 0.03 }
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05T00:00:00Z
updated: 2026-07-05T00:00:00Z
relationships:
  - target: "[[concepts/mcp|Model Context Protocol]]"
    type: extends
  - target: "[[concepts/mcp-sampling|MCP Sampling]]"
    type: related_to
  - target: "[[concepts/human-in-the-loop|Human-in-the-Loop]]"
    type: related_to
---

# MCP Elicitation

Elicitation is an MCP feature added to the draft spec that allows servers to ask end users for more information. It enables interactive workflows where an MCP server can request clarification from the human user through the client. ^[extracted]

## How It Works

When a server needs additional information to complete a task, it sends an elicitation request to the client. The client presents the question to the end user, the user responds, and the response is sent back to the server. This creates a bidirectional conversation flow between server and user.

## Example: Flight Booking

Theo Chu illustrated elicitation with a flight booking scenario: the user asks the server to "book me the best flight to Atlanta." The server then asks the user: "What does 'best' mean to you? Is it cheapest or fastest?" The user responds, and that response is ultimately sent back to the server to complete the booking. ^[extracted]

## Significance

Elicitation represents a significant step toward more natural human-AI interactions:

- **Interactive agents** — Servers can ask clarifying questions rather than making assumptions
- **Human-in-the-loop** — Users remain involved in decision-making even when agents are acting on their behalf
- **Bidirectional protocol** — Reinforces MCP's shift from unidirectional tool calls to true two-way communication

## Relationship to Other Primitives

Elicitation complements [[concepts/mcp-sampling|MCP Sampling]]: sampling gives servers reasoning capability about context, while elicitation gives servers the ability to request specific input from users. Together they enable more sophisticated interactive workflows. ^[inferred]

## Status

Elicitation was added to the draft spec as of the AIEF2025 talk (July 2025). ^[extracted]

## Related

- [[concepts/mcp|Model Context Protocol]] — MCP protocol overview
- [[concepts/mcp-sampling|MCP Sampling]] — Server-to-client LLM completions
- [[concepts/human-in-the-loop|Human-in-the-Loop]] — Human oversight in agent workflows
- [[concepts/agent-autonomy|Agent Autonomy]] — The spectrum of agent independence
