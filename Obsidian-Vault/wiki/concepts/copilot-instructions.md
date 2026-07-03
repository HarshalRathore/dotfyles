---
title: "Copilot Instructions"
tags:
  - concept
  - ai
  - best-practice
  - team-workflow
  - github
aliases: [copilot-instructions.md, AI instruction files, codified AI standards]
sources:
  - "AIEF2025 - Unlocking AI Powered DevOps Within Your Organization — Jon Peck, GitHub - https://www.youtube.com/watch?v=C1NivhYS1sI"
summary: "A committed `.github/copilot-instructions.md` file that codifies team best practices, coding standards, and patterns for AI tools to follow automatically — maintained by lead developers as team decisions evolve."
provenance:
  extracted: 0.80
  inferred: 0.18
  ambiguous: 0.02
base_confidence: 0.65
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Copilot Instructions

Copilot Instructions is the practice of codifying team development standards into a `.github/copilot-instructions.md` file at the repository root, enabling AI coding tools to automatically follow team conventions. The pattern was articulated by [[entities/jon-peck|Jon Peck]] of [[entities/github-copilot|GitHub]] at AI Engineer World's Fair 2025.

## How It Works

- **File location:** `.github/copilot-instructions.md` inside the repository. ^[extracted]
- **Shared artifact:** The file is committed to version control — it becomes part of the repository's shared knowledge. ^[extracted]
- **Local + remote:** Used locally by individual developers and consumed by AI tools during code generation. ^[extracted]

## What Instructions Cover

Peck describes the file as encoding decisions a team makes during development ^[extracted]:

- Which linting practices to follow
- Model accessor patterns
- Type conventions and naming rules
- Security checks that must run on every change
- Any pattern that the team standardizes on

## Ownership and Maintenance

A lead developer or team manager owns keeping the instructions file current. When the team makes a decision — adopting a new pattern, deprecating an approach, requiring a specific check — it becomes the lead's job to ensure it ends up in `copilot-instructions.md` so AI tools keep all team members aligned. ^[extracted]

## Relationship to Enterprise Knowledge Bases

For [[entities/github-copilot|GitHub Copilot Enterprise]] users, instructions files can be supplemented with **knowledge bases** — named collections of repositories that provide the AI with best-practice examples, internal API specifications, and reference implementations on demand. ^[extracted]

## Related

- [[concepts/brownfield-first-ai-adoption]] — The learning strategy where instructions guide AI interaction
- [[concepts/ai-powered-devops]] — AI applied across the DevOps lifecycle
- [[concepts/context-engineering]] — Getting the right context into the model; instructions are part of that
- [[entities/jon-peck]] — Speaker who articulated the pattern

## Sources

- AIEF2025 — Unlocking AI Powered DevOps Within Your Organization, Jon Peck, GitHub. https://www.youtube.com/watch?v=C1NivhYS1sI
