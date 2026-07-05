---
title: "Parallel AI Coding Sessions"
category: concepts
tags:
  - github-copilot
  - vscode
  - vibe-coding
  - exploration
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

# Parallel AI Coding Sessions

VS Code Copilot supports running multiple chat sessions in parallel, each with its own name, window placement, and focus state. This enables exploring multiple design directions simultaneously. ^[extracted]

## Window Management

Sessions can be:
- Moved into the editor panel for more chat space
- Dropped into separate windows
- Pinned to stay on top
- Moved to different monitors
- Named for easy identification

## Use in Vibe Coding

Harold demonstrates running two vibe coding sessions simultaneously — one building a hydration app with Material Design, another with Fluent Design — to compare different design directions. The key insight: "trying out different ways to get to the same result is where Vibe coding really shines." ^[extracted]

## Practical Patterns

- **Design exploration** — Run parallel sessions with different design systems (Material vs. Fluent vs. Apple) to compare outputs
- **Feature variation** — "Create three different versions of this sign-up flow to explore what this could look like"
- **Stack comparison** — Try the same feature with different frameworks to evaluate AI output quality

## Caveats

When running multiple sessions, users need to track which session is doing what. Harold notes the confusion point: "if you have multiple open now at the same time, you've got to figure out what's running what." Named sessions and separate windows help mitigate this. ^[extracted]

## Related

- [[concepts/yolo-structured-spectrum-vibe-coding]] — YOLO stage where parallel exploration is central
- [[entities/github-copilot]] — GitHub Copilot tool capabilities
- [[references/aief2025-vibe-coding-at-scale-harold.js]] — Harold's AIEF2025 workshop
- [[concepts/ai-iteration-loop]] — AI iteration and exploration patterns
