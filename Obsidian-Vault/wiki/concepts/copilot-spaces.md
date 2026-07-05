---
title: "Copilot Spaces"
category: concepts
tags:
  - copilot
  - spaces
  - qna
  - github
  - microsoft
  - aief2025
sources:
  - "[[sources/watchv=rkvilz06y08]]"
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/github-copilot]]"
    type: implements
  - target: "[[concepts/agent-memory-knowledge]]"
    type: related_to
---

# Copilot Spaces

Copilot Spaces are grounded Q&A spaces that answer project-specific questions based on actual files and instructions in a repository. Unlike general chat, Spaces are scoped to a project's context and "never get tired of answering" — they provide consistent, repeatable answers to recurring questions about the codebase. ^[extracted]

## How It Works

A Copilot Space is created for a repository or set of repositories. When a developer asks a question, Copilot grounds its answer in the actual files, documentation, and [[concepts/copilot-instructions|Copilot Instructions]] of the project rather than relying on general knowledge. ^[extracted]

## Key Characteristics

- **Grounded in code** — Answers are based on actual repository files, not general training data. ^[extracted]
- **Persistent** — Spaces maintain context across sessions for a project. ^[extracted]
- **No fatigue** — Unlike human documentation, Spaces provide consistent answers regardless of how often the same question is asked. ^[extracted]

## Relationship to Other Patterns

Copilot Spaces complement [[concepts/knowledge-bases-ai|Knowledge Bases]]: Spaces are interactive Q&A interfaces, while Knowledge Bases are static collections of examples that get injected into Copilot's context during coding. ^[inferred]

## Related

- [[entities/github-copilot]] — GitHub Copilot features
- [[concepts/knowledge-bases-ai]] — Knowledge Bases for AI
- [[concepts/agent-memory-knowledge]] — Agent memory and knowledge

## Sources

- AIEF2025 - Real world MCPs in GitHub Copilot Agent Mode — Jon Peck, Microsoft - https://www.youtube.com/watch?v=RkVILz06y08
