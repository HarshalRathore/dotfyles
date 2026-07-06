---
title: Dot Instructions Files
tags:
- dot-instructions
- file-patterns
- copilot
- github
- aief2025
- code-standards
summary: Per-file-pattern instruction files (*.jsx, *.svelte, etc.) that automatically apply file-type-specific coding conventions to Copilot Chat and Agent Mode via filename matching.
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.7
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[concepts/copilot-instructions|Copilot Instructions]]'
  type: complements
- target: '[[entities/github-copilot|GitHub Copilot]]'
  type: feature-of
- target: '[[concepts/code-quality-as-context|Code Quality as Context]]'
  type: implements
category: concepts
sources: []
---

# Dot Instructions Files

**Dot instructions files** are per-file-pattern instruction files that automatically apply file-type-specific coding conventions to [[entities/github-copilot|GitHub Copilot]] Chat and Agent Mode via filename pattern matching. ^[extracted]

## How It Works

Each file pattern gets its own instruction file: ^[extracted]

- `*.jsx` / `*.tsx` → React component instructions
- `*.svelte` → Svelte component instructions
- `server/test_*` → server test instructions
- Files can reference prototype files as examples ("use the games file as a template")

These are automatically applied based on filename patterns when the user invokes Chat or Agent Mode.

## Purpose

[[entities/jon-peck|Jon Peck]] emphasizes their importance for consistency: "If I'm creating yet another React component, I probably want all of those to follow a particular pattern." ^[extracted]

Dot instructions files ensure that file-type-specific conventions are applied consistently without the user having to repeat them in every prompt.

## Availability

As presented at AIEF2025, dot instructions files were available in Copilot Chat but not yet in Coding Agent. ^[extracted]

## Relationship to Other Patterns

Dot instructions files complement [[concepts/copilot-instructions|Copilot Instructions]] (global, repository-wide standards) by adding a file-pattern layer. ^[inferred] Together they form a two-tier instruction system: global standards at the repo level, and file-type conventions via dot instructions files. ^[inferred]

## Sources

- AIEF2025 — The Agent Awakens: Collaborative Development with Copilot, Christopher Harrison, GitHub. https://www.youtube.com/watch?v=tHJSZ1-ZqcA
