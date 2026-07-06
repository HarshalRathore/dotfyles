---
title: Knowledge Bases for AI
category: concepts
tags:
- knowledge-bases
- copilot
- enterprise
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
- target: '[[concepts/copilot-instructions]]'
  type: related_to
summary: Knowledge Bases for AI
---

# Knowledge Bases for AI

Knowledge Bases are named collections of repositories that provide [[entities/github-copilot|GitHub Copilot]] with best-practice examples, internal API specifications, and reference implementations. They are selectable by operators during agent work, allowing the AI to ground its suggestions in the organization's actual codebase. ^[extracted]

## How It Works

During agent mode or chat interactions, developers can select a knowledge base (e.g., "add the accessibility knowledge base") to inject relevant examples and patterns into Copilot's context. This ensures the AI follows organizational conventions rather than relying solely on its general training. ^[extracted]

## Key Characteristics

- **Named collections** — Each knowledge base has a name and is associated with specific repositories. ^[extracted]
- **Selective activation** — Operators choose which knowledge bases to activate for a given task. ^[extracted]
- **Enterprise content** — Includes internal API specs, best-practice examples, and reference implementations unique to the organization. ^[extracted]

## Relationship to Other Features

Knowledge Bases complement [[concepts/copilot-instructions|Copilot Instructions]]: instructions define *rules* (naming conventions, linting), while knowledge bases provide *examples* (reference implementations, API patterns). Together they ground Copilot in organizational context. ^[inferred]

## Related

- [[entities/github-copilot]] — GitHub Copilot Enterprise features
- [[concepts/copilot-instructions]] — Copilot Instructions for team standards
- [[concepts/model-context-protocol]] — MCP as complementary context source

## Sources

- AIEF2025 - Real world MCPs in GitHub Copilot Agent Mode — Jon Peck, Microsoft - https://www.youtube.com/watch?v=RkVILz06y08
