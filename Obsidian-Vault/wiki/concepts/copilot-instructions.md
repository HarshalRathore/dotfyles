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
  - "AIEF2025 - Collaborating with Agents in your Software Dev Workflow — Jon Peck & Christopher Harrison, Microsoft - https://www.youtube.com/watch?v=G1hhmz6mXT0"
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

### Demo and Consistency Value

Peck emphasizes the practical value for demo reliability — a probabilistic tool needs consistency, and instructions files are the top mechanism for achieving it: ^[extracted]

> "Instructions files have been probably the number one thing that I have leaned on to help ensure that I get some level of consistency."

## Relationship to .instructions Files

While Copilot Instructions provides global repository-level guidance, [[concepts/dot-instructions-files|.instructions files]] provide granular, file-type-specific guidance applied automatically via pattern matching. The two are complementary: ^[inferred]

- **Copilot Instructions**: Broad direction, team standards, repository structure, language guidance. ^[extracted]
- **.instructions files**: Per-file-type patterns (e.g., `*.tsx` React components, `*.svelte`) with prototype file references. ^[extracted]

There is no strict hierarchy — Copilot considers all context sources together. Consistency across all sources prevents mixed signals. ^[extracted]

## Don't Be Passive-Aggressive

A key practice from [[entities/christopher-harrison|Christopher Harrison]]: ^[extracted]

> "Don't be passive aggressive with Copilot. That if there's an important piece of information that you need Copilot to consider, go ahead and make sure that you tell Copilot that."

Instructions files are the mechanism for encoding this in advance — standards the AI follows automatically rather than relying on ad-hoc prompting. ^[inferred]

## Ownership and Maintenance
A lead developer or team manager owns keeping the instructions file current. When the team makes a decision — adopting a new pattern, deprecating an approach, requiring a specific check — it becomes the lead's job to ensure it ends up in `copilot-instructions.md` so AI tools keep all team members aligned. ^[extracted]

## Relationship to Enterprise Knowledge Bases

For [[entities/github-copilot|GitHub Copilot Enterprise]] users, instructions files can be supplemented with **knowledge bases** — named collections of repositories that provide the AI with best-practice examples, internal API specifications, and reference implementations on demand. ^[extracted]

## Related

- [[concepts/brownfield-first-ai-adoption]] — The learning strategy where instructions guide AI interaction
- [[concepts/ai-powered-devops]] — AI applied across the DevOps lifecycle
- [[concepts/context-engineering]] — Getting the right context into the model; instructions are part of that
- [[entities/jon-peck]] — Speaker who articulated the pattern
- [[concepts/dot-instructions-files]] — Per-file-type guidance complementing global instructions

## Sources

- AIEF2025 — Unlocking AI Powered DevOps Within Your Organization, Jon Peck, GitHub. https://www.youtube.com/watch?v=C1NivhYS1sI
