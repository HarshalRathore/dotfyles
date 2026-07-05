---
title: "Jon Peck"
tags:
  - entity
  - person
  - devrel
  - github
  - microsoft
  - aief2025
aliases: [Jon Peck]
sources:
  - "AIEF2025 - The Agent Awakens: Collaborative Development with Copilot - Christopher Harrison, GitHub - https://www.youtube.com/watch?v=tHJSZ1-ZqcA"
summary: "GitHub Enterprise Advocate, developer relations specialist. Co-presents on GitHub Copilot workflows and coding agent patterns at AI Engineer World's Fair 2025."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.60
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[entities/github-copilot|GitHub Copilot]]"
    type: advocates-for
  - target: "[[entities/christopher-harrison|Christopher Harrison]]"
    type: collaborates-with
---

# Jon Peck

Jon Peck is an Enterprise Advocate at [[entities/github-copilot|GitHub]], formerly at Microsoft. He works on developer relations, focusing on developer experience and [[entities/github-copilot|GitHub Copilot]]. ^[extracted]

## At AIEF2025

Peck co-presented with [[entities/christopher-harrison|Christopher Harrison]] at the AI Engineer World's Fair 2025, delivering a hands-on talk on collaborative development with Copilot. ^[extracted]

His contributions to the talk included: ^[extracted]

- **Coding agent architecture** — Demonstrated the issue-to-PR pipeline and its safety model (firewalled, ephemeral, branch-only, draft PRs, no self-review)
- **Copilot Instructions** — Showed how `.github/copilot-instructions.md` codifies team standards for AI tools
- **MCP integration** — Explained how MCP servers give coding agents access to external data and operations
- **Iteration strategies** — Demonstrated comment-on-PR vs. reassign patterns for iterating with coding agents

Peck emphasizes a diagnostic approach when agents fail: "When the agent gets something wrong, the first question should be 'why?' — nine times out of ten, the answer is context: insufficient information in the issue, instructions file, or MCP setup." ^[extracted]

## Sources

- AIEF2025 — The Agent Awakens: Collaborative Development with Copilot, Christopher Harrison & Jon Peck, GitHub. https://www.youtube.com/watch?v=tHJSZ1-ZqcA
