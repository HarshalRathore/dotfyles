---
title: "Simple Browser in VS Code"
category: concepts
tags:
  - vscode
  - browser
  - copilot
  - visual-editing
  - github
  - microsoft
  - aief2025
sources:
  - "[[sources/watchv=rkvilz06y08]]"
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/vs-code]]"
    type: implements
  - target: "[[entities/github-copilot]]"
    type: related_to
---

# Simple Browser in VS Code

VS Code's Simple Browser is a built-in preview capability that enables [[entities/github-copilot|GitHub Copilot]] to attach visual context to code interactions. A toggle lets users select specific elements in a preview, which are then attached as CSS descriptions and HTML into the chat — enabling iterative visual refinement without reading code. ^[extracted]

## How It Works

When a developer previews a web page in VS Code's Simple Browser, they can toggle element selection mode. Clicking an element captures its CSS and HTML structure and attaches it to the Copilot chat context. The developer can then ask Copilot to "make this progress indicator more animated" without manually describing the element. ^[extracted]

## Key Characteristics

- **Element selection** — Toggle mode to select specific DOM elements in the preview. ^[extracted]
- **Automatic context** — CSS descriptions and HTML are captured automatically, no manual description needed. ^[extracted]
- **Visual refinement** — Enables iterative visual changes ("make this more animated") without reading source code. ^[extracted]

## Relationship to Visual Editing

The Simple Browser bridges the gap between code and visual design: developers can refine UI visually through the browser preview while Copilot handles the underlying code changes. This is a key feature for [[entities/github-copilot|Copilot]]'s visual editing capabilities. ^[inferred]

## Related

- [[entities/vs-code]] — VS Code features
- [[entities/github-copilot]] — GitHub Copilot features
- [[concepts/readme-driven-development]] — README-driven development

## Sources

- AIEF2025 - Real world MCPs in GitHub Copilot Agent Mode — Jon Peck, Microsoft - https://www.youtube.com/watch?v=RkVILz06y08
