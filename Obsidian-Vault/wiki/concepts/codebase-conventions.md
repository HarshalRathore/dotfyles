---
title: Codebase Conventions
category: concepts
tags:
- codebase-conventions
- code-review
- stylistic-changes
- team-culture
relationships:
- target: '[[concepts/bug-taxonomy]]'
  type: extends
- target: '[[concepts/tribal-knowledge]]'
  type: related_to
- target: '[[concepts/code-cleanliness]]'
  type: related_to
sources:
- 'https://www.youtube.com/watch?v=tswqekftnaw'
summary: Team-specific coding patterns and stylistic choices that deviate from generic best practices — a category of code review feedback that LLMs can catch but often flag inappropriately because they lac...
provenance:
  extracted: 0.7
  inferred: 0.2
  ambiguous: 0.1
base_confidence: 0.65
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Codebase Conventions

Codebase Conventions are team-specific coding patterns, stylistic choices, and structural decisions that deviate from generic best practices. In the bug taxonomy, they appear as "stylistic changes" — comments like "in this codebase we follow this other pattern" or "you should update this comment." ^[extracted]

The concept was discussed by [[entities/tomas-reimers|Tomas Reimers]] ([[entities/graphite|Graphite]]) at AIEF2025 as part of the top-right quadrant of the bug taxonomy: LLMs can catch stylistic deviations, and humans want to receive this feedback. ^[extracted]

## The Challenge for AI Code Review

Codebase conventions are particularly challenging for AI because:

1. **They're not in the code** — Conventions exist in team culture, not in syntax or structure.
2. **They're context-dependent** — What's "wrong" in one codebase is "right" in another.
3. **They evolve over time** — Conventions change as teams and projects mature.

LLMs trained on generic codebases have no way to know whether a stylistic deviation is intentional or accidental without explicit codebase-specific context. ^[inferred]

## Relationship to Tribal Knowledge

Codebase conventions overlap with [[concepts/tribal-knowledge|Tribal Knowledge]] — much of the reasoning behind conventions lives in developers' heads rather than in documentation. The difference is that conventions are partially observable (you can see the pattern in existing code) while tribal knowledge is not. ^[inferred]

## Implications

AI code review systems need explicit codebase convention definitions to provide useful stylistic feedback. Without this, they either miss convention violations entirely or flag them incorrectly. ^[inferred]

## Related

- [[concepts/bug-taxonomy|Bug Taxonomy]] — Stylistic changes are in the top-right quadrant
- [[concepts/tribal-knowledge|Tribal Knowledge]] — Conventions are partially observable tribal knowledge
- [[concepts/code-cleanliness|Code Cleanliness]] — Distinct from conventions; cleanliness is generic, conventions are specific
