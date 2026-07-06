---
title: vZero
tags:
- ai
- coding-agent
- developer-tools
- vibe-coding
- vercel
- aief2025
aliases:
- Vercel v0
- Vercel vZero
relationships:
- target: '[[entities/vercel]]'
  type: developed_by
- target: '[[entities/v0]]'
  type: related_to
- target: '[[concepts/vibe-coding-as-whiteboard]]'
  type: implements
sources:
- 'https://www.youtube.com/watch?v=l8ooyedi_ls'
summary: Full-stack vibe coding platform by Vercel. Crossed 100M messages sent at time of AIEF2025 talk. Features GitHub Sync for bidirectional code collaboration.
provenance:
  extracted: 0.9
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.7
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-05
category: entities
---

# vZero

vZero is a full-stack vibe coding platform by [[entities/vercel|Vercel]], described as "the easiest and fastest way to prototype, build on the web, and express new ideas." ^[extracted]

## Key Features

- **GitHub Sync** — Push generated code to GitHub directly from vZero, automatically pull changes from GitHub into chat, switch branches, and open PRs to collaborate with teams ^[extracted]
- **AI SDK integration** — Uses the [[entities/vercel|Vercel AI SDK]] for streaming text calls ^[extracted]
- **Fluid Compute** — Deployed on Vercel with Fluid Compute ^[extracted]

## Scale

At the time of Ido Pesok's AIEF2025 talk, vZero had crossed 100 million messages sent. ^[extracted]

## Distinction from v0.dev

Note: "v0" in Ido Pesok's talk refers to vZero, Vercel's full-stack vibe coding platform. This is distinct from v0.dev (Vercel's AI UI generation tool), which is also referenced in the wiki under [[entities/v0|v0]]. The talk title "Evals Are Not Unit Tests — Ido Pesok, Vercel v0" uses "v0" as shorthand for vZero. ^[inferred]

## Related

- [[entities/vercel|Vercel]] — Parent company
- [[entities/v0|v0]] — Vercel's AI UI generation tool (distinct product)
- [[concepts/vibe-coding-as-whiteboard|Vibe Coding as Whiteboard]] — Paradigm vZero operates in
- [[entities/ido-pesok|Ido Pesok]] — Engineer on the vZero team who presented at AIEF2025
