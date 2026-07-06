---
title: Copilot Checkpoint and Undo System
category: concepts
tags:
- copilot
- checkpoints
- undo
- version-control
- github
- microsoft
- aief2025
sources:
- 'https://www.youtube.com/watch?v=rkvilz06y08'
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[entities/github-copilot]]'
  type: implements
- target: '[[concepts/agent-iteration-loop]]'
  type: related_to
summary: Copilot Checkpoint and Undo System
---

# Copilot Checkpoint and Undo System

Copilot maintains checkpoints for each unit of work, allowing users to undo through stages rather than having only a single undo point. This is critical in agent mode where the agent may make many sequential changes across files. ^[extracted]

## How It Works

Each distinct unit of work (e.g., "build data models," "generate frontend," "add tests") creates a checkpoint. Users can compare before/after states and selectively restore previous versions. A new checkpoint UX was mentioned as coming. ^[extracted]

## Key Characteristics

- **Stage-level undo** — Not just a single undo point, but a timeline of checkpoints through an agent's work. ^[extracted]
- **Before/after comparison** — Users can compare states between checkpoints to understand what changed. ^[extracted]
- **Selective restoration** — Restore to any checkpoint, not just the immediately previous one. ^[extracted]

## Relationship to Agent Iteration

The checkpoint system directly supports the [[concepts/agent-iteration-loop|agent iteration loop]] by making it safe to experiment: developers can let the agent work, review the checkpoint, and roll back if needed without losing the entire session. ^[inferred]

## Related

- [[entities/github-copilot]] — GitHub Copilot features
- [[concepts/agent-iteration-loop]] — Agent iteration loop
- [[concepts/readme-driven-development]] — README-driven development

## Sources

- AIEF2025 - Real world MCPs in GitHub Copilot Agent Mode — Jon Peck, Microsoft - https://www.youtube.com/watch?v=RkVILz06y08
