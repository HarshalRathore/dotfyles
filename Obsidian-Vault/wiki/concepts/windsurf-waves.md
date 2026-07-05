---
title: "Windsurf Waves"
category: concepts
tags:
  - windsurf
  - product-evolution
  - waves
  - agentic
  - mcp
  - aief2025
summary: "Windsurf's framework for organizing product evolution into sequential 'waves' of innovation — from autocomplete to parallel agents, with 10 waves shipped including MCP, auto-generated memories, deploys, and browser previews."
sources:
  - "[[sources/watchv=jvunpl5qo8q]]"
provenance:
  extracted: 0.95
  inferred: 0.03
  ambiguous: 0.02
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Windsurf Waves

**Windsurf Waves** is the framework [[entities/windsurf|Windsurf]] uses to organize its product evolution into sequential waves of innovation. Introduced by [[entities/kevin-hou|Kevin Hou]] at AIEF2025, the Waves model represents how Windsurf has expanded from basic autocomplete to a full software engineering agent in just six months. ^[extracted]

## The Waves Framework

Windsurf launched in November 2024 (originally under the name Codium, later rebranded to Windsurf). Since then, they have shipped 10 waves of innovation. Hou describes this as catching a "new wave" — the shift from autocomplete to agentic coding. ^[extracted]

### Known Waves

| Wave | Feature |
|------|---------|
| 1 | Terminal commands inside the editor |
| 2 | [[concepts/shared-timeline|Shared timeline]] model |
| 3 | Auto-generated memories |
| 4-5 | Web search, [[concepts/model-context-protocol|MCP]] support |
| 6-7 | Deploys |
| 8-9 | Browser previews |
| 10 | [[concepts/parallel-agents|Parallel agents]] |

The exact ordering of waves 4-9 is not fully specified in the source, but all are confirmed as part of the 10-wave progression. ^[extracted]

## What Waves Represent

Each wave represents a step deeper into the [[concepts/shared-timeline|shared timeline]] model — expanding what the AI can do on the human's timeline:

1. **Terminal commands** — AI acts in the environment
2. **Shared timeline** — AI and human share one workflow
3. **Memories** — AI retains context across sessions
4. **Web search / MCP** — AI reads from external sources → [[concepts/ubiquitous-ai|ubiquitous AI]]
5. **Deploys** — AI acts across the deployment surface
6. **Browser previews** — AI controls the visual surface
7. **Parallel agents** — AI works in the background → [[concepts/always-on-ai|always-on AI]]

The Waves model is Windsurf's way of communicating product evolution as a series of capability milestones rather than version numbers. ^[inferred]

## Relationship to the Data Flywheel

Waves are themselves a product of the [[concepts/data-flywheel|data flywheel]] — each wave ships based on user feedback, and each wave generates more usage data that informs the next. The 10-wave cadence demonstrates the flywheel in action: ship → learn → build at the margin → repeat. ^[inferred]

## Related

- [[concepts/shared-timeline|Shared Timeline]] — The model all waves expand
- [[concepts/parallel-agents|Parallel Agents]] — Wave 10
- [[concepts/ubiquitous-ai|Ubiquitous AI]] — Enabled by waves 4-5
- [[concepts/always-on-ai|Always-On AI]] — Enabled by wave 10
- [[concepts/data-flywheel|Data Flywheel]] — The mechanism driving wave cadence
- [[references/aief2025-windsurf-everywhere-kevin-hou]] — Full talk
