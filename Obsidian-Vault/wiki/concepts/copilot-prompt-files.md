---
title: Copilot Prompt Files
category: concepts
tags:
- copilot
- prompt-files
- vscode
- agent-mode
- github
sources:
- 'https://www.youtube.com/watch?v=rkvilz06y08'
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.7
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
summary: Copilot Prompt Files
---

# Copilot Prompt Files

Copilot Prompt Files are selectable prompt templates stored in a VS Code workspace or repository that developers can invoke for common agent workflows. They are part of the [[concepts/agent-iteration-loop|agent iteration loop]] and complement [[concepts/copilot-instructions|Copilot Instructions]] and README-driven development. ^[extracted]

## Purpose

Prompt files allow developers to:

- **Pre-define common workflows** — Instead of typing the same prompt repeatedly, developers save prompt templates for recurring tasks.
- **Select prompts selectively** — Different prompts can be used for different parts of a project or different iteration cycles.
- **Version-control prompts** — Prompt files are stored in the repository, making them a shared team artifact.

## Relationship to Other Features

Prompt files sit alongside:

- **README files** — The living specification for agent-driven development.
- **Copilot Instructions** — Team-wide coding standards and guidelines.
- **`.instructions` files** — Per-file-type instruction patterns. ^[2]

Together, these form a layered prompt system where the README provides the "what," Copilot Instructions provide the "how," and prompt files provide the "when." ^[inferred]

## Related

- [[concepts/agent-iteration-loop]] — Agent iteration loop
- [[concepts/copilot-instructions]] — Copilot Instructions
- [[concepts/dot-instructions-files]] — Per-file-type instruction files
- [[entities/github-copilot]] — GitHub Copilot features
