---
title: "User State and Codebase State"
category: concepts
tags: [context, user-state, codebase-state, ai-coding, windsurf, context-formula]
aliases:
  - Context Formula
  - Prompt Plus State
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
  - target: "[[concepts/heuristics-vs-hard-evidence-context]]"
    type: relates_to
---

# User State and Codebase State

**User State and Codebase State** is the formula for determining relevant output from an AI coding agent:

> **relevant output = prompt + codebase state + user state** ^[extracted]

This formula, articulated by Sam Fertig of [[entities/windsurf|Windsurf]], captures why AI coding tools feel "magical" when they produce output that aligns with the user's intent — it's not model magic, it's context engineering. ^[inferred]

## User State (Heuristics)

User state captures the developer's current behavioral context:

- Code above and below the cursor
- Open files and recently opened/closed files (in order)
- Clipboard content
- Terminal activity
- General IDE behavior patterns

User state is inference-rich — it provides priors about what the developer is trying to do, but requires interpretation. ^[extracted]

## Codebase State (Hard Evidence)

Codebase state captures the project's structural context:

- Code (extensive code)
- Documentation
- User-provided rules
- Agent-generated memories
- Everything in the repository

Codebase state is verifiable and explicit but may be less directly relevant to the immediate task. ^[extracted]

## The Prompt

The user's prompt is the third component — the explicit request. Combined with user state (implicit intent) and codebase state (project context), it determines the relevant output. ^[extracted]

## Why This Matters

This formula explains why two developers using the same AI tool with the same prompt get different results: their user states differ (different cursor positions, open files, clipboard content, terminal activity), and the tool's ability to capture and weight these signals determines output quality. ^[inferred]

## Related Pages

- [[concepts/context-philosophy-what-vs-how-much]] — The two-pillar framework
- [[concepts/heuristics-vs-hard-evidence-context]] — The two-bucket categorization
- [[concepts/context-over-models]] — Why context quality drives output quality
