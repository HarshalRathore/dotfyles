---
title: "VS Code Agent Mode"
category: concepts
tags:
  - vscode
  - github-copilot
  - vibe-coding
  - agent-mode
  - ux
sources:
  - "[[sources/watchv=eafp8pds7h4]]"
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# VS Code Agent Mode

Agent Mode is VS Code Copilot's most autonomous interaction mode, where the AI navigates the project, pulls in relevant files, runs terminal commands (with user approval by default), iterates, and self-heals. ^[extracted]

## Discovery and Activation

Agent Mode can be hard to find for new users. It's selected from a dropdown at the bottom of the chat panel. Harold notes it will become the default in a future release, which will solve the discoverability problem. ^[extracted]

## Tools Picker

Agent Mode exposes a "tools picker" menu that only appears when in Agent Mode. This menu includes settings like "scaffold new workspace" which can be disabled for cleaner HTML-first development. ^[extracted]

## Window Management

Agent Mode chats can be:
- Moved into the editor panel for more chat space
- Dropped into separate windows on different monitors
- Pinned to stay on top
- Named for identification
- Run in parallel with other sessions

This flexibility supports the YOLO vibe coding workflow where users want to focus on the AI's output rather than the editor. ^[extracted]

## Relation to Other Modes

Agent Mode sits at level 4 of GitHub Copilot's workload spectrum (after Code Completions, Chat, and Edits). It's the first mode that operates across files and runs terminal commands. ^[extracted]

## Related

- [[entities/github-copilot]] — GitHub Copilot workload spectrum
- [[concepts/yolo-structured-spectrum-vibe-coding]] — YOLO stage where Agent Mode is primary
- [[references/aief2025-vibe-coding-at-scale-harold.js]] — Harold's AIEF2025 workshop
