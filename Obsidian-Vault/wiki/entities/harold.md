---
title: Harold
category: entities
tags:
- person
- microsoft
- vscode
- github-copilot
- engineer
sources:
- 'https://www.youtube.com/watch?v=eafp8pds7h4'
provenance:
  extracted: 0.9
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.6
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
summary: Harold
---

# Harold

Harold is a VS Code engineer at [[entities/microsoft|Microsoft]] who spoke at AI Engineer World's Fair 2025 on vibe coding at enterprise scale. ^[extracted]

## Role

Works on the VS Code team, specifically on Copilot's agent and terminal integration. He notes that the person who owns the AI terminal integration had just returned from paternal leave, which was affecting the release cadence of certain features. ^[extracted]
## VS Code Stable vs. Insiders

Harold distinguishes between VS Code Stable (monthly release cadence) and VS Code Insiders (daily pre-release builds, analogous to Firefox Nightly or Chrome Canary). ^[extracted] Some features, like the tools picker and certain Copilot settings, may only be available in Insiders. He acknowledges the friction of running Insiders for workshops: "I shouldn't run workshops" when features behave differently between stable and insiders. ^[extracted]

## AIEF2025 Workshop

Delivered a full workshop titled "[Full Workshop] Vibe Coding at Scale: Customizing AI Assistants for Enterprise Environments" covering:

- Three-stage maturity model for vibe coding (YOLO, Structured, Spectrum)
- Practical VS Code Copilot workflows for each stage
- Enterprise adoption strategies using starter templates and Copilot Instructions
- Live demonstrations of building apps from scratch using natural language

## Key Contributions

- Proposed the YOLO → Structured → Spectrum maturity model for vibe coding
- Demonstrated parallel AI coding sessions for design exploration
- Advocated for workspace-scoped auto-approve settings as a safety best practice
- Noted that Copilot Instructions can feel repetitive but encode what the AI wouldn't otherwise know: internal conventions, not public best practices
## Chat Session Management

Harold demonstrates advanced VS Code Copilot chat management: sessions can be moved into the editor panel for more chat space, dropped into separate windows, pinned to stay on top, moved to different monitors, and named for easy identification. ^[extracted] This enables running multiple parallel sessions and tracking which is doing what — a practical pattern for design exploration. ^[inferred]

## Related

- [[entities/microsoft]] — Microsoft, employer
- [[entities/github-copilot]] — GitHub Copilot, product area
- [[references/aief2025-vibe-coding-at-scale-harold.js]] — AIEF2025 workshop reference page
- [[concepts/yolo-structured-spectrum-vibe-coding]] — Harold's maturity model
