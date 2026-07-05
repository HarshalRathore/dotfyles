---
title: "Harald Kirshner"
category: entities
tags:
  - person
  - microsoft
  - vscode
  - github-copilot
  - aief2025
aliases:
  - Harald
  - Harold
sources:
  - "AIEF2025 - Vibe Coding at Scale: Customizing AI Assistants for Enterprise Environments - Harald Kirshner, - https://www.youtube.com/watch?v=i1uPAN6uW4s"
  - "AIEF2025 - Full Spec MCP: Hidden Capabilities - Harald Kirshner - https://www.youtube.com/watch?v=g1hhmz6mxt0"
provenance:
  extracted: 0.90
  inferred: 0.10
  ambiguous: 0.00
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/microsoft|Microsoft]]"
    type: works-at
  - target: "[[entities/vs-code|VS Code]]"
    type: contributes-to
  - target: "[[entities/github-copilot|GitHub Copilot]]"
    type: contributes-to
---

# Harald Kirshner

Harald Kirshner is an engineer at [[entities/microsoft|Microsoft]] working on [[entities/vs-code|VS Code]] and [[entities/github-copilot|GitHub Copilot]]. He presented at [[entities/aief2025|AI Engineer World's Fair 2025]] on customizing AI assistants for enterprise environments and on unlocking the full [[concepts/model-context-protocol|MCP]] spec beyond just tool calls.

## Talks at AIEF2025

- **Vibe Coding at Scale: Customizing AI Assistants for Enterprise Environments** — Demonstrated the YOLO vibe coding workflow in VS Code Agent Mode (auto-approve, voice dictation, new workspace flow), presented the YOLO → Structured → Spec-Driven spectrum of vibe coding maturity, and showed how templates, conventions, and custom MCP tools enable enterprise-grade vibe coding.
- **Full Spec MCP: Hidden Capabilities** — Advocated for using the full MCP spec (dynamic tool discovery, sampling, elicitations, streamable HTTP) rather than just tools; presented VS Code features like user-defined tool sets and MCP Dev Mode.

## Key Ideas

- Vibe coding exists on a maturity spectrum: YOLO (creative exploration) → Structured (template-based guardrails) → Spec-Driven (enterprise-scale reliability)
- Enterprise customization of AI assistants requires templates, conventions, and custom tools (MCP)
- The full MCP spec has hidden primitives beyond tools that enable richer agent behaviors
