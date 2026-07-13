---
title: Claude Code
category: entities
tags: [tool, AI-coding, Anthropic, system-prompt, U-shaped-curve]
aliases: [claude code, Claude Code]
relationships:
  - target: '[[concepts/system-prompt-curve]]'
    type: demonstrated
sources:
  - https://www.youtube.com/watch?v=4sX_He5c4sI
  - https://x.com/trq212/status/2035372725921882119
summary: Anthropic's AI coding agent that demonstrated the U-shaped system prompt curve and proved agents should use file systems as their primary state representation.
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: 2026-07-13
tier: supporting
created: 2026-07-06T00:00:00Z
updated: 2026-07-13T00:00:00Z
---

# Claude Code

**Claude Code** is Anthropic's AI coding agent that demonstrated the **U-shaped system prompt curve** by removing **80% of its system prompt** — a deliberate reduction tied to newer model capabilities. ^[extracted]

## System Prompt Reduction

Claude Code's 80% system prompt reduction is not an accident; it's a response to model capability improvements. The newest class of models want fewer, simpler system prompts because they understand context well enough that verbose prompts are unnecessary. ^[extracted]

## Relation to File Systems

Claude Code served as the proof-of-concept for the thesis that AI agents should use the [[concepts/agents-should-use-a-filesystem|file system as their state representation]] — demonstrating that agents don't need to remember everything in context, just know how to find it. ^[extracted]

## Related

- [[concepts/system-prompt-curve|System Prompt Curve]] — the curve Claude Code demonstrated
- [[entities/anthropic|Anthropic]] — the company that makes Claude Code

## Sources

- AI Engineer World's Fair 2026: https://www.youtube.com/watch?v=4sX_He5c4sI
- Thariq Al-Samarrai's pinned tweet thread — https://x.com/trq212/status/2035372725921882119
