---
title: Spec-Based Feature Building — Tweet by @trq212
category: references
tags: [twitter #claude-code #agent-design #spec-based #coding-agents #anthropic]
aliases: [Spec-Based Building, Claude Code Spec Workflow]
relationships:
  - target: "[[entities/thariq-al-samarrai]]"
    type: related_to
  - target: "[[concepts/claude-code-session-management]]"
    type: related_to
  - target: "[[concepts/claude-code-dynamic-workflows]]"
    type: related_to
sources:
  - https://x.com/trq212/status/2035579288724947380
summary: Thariq Al-Samarrai's tweet describing his preferred Claude Code workflow: start with a minimal spec, interview the user via AskUserQuestionTool, then execute the spec in a new session.
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-13
tier: supporting
created: 2026-07-13T00:00:00Z
updated: 2026-07-13T00:00:00Z
---

# Spec-Based Feature Building — Tweet by @trq212

**Author:** Thariq Al-Samarrai (@trq212) — Anthropic engineer ^[extracted]
**Date:** March 22, 2026
**URL:** https://x.com/trq212/status/2035579288724947380
**Engagement:** 6 replies, 9 reposts, 106 likes, 157 bookmarks, 68.9K views ^[extracted]

## Tweet Content

> been meaning to write more longform on specs, but in the meantime this post is still good ^[extracted]

The tweet links to a quoted tweet (the actual linked post at eY2RKNgPyT was not rendered as a clickable link in the DOM) and quotes Thariq's own earlier tweet about spec-based feature building. ^[extracted]

## The Quoted Tweet: Spec-Based Claude Code Workflow

**Date:** December 28, 2025

> my favorite way to use Claude Code to build large features is spec based
>
> start with a minimal spec or prompt and ask Claude to interview you using the AskUserQuestionTool
>
> then make a new session to execute the spec ^[extracted]

**Engagement:** 6 replies, 9 reposts, 106 likes, 68K views ^[extracted]

This describes a three-phase workflow:

1. **Spec creation** — Begin with a minimal spec or prompt describing the desired feature.
2. **Interview phase** — Ask Claude to interview the user using the `AskUserQuestionTool` to clarify requirements, fill gaps, and refine the spec. ^[extracted]
3. **Execution phase** — Create a new Claude Code session to execute the refined spec, isolating planning from implementation. ^[extracted]

The three-phase separation (plan → interview → execute) is the key insight: it prevents the agent from conflating specification with implementation, and the `AskUserQuestionTool` enables interactive requirement clarification rather than one-shot prompt engineering. ^[inferred]

## Context: Part of Thariq's Pinned Thread

This tweet is the 9th entry in Thariq Al-Samarrai's comprehensive pinned thread covering all his technical writings about Claude Code and agent development. ^[extracted]

The full pinned thread spans 13 entries (Mar 2026 – Jul 2026) covering:

- Skills as the abstraction for agents
- Prompt caching
- Playgrounds for visual iteration
- File system usage
- Bash for agents
- Claude Agent SDK
- **Spec-based building (this tweet)**
- Session management with 1M context
- HTML effectiveness
- Dynamic workflows
- Fable field guide

This positions spec-based building as a mid-tier theme in Thariq's Claude Code canon — neither the highest-traffic post nor an isolated observation, but one component of a coherent design philosophy. ^[inferred]

## Related to Entity Page

Thariq Al-Samarrai's [[entities/thariq-al-samarrai|entity page]] already lists spec-based development as one of his key technical themes alongside HTML for planning, dynamic workflows, and session management. This tweet provides the operational detail (AskUserQuestionTool, new-session isolation) that the entity page references. ^[extracted]

## Open Questions

- Has Thariq since published the "longform on specs" he alludes to in the main tweet? ^[ambiguous]
- What specific fields does `AskUserQuestionTool` support for requirement interviews? ^[ambiguous]

## Sources

- https://x.com/trq212/status/2035579288724947380 — Main tweet
- https://x.com/trq212/status/2035372716820218141 — Pinned thread introduction
- https://x.com/trq212/status/2035372729726087456 — Tweet #8 (Claude Agent SDK) — immediately preceding this entry
