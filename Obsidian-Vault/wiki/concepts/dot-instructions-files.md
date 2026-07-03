---
title: ".instructions Files"
tags:
  - concept
  - ai
  - best-practice
  - team-workflow
  - github
  - copilot
aliases: [dot-instructions files, per-file-type instructions, pattern-based agent instructions]
sources:
  - "AIEF2025 - Collaborating with Agents in your Software Dev Workflow — Jon Peck & Christopher Harrison, Microsoft - https://www.youtube.com/watch?v=G1hhmz6mXT0"
summary: "Per-file-type instruction files for AI coding tools, automatically applied based on filename pattern matching — ensuring consistent code generation across repeated task types."
provenance:
  extracted: 0.82
  inferred: 0.15
  ambiguous: 0.03
base_confidence: 0.60
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# .instructions Files

`.instructions` files are a pattern-based instruction mechanism for AI coding tools, enabling developers to define file-type-specific guidance that is automatically applied when the AI works on matching files. The feature was highlighted by [[entities/jon-peck|Jon Peck]] at AIEF2025 as a key tool for maintaining consistency in AI-generated code. ^[extracted]

## How It Works

Rather than manually telling the AI how to structure every file, developers create `.instructions` files with filename pattern filters: ^[extracted]

- `*.jsx`, `*.tsx` → React component instructions and patterns
- `*.svelte` → Svelte component guidelines
- `server/test_*` → Server test conventions
- Any glob pattern matching files at a specific path

## Key Capabilities

### Reference Prototype Files

Instructions can point to prototype files as examples: ^[extracted]

> "you see that games file over there? Use that. That's how I want this to be built. Hey, you see that test file? Use that. That's how I want it to be built."

### Automatic Application via Apply-To Patterns

The `apply-to` header in the `.instructions` file defines which files the instructions automatically apply to, eliminating the need for manual context injection. ^[extracted]

### Consistency Across Repeated Tasks

Peck emphasizes the value for repetitive development patterns: ^[extracted]

> "If I'm creating yet another React component... I probably want all of those to follow a particular pattern... Let's not start sending mixed messages."

## Current Limitations

- **Chat-only** — As of the talk, `.instructions` files are available in Copilot Chat (and Agent Mode in IDE), but not yet in the Coding Agent (GitHub.com) workflow. ^[extracted]
- **Manual addition** — Can be manually added to chat even without pattern matching. ^[extracted]

## Relationship to Copilot Instructions

While [[concepts/copilot-instructions|Copilot Instructions]] (`.github/copilot-instructions.md`) provides global, repository-level guidance for all AI interactions, `.instructions` files offer granular, file-type-specific guidance. They are complementary: the global instructions set broad direction and standards; `.instructions` files provide detailed, pattern-specific templates. ^[inferred]

## Practical Usage

Peck describes using `.instructions` files for demo reliability — a probabilistic tool like GitHub Copilot needs consistency, and these files are the top tool for achieving it: ^[extracted]

> "Instructions files have been probably the number one thing that I have leaned on to help ensure that I get some level of consistency."

## Related

- [[concepts/copilot-instructions]] — The repository-level global instructions file
- [[concepts/context-engineering]] — Getting the right tokens into the model
- [[concepts/issue-to-pr-pipeline]] — The autonomous pipeline where instructions guide agent behavior
- [[entities/jon-peck]] — Speaker who demonstrated the feature
- [[entities/github-copilot]] — The AI coding tool using these files

## Sources

- AIEF2025 — Collaborating with Agents in your Software Dev Workflow, Jon Peck & Christopher Harrison, Microsoft. https://www.youtube.com/watch?v=G1hhmz6mXT0
