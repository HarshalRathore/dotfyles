---
title: "Heuristics vs Hard Evidence in Context"
category: concepts
tags: [context, user-state, codebase-state, ai-coding, windsurf, heuristics]
aliases:
  - Heuristics and Hard Evidence Context
  - Two Buckets of Context
sources:
  - "AIEF2025 - The Eyes Are The (Context) Window to The Soul: How Windsurf Gets to Know You — Sam Fertig, Windsurf - https://www.youtube.com/watch?v=jUv5WSPo9fk"
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/context-philosophy-what-vs-how-much]]"
    type: component-of
  - target: "[[concepts/user-state-and-codebase-state]]"
    type: relates_to
---

# Heuristics vs Hard Evidence in Context

**Heuristics vs Hard Evidence** is the two-bucket model for categorizing what context an AI coding agent should consider. Introduced by Sam Fertig of [[entities/windsurf|Windsurf]], it maps directly to the "what context" pillar of Windsurf's context philosophy. ^[extracted]

## Bucket 1: Heuristics (User State)

Heuristics capture the user's **behavioral signals** — what they are doing right now and what they appear to be trying to accomplish:

- Code above and below the cursor
- Open files
- Files opened and then closed, in what order
- Clipboard content (read and copied)
- Terminal activity
- General user behavior patterns in the IDE

These are inference-rich signals. They don't tell you exactly what the user wants, but they provide strong priors about intent. ^[extracted]

## Bucket 2: Hard Evidence (Codebase State)

Hard evidence captures the **structural signals** of the project — things that are objectively present and verifiable:

- Code (lots and lots of code)
- Documentation
- User-provided rules
- Agent-generated memories about the user
- Everything else in the repository

These signals are less ambiguous than heuristics but may be less directly relevant to the immediate task. ^[extracted]

## The Analogy

Fertig framed this using a social analogy: getting to know someone through superficial observations (heuristics) versus getting trusted corroboration from others (hard evidence). Both are needed for a complete picture. ^[inferred]

## Related Pages

- [[concepts/context-philosophy-what-vs-how-much]] — The two-pillar framework this belongs to
- [[concepts/user-state-and-codebase-state]] — The parallel formulation
- [[concepts/context-over-models]] — Why this distinction matters for AI tool quality
