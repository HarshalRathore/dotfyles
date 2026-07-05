---
title: "MCP Dev Mode (VS Code)"
category: concepts
tags:
  - mcp
  - debugging
  - vscode
  - developer-experience
  - model-context-protocol
summary: "VS Code's MCP Dev Mode — a debugger attachment feature for MCP servers running inside VS Code, supporting Python and Node out of the box."
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

# MCP Dev Mode (VS Code)

MCP Dev Mode is [[entities/microsoft|VS Code]]'s built-in debugging environment for [[concepts/model-context-protocol|MCP]] servers. ^[extracted] It solves the developer experience pain point of debugging MCP servers that are owned by the client rather than a standalone process.

## The Problem

MCP servers are typically not owned by a process that developers run manually — they are owned by the client (e.g., [[entities/microsoft|VS Code]]) that hosts them. This makes traditional debugging difficult:
- No way to attach a debugger
- No visibility into server execution
- Dynamic prompts generated on the server are opaque

## How Dev Mode Works

[[entities/harald-kirschner]] demonstrated Dev Mode at AIEF2025:

1. **Dev toggle** — A dev mode toggle in VS Code enables debugging for all MCP servers
2. **Console** — A console panel that always works for all MCP servers
3. **Debugger attachment** — When in debugging mode, the VS Code debugger attaches to the MCP server process
4. **Breakpoints** — Developers can set breakpoints and step through server code
5. **Dynamic prompt debugging** — When a prompt is dynamically generated on the server, the debugger catches it at the breakpoint

[[entities/harald-kirschner]] noted this "changed how I work on MCPs, definitely." ^[extracted]

## Supported Languages

Out of the box, Dev Mode supports debugging for:
- **Python** MCP servers
- **Node.js** MCP servers

[[entities/harald-kirschner]] noted that VS Code is both the client and host, so it can "just put it into debug mode and attach its debugger." ^[extracted]

## Related

- [[concepts/model-context-protocol]] — MCP protocol overview
- [[concepts/vscode-agent-mode]] — VS Code Agent Mode
- [[entities/harald-kirschner]] — VS Code MCP advocate
- [[entities/microsoft]] — Microsoft/VS Code
