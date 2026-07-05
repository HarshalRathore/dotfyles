---
title: "Mermaid"
category: concepts
tags:
  - mermaid
  - diagramming
  - text-based
  - agent-readable
  - workflow
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
---

# Mermaid

Mermaid is a text-based diagramming tool that generates flowcharts, sequence diagrams, Gantt charts, and other visualizations from plain text markup. In the context of AI coding agents, Mermaid serves as a bridge for developers who need to include workflow diagrams in specifications but are using LLMs without vision capabilities. ^[extracted]

## Role in Agent Workflows

When writing a README spec for [[entities/github-copilot|GitHub Copilot]] Agent Mode, developers can include workflow diagrams in two ways:

1. **Image diagrams** — If the LLM has vision capabilities, workflow graphs can be included as images and the agent will read them directly. ^[extracted]
2. **Mermaid text diagrams** — For models without vision, Mermaid's text-based syntax provides the same structural information in a format the agent can parse and understand. ^[extracted]

## Why It Matters

Mermaid enables README-Driven Development to work across all LLM capabilities, not just vision-capable models. The text-based format is:

- **Agent-readable** — LLMs can parse Mermaid syntax and understand the structure of diagrams.
- **Version-controllable** — Stored as text in markdown files, tracked in git.
- **Self-documenting** — The diagram markup is readable without rendering.

## Related

- [[concepts/readme-driven-development]] — README as agent spec
- [[entities/github-copilot]] — GitHub Copilot Agent Mode
