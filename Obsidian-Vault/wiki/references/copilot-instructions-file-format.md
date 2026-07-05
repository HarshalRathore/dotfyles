---
title: "Copilot Instructions File Format"
category: references
tags:
  - github-copilot
  - vscode
  - instructions
  - enterprise-ai
  - vibe-coding
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

# Copilot Instructions File Format

Harold's AIEF2025 workshop demonstrates the practical use of `.github/copilot-instructions.md` as a mechanism for [[concepts/yolo-structured-spectrum-vibe-coding|structured vibe coding]]. The file is a markdown document that provides grounding knowledge about a codebase to GitHub Copilot across all interaction modes. ^[extracted]

## File Location

`.github/copilot-instructions.md` — committed to the repository root under the `.github` directory. ^[extracted]

## Scope

The instructions are included in:
- All agent requests
- All chat requests
- All inline chat requests

Copilot automatically picks them up when working within that repository. ^[extracted]

## Content Strategy

Harold's preferred approach is a concise one-liner identifying the tech stack: the frameworks and versions used. This is sufficient to keep the AI "on rails" with what the project uses. ^[extracted]

Some demos show more verbose instructions that repeat linting rules the AI should already know — Harold notes these can feel repetitive. The key insight is that instructions should encode what the AI wouldn't otherwise know: internal conventions, not public best practices. ^[extracted]

## What to Include

Based on the workshop, effective Copilot Instructions encode:
- Tech stack (frameworks, versions)
- Design system conventions
- Internal workflow patterns
- Custom tool usage
- Domain-specific knowledge

## Role in Structured Vibe Coding

Copilot Instructions are a core mechanism for structured vibe coding. By baking design system conventions, tech stack constraints, and workflow patterns into the instructions, teams ensure that AI-generated code conforms to internal standards without requiring manual review of every change. ^[inferred]

## Related

- [[concepts/copilot-instructions]] — Concept page on Copilot Instructions
- [[concepts/yolo-structured-spectrum-vibe-coding]] — Structured vibe coding context
- [[entities/github-copilot]] — GitHub Copilot tool capabilities
- [[references/aief2025-vibe-coding-at-scale-harold.js]] — Harold's AIEF2025 workshop
