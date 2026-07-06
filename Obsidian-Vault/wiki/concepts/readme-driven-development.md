---
title: README-Driven Development
category: concepts
tags:
- readme
- agent-mode
- spec-driven
- github-copilot
- ai-coding
sources:
- 'https://www.youtube.com/watch?v=rkvilz06y08'
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
summary: README-Driven Development
---

# README-Driven Development

README-Driven Development is an approach where a complete project specification is written as a README file — including project structure, environment variables, database schema, API endpoints, and optional workflow diagrams — and then handed to an AI coding agent (such as [[entities/github-copilot|GitHub Copilot]] Agent Mode) for implementation. ^[extracted]

## How It Works

The developer writes a comprehensive README describing the desired application, then switches to Agent Mode and instructs the agent to "implement this." The agent reads the README, creates data models, generates application code, builds the frontend, and iterates through the implementation — pausing for user permission when terminal access or external connections are needed. ^[extracted]

## Key Characteristics

- **Complete spec in text** — The README contains project structure, env vars, database schema, API endpoints, and configuration details that would normally go into multiple files.
- **Vision-capable diagrams** — Modern LLMs can read workflow graphs as images; for models without vision, [[concepts/mermaid|Mermaid]] or other text-based diagramming serves the same purpose. ^[extracted]
- **Iterative refinement** — The first prompt rarely produces the desired result. Developers iterate by refining the README, using [[concepts/copilot-instructions|Copilot Instructions]], and adding prompt files. ^[extracted]
- **Agent as implementer** — The agent handles the full implementation lifecycle: file creation, code generation, testing scaffolding, and iteration.

## Relationship to Other Patterns

README-Driven Development complements [[concepts/agent-vs-workflow|Agent vs. Workflow]] patterns by providing a structured input format that agents can consume reliably. It sits between vibe coding (loose, conversational) and formal spec-driven development (rigorous, multi-file specifications). ^[inferred]

## Limitations

- Requires a skilled developer to write a complete, unambiguous README spec.
- The agent's output quality depends on the spec's clarity and completeness.
- Iteration is expected — "your first prompt will not be right." ^[extracted]

## Related

- [[entities/github-copilot]] — GitHub Copilot Agent Mode
- [[concepts/copilot-instructions]] — Copilot Instructions for team standards
- [[concepts/mermaid]] — Mermaid diagramming for agent-readable workflow graphs
- [[concepts/agent-vs-workflow]] — Agent vs. workflow patterns
