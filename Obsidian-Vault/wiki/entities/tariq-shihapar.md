---
title: Tariq Shihapar
category: entities
tags:
- person
- anthropic
- ai-engineer
sources:
- 'https://www.youtube.com/watch?v=4sX_He5c4sI'
summary: Member of Technical Staff at Anthropic, works on Claude Code. Presented the Fable model field guide at WF2026.
provenance:
  extracted: 0.9
  inferred: 0.1
  ambiguous: 0.0
base_confidence: 0.59
lifecycle: draft
lifecycle_changed: 2026-07-06
tier: supporting
created: 2026-07-06T12:00:00Z
updated: 2026-07-06T12:00:00Z
---

# Tariq Shihapar

Tariq Shihapar is a Member of Technical Staff at [[entities/anthropic|Anthropic]], working on [[entities/claude-code|Claude Code]]. He previously ran a YC startup of about 30 people.

## WF2026 — Fable Model Field Guide

At WF2026, Shihapar presented "Unhobbling Claude: A Field Guide to the Mythos Class of Models," covering four parts:

1. **Unhobbling Claude** — Understanding Claude's spiky capability growth and "capability overhang" (latent abilities unlocked by tools like code execution)
2. **Finding Your Unknowns** — Using blind spot paths, brainstorms, prototypes, interviews, and reference code to surface unknown unknowns when working with Fable
3. **Dealing with the Grief** — The emotional transition from manual coding to agentic coding, including the sense of loss for hands-on programming
4. **Being Unreasonable** — Rejecting implicit trade-offs (good/fast/cheap — pick three) and pushing for more ambitious work

He also discussed Claude Code's evolution: removing 80% of the system prompt, the shift from large constrained prompts to smaller context-rich prompts, the ask-user-question tool's progression across model versions, and the launch of the Fable model (rolled out later on the day of the talk).

## Key Ideas

- **Capability overhang** — Models have latent abilities that aren't visible in raw chat but emerge when given tools like code execution. ^[extracted]
- **Models are grown, not designed** — Anthropic's philosophy that model capabilities emerge organically through data, feedback, and compute rather than top-down specification. ^[extracted]
- **System prompt evolution** — Claude 3.5 Sonnet needed large prompts with many examples; newer models need smaller prompts with context rather than constraints. ^[extracted]
- **The map is not the territory** — The plan/spec in your head is the map; the actual codebase is the territory. Unknowns arise when the territory diverges from the map. ^[extracted]

## Related

- [[entities/anthropic]] — Employer
- [[entities/claude-code]] — Product area
- [[concepts/capability-overhang]] — Core concept from this talk
- [[concepts/mythos-models]] — Fable is the first Mythos-class model
