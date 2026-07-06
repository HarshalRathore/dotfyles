---
title: Dev Container Vibe Coding
category: concepts
tags:
- dev-container
- github-copilot
- vibe-coding
- vscode
- github-codespaces
sources:
- 'https://www.youtube.com/watch?v=eafp8pds7h4'
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.5
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
summary: Dev Container Vibe Coding
---

# Dev Container Vibe Coding

Harold demonstrated vibe coding a dev container — asking Copilot to "look at my code base and update my dev container" — showing that the AI can generate infrastructure-as-code artifacts, not just application code. ^[extracted]

## The Demo

During the AIEF2025 workshop, Harold pulled down a GitHub repository that had a dev container configuration. He then asked Copilot to analyze the codebase and update the dev container configuration. The AI examined the project's dependencies and generated an appropriate container setup. ^[extracted]

## GitHub Codespaces Integration

The ideal workflow for dev containers is GitHub Codespaces: a repo with a dev container configuration lets users click "open in Codespaces" and have everything work automatically. Harold noted that the 5% of cases where plugins don't work in Codespaces is the remaining friction point — "when something doesn't work, you just go back to the other tool." ^[extracted]

## Enterprise Relevance

Dev containers represent another artifact that AI can generate and maintain. In enterprise contexts, standardized dev containers ensure consistent development environments across teams. AI-generated dev containers reduce the setup burden for new team members. ^[inferred]

## Related

- [[concepts/yolo-structured-spectrum-vibe-coding]] — Structured stage where dev containers matter
- [[entities/github-copilot]] — GitHub Copilot tool capabilities
- [[references/aief2025-vibe-coding-at-scale-harold.js]] — Harold's AIEF2025 workshop
- [[concepts/copilot-new-command]] — `copilot new` command for project scaffolding
