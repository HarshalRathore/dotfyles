---
title: "Good-Enough Judgment"
category: concepts
tags:
  - ai-coding
  - vibe-engineering
  - pragmatism
  - software-engineering
  - abstraction
sources:
  - "[[sources/watchv=jv-wy5pxxlo]]"
relationships:
  - target: "[[concepts/vibe-engineering]]"
    type: implements
  - target: "[[concepts/pita-dev]]"
    type: contradicts
  - target: "[[concepts/simple-is-better-ai]]"
    type: related_to
  - target: "[[concepts/skill-hell]]"
    type: related_to
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.78
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Good-Enough Judgment

The engineering skill of knowing when code is "good enough" and moving on, rather than optimizing, refactoring, or perfecting it. ^[extracted] A core competency for effective vibe engineering that distinguishes productive developers from PITA devs.

## The Skill

Kitze identifies good-enough judgment as a genuine engineering skill — valuable with or without AI. ^[extracted] The practice involves:

1. **Vibe code something** — Generate code via AI or manual writing
2. **Look at the code** — Evaluate it against requirements
3. **Test the functionality briefly** — Verify it works
4. **Decide: is this good enough?** — If yes, move on
5. **Not everything needs optimization** — Reserve perfectionism for the few things that actually matter

This is a deliberate skill that developers who cultivated it before LLMs will thrive with. ^[extracted]

## Why It Matters for AI Coding

AI coding amplifies both the benefits and risks of good-enough judgment:

- **With good judgment:** You generate code quickly, verify it works, and move on. Productivity multiplies. ^[inferred]
- **Without good judgment:** You accept bad code, write more bad code on top, and eventually hit a roadblock where the agent cannot recover. ^[extracted]

The compounding effect means early bad decisions cascade — the agent's subsequent output degrades as the codebase quality degrades. ^[inferred]

## Contrast with PITA Devs

PITA devs cannot exercise good-enough judgment. They chase micro-optimizations (lodash → native → map → for loop → binary search) for two users who were fine with the previous code. ^[extracted] This is the opposite of good-enough judgment — treating every line as requiring maximum optimization regardless of actual impact.

## Related

- [[concepts/vibe-engineering|Vibe Engineering]] — The paradigm that requires good-enough judgment
- [[concepts/pita-dev|PITA Dev]] — The opposite mindset
- [[concepts/simple-is-better-ai|Simple Is Better for AI]] — Related pragmatism principle
- [[concepts/skill-hell|Skill Hell]] — Good-enough judgment is a skill that escapes skill hell
- [[concepts/burden-of-generated-code|Burden of Generated Code]] — Good-enough judgment prevents unnecessary burden
