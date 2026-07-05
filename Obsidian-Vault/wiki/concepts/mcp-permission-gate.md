---
title: "MCP Permission Gate"
category: concepts
tags:
  - mcp
  - permission
  - security
  - github-copilot
  - agent-mode
  - user-gate
sources:
  - "[[sources/watchv=rkvilz06y08]]"
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.80
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# MCP Permission Gate

The MCP Permission Gate is the user-approval mechanism that prevents AI agents from autonomously connecting to external data sources, databases, or executing terminal commands. When [[entities/github-copilot|GitHub Copilot]] Agent Mode needs to interact with an [[concepts/model-context-protocol|MCP]] server or the terminal, it pauses and presents a "continue" box that requires explicit user approval before proceeding. ^[extracted]

## How It Works

The permission gate operates at two levels:

1. **Terminal access** — When the agent needs to run commands, it pauses and asks the user for permission. If approved, it reads the terminal response and reacts to any errors. ^[extracted]
2. **MCP connections** — When the agent needs to connect to an MCP server (e.g., a PostgreSQL database), it similarly pauses and asks for permission. The user must explicitly approve the connection before the agent can proceed. ^[extracted]

## Security Model

The permission gate is a critical safety layer in the agent workflow:

- **No silent database access** — The agent cannot read or write to a database without user approval. ^[extracted]
- **Read-only MCPs are preferred** — [[entities/jon-peck|Jon Peck]] notes that the PostgreSQL MCP he used "only functions in read-only mode," which is "one of the reasons I like it because it's very safe." ^[extracted]
- **User in the loop** — The "continue" box ensures the developer remains in control of what the agent connects to and what data it accesses. ^[extracted]

## Relationship to Copilot Security

The MCP Permission Gate complements [[entities/github-copilot|GitHub Copilot]]'s broader security model:

- **Coding Agent isolation** — Firewalled, ephemeral, branch-only, draft PRs, no self-review. ^[extracted]
- **Org-wide governance** — Repository-level exclusions, org-wide policy controls. ^[2]
- **MCP Permission Gate** — Runtime approval for external connections and terminal access.

## Related

- [[concepts/model-context-protocol]] — The MCP protocol
- [[entities/github-copilot]] — GitHub Copilot security model
- [[concepts/agent-vs-workflow]] — Agent autonomy spectrum
