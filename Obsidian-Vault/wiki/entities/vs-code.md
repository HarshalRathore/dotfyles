---
title: "VS Code"
category: entities
tags:
  - entity
  - tool
  - ide
  - microsoft
  - mcp
  - github-copilot
aliases:
  - visual-studio-code
  - vscode
sources:
  - "[[sources/watchv=rkvilz06y08]]"
  - "[[sources/watchv=full-spec-mcp]]"
  - "AIEF2025 - Vibe Coding at Scale: Customizing AI Assistants for Enterprise Environments - Harald Kirshner, - https://www.youtube.com/watch?v=i1uPAN6uW4s"
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.70
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/microsoft|Microsoft]]"
    type: developed-by
  - target: "[[entities/github-copilot|GitHub Copilot]]"
    type: hosts
  - target: "[[concepts/model-context-protocol|MCP]]"
    type: integrates
---

# VS Code

[[entities/microsoft|Microsoft]]'s Visual Studio Code (VS Code) is the primary IDE through which [[entities/github-copilot|GitHub Copilot]] and [[concepts/model-context-protocol|MCP]] servers are integrated into the developer workflow. VS Code provides the configuration layer, the MCP server management UI, and the permission-gating mechanism that makes agent workflows safe. ^[extracted]

## Early Team

[[entities/kenneth-auchenberg|Kenneth Auchenberg]] was part of the early VS Code team at Microsoft, helping build the product that became the market leader in 2019. He left Microsoft in 2019. ^[extracted]

## MCP Integration in VS Code

VS Code supports MCP server integration through several mechanisms:

- **One-click MCP installation** — From `github.com/modelcontextprotocol/servers`, developers can click to install an MCP server directly into VS Code, which activates the editor and prompts for installation. ^[extracted]
- **Settings JSON configuration** — MCP server connection strings, auth tokens, and other configuration parameters are stored in VS Code's settings.json. ^[extracted]
- **Tools icon in chat** — A tools icon (hammer and wrench) in the chat area displays all available MCP servers, allowing developers to enable/disable them. ^[extracted]
- **MCP Dev Mode** — Debugger attachment for MCP servers running inside VS Code, supporting Python and Node out of the box. ^[2]
- **User-defined tool sets** — Curated groupings of tools for specific workflows (e.g., "front-end testing flow"). ^[extracted]
- **Streamable HTTP transport** — Modern transport replacing SSE, reducing stateful server churn. ^[extracted]

## Copilot Integration

VS Code is the host for GitHub Copilot's agent mode, where the agent:

- Reads project files and README specs
- Executes terminal commands (with user permission)
- Connects to MCP servers (with user permission)
- Generates and iterates code across the project

### Agent Mode Features for Vibe Coding

Harald Kirshner (Microsoft) demonstrated at AIEF2025 several VS Code features optimized for [[concepts/vibe-coding|vibe coding]]:

- **Auto-approve** — Bypasses all "continue" confirmation buttons during agent operations; essential for maintaining flow. Can be scoped to workspace-only. ^[extracted]
- **Voice dictation** — Built-in voice input using a local model (nothing leaves the machine). Shortcut: Command-I. Enables hands-free vibe coding. ^[extracted]
- **`copilot new` command** — Streamlined workflow for creating new projects from scratch: creates workspace, generates plan, executes setup commands, auto-resolves dependency errors. ^[extracted]
- **Visual context** — Simple Browser preview supports element selection; selected elements attached as CSS/HTML to chat for visual refinement without reading code. ^[extracted]
- **Checkpoint/undo system** — Maintains checkpoints for each unit of work, allowing stage-by-stage undo and before/after comparison. ^[extracted]

## VS Code Insiders

VS Code Insiders is the pre-release channel built daily from the latest commits, releasing twice per day. It provides early access to new features including agent mode capabilities, MCP integration, and Copilot enhancements. The stable release channel operates on a monthly cadence. ^[extracted]

## Related

- [[entities/github-copilot]] — GitHub Copilot in VS Code
- [[concepts/model-context-protocol]] — MCP protocol
- [[concepts/vs-code-agent-mode-features|VS Code Agent Mode Features]] — Auto-approve, voice dictation, new workspace flow
- [[entities/harald-kirshner|Harald Kirshner]] — VS Code engineer who demonstrated vibe coding features
- [[entities/jon-peck]] — MCP demonstration in VS Code
