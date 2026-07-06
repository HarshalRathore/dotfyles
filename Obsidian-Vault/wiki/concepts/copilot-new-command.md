---
title: Copilot New Command for Project Scaffolding
category: concepts
tags:
- github-copilot
- vscode
- vibe-coding
- scaffolding
- project-setup
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
summary: Copilot New Command for Project Scaffolding
---

# Copilot New Command for Project Scaffolding

The `copilot new` command in VS Code is optimized for creating projects from scratch. It addresses the common pain point of "what is the right stack? How do I get started?" by guiding users through a project-from-zero workflow. ^[extracted]

## Design Philosophy

The command is specifically designed for the vibe coding entry point: users who want to describe what they want in natural language and have an AI generate a complete project. Harold notes that "every second person" evaluates AI coding tools by asking "can it make me a water tracking app?" or "can it make me a movie database app?" — and `copilot new` optimizes for this exact flow. ^[extracted]

## Workflow

1. User starts with an empty workspace (no folder open)
2. Invokes `copilot new` with a natural language description
3. Copilot asks to open/create a folder
4. The command scaffolds the project: installs dependencies, creates files, sets up the stack
5. With auto-approve enabled, the entire process runs without user intervention

## Stack Selection

The command works best with popular, stable frameworks (React, Vibe, Material Design) where the AI doesn't have to reason about unfamiliar patterns or make wild guesses. ^[extracted] The user provides the stack preference and design direction, and Copilot handles the rest.

## Bias Toward NPM Projects

Harold notes that `copilot new` is biased toward NPM/package-based projects — it "always ends up a little more complex" because it defaults to installing packages. For simpler single-file HTML projects, users can disable the new tool in VS Code Insiders. ^[extracted]

## Relationship to Structured Vibe Coding

In enterprise contexts, `copilot new` can be configured with starter templates that encode internal tech stacks, design systems, and workflow conventions. This means the scaffolding step already produces code that conforms to team standards, rather than requiring post-hoc cleanup. ^[inferred]

## Related

- [[concepts/yolo-structured-spectrum-vibe-coding]] — YOLO stage where `copilot new` is the entry point
- [[entities/github-copilot]] — GitHub Copilot tool capabilities
- [[references/aief2025-vibe-coding-at-scale-harold.js]] — Harold's AIEF2025 workshop
- [[concepts/auto-approve-copilot]] — Auto-approve setting for unattended execution
