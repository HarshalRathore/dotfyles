---
title: "Simple Browser in VS Code"
category: entities
tags:
  - vscode
  - github-copilot
  - browser-preview
  - vibe-coding
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

# Simple Browser in VS Code

Simple Browser is VS Code's built-in browser preview, accessible through Copilot's workflow. It provides an in-editor preview of web content with hot reload and element selection capabilities. ^[extracted]

## Features

- **In-editor preview** — No need to leave VS Code to see web output
- **Hot reload** — Changes appear automatically without manual refresh
- **Element selection** — A toggle injected by Copilot allows users to click on elements in the preview and attach them as CSS/HTML context to the chat
- **Auto-start** — When Copilot runs a development server (e.g., `npm run dev`), Simple Browser can open automatically

## Role in Visual Editing

Simple Browser is the foundation for [[concepts/visual-context-attachment|visual context attachment]]. Users select elements in the preview, and Copilot attaches their CSS description and HTML to the chat, enabling iterative visual refinement without reading code. ^[extracted]

## Related

- [[concepts/visual-context-attachment]] — Visual context attachment feature built on Simple Browser
- [[entities/github-copilot]] — GitHub Copilot tool capabilities
- [[references/aief2025-vibe-coding-at-scale-harold.js]] — Harold's AIEF2025 workshop
