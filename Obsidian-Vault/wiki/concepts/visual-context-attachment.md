---
title: "Visual Context Attachment in AI Coding"
category: concepts
tags:
  - github-copilot
  - vscode
  - visual-editing
  - vibe-coding
  - ui
sources:
  - "[[sources/watchv=eafp8pds7h4]]"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Visual Context Attachment in AI Coding

Visual context attachment is a VS Code Copilot feature that lets users select specific UI elements from a live preview and attach them as CSS descriptions and HTML into the chat — eliminating the need to manually describe elements. ^[extracted]

## How It Works

When the Simple Browser preview is open in VS Code, Copilot injects a toggle that allows users to click on any element in the preview. The selected element's CSS description and HTML are then attached to the current chat message as context. ^[extracted]

The user can then say things like "make this header more animated" or "add particles to this progress indicator" without needing to describe the element's location, structure, or styling — the AI already has the exact DOM and CSS.

## Impact on Vibe Coding

This feature is a key enabler of the "don't look at code" principle in YOLO vibe coding. Users can iteratively refine UI by pointing at elements in the preview and describing changes in natural language. The AI handles the implementation without the user ever reading or writing CSS/HTML. ^[extracted]

## Use Cases

- **Iterative design refinement** — "make this more animated," "add particles," "change the colors"
- **Wireframe-to-code** — Attach a wireframe element and ask the AI to style it
- **Cross-reference** — Point at one element and ask the AI to make another element match its style

## Related

- [[concepts/yolo-structured-spectrum-vibe-coding]] — YOLO stage where visual context is central
- [[entities/github-copilot]] — GitHub Copilot tool capabilities
- [[references/aief2025-vibe-coding-at-scale-harold.js]] — Harold's AIEF2025 workshop
- [[concepts/code-is-artifact]] — Code as artifact vs. prompt as source
