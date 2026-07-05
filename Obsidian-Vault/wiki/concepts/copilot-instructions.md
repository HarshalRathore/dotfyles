---
title: "Copilot Instructions"
tags:
  - copilot-instructions
  - team-standards
  - github
  - copilot
  - aief2025
  - dot-instructions
summary: ".github/copilot-instructions.md — a shared team artifact that codifies coding standards, build instructions, and repository conventions so AI tools follow them automatically."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/dot-instructions-files|Dot Instructions Files]]"
    type: relates-to
  - target: "[[entities/github-copilot|GitHub Copilot]]"
    type: feature-of
  - target: "[[concepts/code-quality-as-context|Code Quality as Context]]"
    type: implements
---

# Copilot Instructions

**Copilot Instructions** are codified team standards stored in `.github/copilot-instructions.md` that [[entities/github-copilot|GitHub Copilot]] reads for every coding request, ensuring AI follows team conventions automatically. ^[extracted]

## How It Works

The file is committed to the repository as a shared team artifact. It covers: ^[extracted]

- App intro and build approach
- Code standards
- Pre-commit requirements
- Global language guidance
- Specific build instructions
- Repository structure

Both [[entities/christopher-harrison|Christopher Harrison]] and [[entities/jon-peck|Jon Peck]] presented this at AIEF2025 as a key practice for enterprise Copilot adoption. ^[extracted]

## Governance

Keeping Copilot Instructions current is a lead developer responsibility. ^[extracted] They are not a one-time setup but an evolving document that should be maintained alongside the codebase.

## Relationship to Other Patterns

Copilot Instructions are the repository-level counterpart to [[concepts/dot-instructions-files|dot instructions files]] (per-file-type patterns). Where dot instructions files handle file-pattern-specific conventions, Copilot Instructions handle global, repository-wide standards. ^[inferred]

Together, they implement [[concepts/code-quality-as-context|code quality as context]] at the organizational level — ensuring the AI has the same team conventions that a new human developer would learn through onboarding. ^[inferred]

## Sources

- AIEF2025 — The Agent Awakens: Collaborative Development with Copilot, Christopher Harrison, GitHub. https://www.youtube.com/watch?v=tHJSZ1-ZqcA
