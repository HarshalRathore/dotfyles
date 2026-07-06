---
title: Checkpoint and Undo in AI Code Generation
category: concepts
tags:
- github-copilot
- vscode
- vibe-coding
- version-control
- ux
sources:
- 'https://www.youtube.com/watch?v=eafp8pds7h4'
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.6
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
summary: Checkpoint and Undo in AI Code Generation
---

# Checkpoint and Undo in AI Code Generation

Copilot maintains checkpoints for each unit of work performed by the agent, providing granular undo capability beyond a single undo point. ^[extracted]

## How Checkpoints Work

Each time Copilot completes a distinct unit of work (e.g., installing dependencies, creating a file, running a command), it creates a checkpoint. Users can step through these checkpoints to compare before/after states and selectively restore previous versions. ^[extracted]

## Use Cases

- **Selective restoration** — "I like the particles from version 3 but not the changes from version 5" — restore checkpoint 3 and continue from there
- **Comparison** — See the evolution of the project across checkpoints
- **Safety net for auto-approve** — When auto-approve is enabled, checkpoints provide a way to undo without losing all progress

## Incoming Improvements

Harold mentions a "new checkpoint UX" is coming, suggesting the current checkpoint interface is a stepping stone toward a more polished experience. ^[extracted]

## Relationship to Auto-Approve

The checkpoint system is the safety mechanism that makes auto-approve viable. Without granular checkpoints, auto-approve would be too risky — users couldn't recover from unwanted changes. With checkpoints, users can auto-approve confidently knowing they can step back to any point in the work history. ^[inferred]

## Related

- [[concepts/auto-approve-copilot]] — Auto-approve setting that checkpoint system supports
- [[entities/github-copilot]] — GitHub Copilot tool capabilities
- [[references/aief2025-vibe-coding-at-scale-harold.js]] — Harold's AIEF2025 workshop
- [[concepts/yolo-structured-spectrum-vibe-coding]] — YOLO stage where checkpoints enable safe auto-approve
