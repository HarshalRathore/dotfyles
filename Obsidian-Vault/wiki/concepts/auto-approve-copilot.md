---
title: Auto-Approve and Auto-Accept in Copilot
category: concepts
tags:
- github-copilot
- vscode
- vibe-coding
- yolo
- ux
sources:
- 'https://www.youtube.com/watch?v=eafp8pds7h4'
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
summary: Auto-Approve and Auto-Accept in Copilot
---

# Auto-Approve and Auto-Accept in Copilot

Auto-approve (also called auto-accept) is a VS Code Copilot setting that eliminates all "continue" buttons from the agent workflow, allowing the AI to execute changes without user confirmation at each step. ^[extracted]

## The Setting

Located in VS Code settings under "approve" or "auto-approve", the setting can be scoped to:
- **User** — applies across all workspaces (less safe)
- **Workspace** — applies only to the current workspace (recommended for YOLO vibe coding)

The workspace-scoped approach is safer because it limits the setting's blast radius to projects where the user explicitly wants unattended AI execution. ^[extracted]

## Auto-Accept After Delay

A related setting, "auto-accept after delay," automatically accepts Copilot's suggestions after a configurable time period. Combined with auto-save (which triggers on focus change or after a delay), this creates a fully hands-off workflow where the user describes intent and the AI executes without interruption. ^[extracted]

## Role in YOLO Vibe Coding

Auto-approve is described as "the first rule of vibe coding" — the core principle is not looking at code and letting the AI do its work. ^[extracted] It enables the natural-language-only interaction model where users stay in flow rather than pausing to review each change.

## Checkpoint and Undo

Copilot maintains checkpoints for each unit of work, providing granular undo capability. Users can step through checkpoints to compare before/after states and selectively restore previous versions. A new checkpoint UX is mentioned as incoming. ^[extracted]

This checkpoint system is the safety net that makes auto-approve viable — if something goes wrong, users can undo to any checkpoint rather than losing everything.

## MCP Tool Permissions

For MCP tools, Copilot offers granular permission controls: allow, always allow for session, always allow for workspace. These provide finer-grained control than the blanket auto-approve setting. ^[extracted]

## Related

- [[concepts/yolo-structured-spectrum-vibe-coding]] — YOLO stage where auto-approve is central
- [[entities/github-copilot]] — GitHub Copilot tool capabilities
- [[references/aief2025-vibe-coding-at-scale-harold.js]] — Harold's AIEF2025 workshop
- [[concepts/code-is-artifact]] — Code as artifact vs. prompt as source
