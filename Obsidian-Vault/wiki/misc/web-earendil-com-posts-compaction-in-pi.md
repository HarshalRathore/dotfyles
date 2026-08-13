---
title: How Compaction Works in Pi — Earendil Engineering (Official)
category: misc
tags: [compaction, pi, context-management, prompt-caching, coding-agents]
aliases: [earendil compaction post, pi compaction official, compaction in pi]
sources:
  - https://earendil.com/posts/compaction-in-pi/
summary: The official Earendil Engineering post on how compaction works in Pi — context overflow mechanics, the 20k-token retained tail, the standalone summarization-assistant request, plain-text portable summaries, and why compaction breaks prompt caching.
provenance:
  extracted: 0.92
  inferred: 0.05
  ambiguous: 0.03
base_confidence: 0.45
lifecycle: draft
lifecycle_changed: 2026-08-13
tier: supporting
created: 2026-08-13T15:30:00Z
updated: 2026-08-13T15:30:00Z
---

# How Compaction Works in Pi

**Author:** Earendil Engineering <rfc@earendil.com> — the engineering team behind [[entities/pi|Pi]] ^[extracted]
**Published:** 2026-08-13 · **URL:** https://earendil.com/posts/compaction-in-pi/

## The Article

The first-party account of why compaction exists and how Pi implements it. Where [[misc/web-yingchao-dev-blog-compaction|Yingchao Dai's comparison]] documented Pi from the outside, this is the harness team describing its own design. ^[extracted]

### Context overflow

- An LLM request in a coding session = system prompt + loaded files (e.g. [[concepts/agents-md|AGENTS.md]]) + tool definitions + conversation history; every turn extends it. ^[extracted]
- When history exceeds the context limit the next request fails with an error like `Request exceeds the maximum size`. ^[extracted]
- Two responses: (1) start a fresh empty conversation — discards prior decisions, but defensible because [LLM output performance decreases as context grows](https://www.trychroma.com/research/context-rot) (see [[references/chroma-context-rot-report|Chroma's context-rot report]]); (2) compaction — replace part of the history with a compressed representation. ^[extracted]

### Pi's implementation

- **Triggers:** auto-compaction when the context limit nears the window size; manual `/compact`; mid-turn compaction if a context-overflow error arrives mid-request. Auto-compaction is checked **after a turn ends** — until then each request extends the existing prompt and keeps reusing its cached prefix. ^[extracted]
- **Retained tail:** some number of recent messages is kept unchanged; the count varies because Pi uses a **configurable token budget** — current default 20,000 tokens ≈ 5–20 turns. Everything before the cut point is extracted, serialized, and summarized. ^[extracted]

### Pi's compaction prompt

The ideal compaction output is "a handoff briefing from one shift to the next." The compaction request differs from a normal conversation request in three ways: ^[extracted]

1. **Different system prompt** — "you are a context summarization assistant" instead of an expert coding assistant (source: `packages/coding-agent/src/core/compaction/utils.ts`).
2. **Different user message** — requests "a structured summary of this conversation branch for context when returning later," with sections for goal, progress, and key decisions (source: `packages/coding-agent/src/core/compaction/compaction.ts`).
3. **Standalone request** — no existing conversation history is sent, so Pi can use a different LLM model for compaction without unnecessary cost.

The summary is appended to the session as a **compaction entry**, stored as **plain text** — keeping the compacted context readable and [[concepts/session-portability|portable]] (switch models and keep going). ^[extracted]

### Compaction and prompt caching

[[concepts/prompt-caching|Prompt caching]] requires an **exact prefix match**. Compaction inserts the summary into the middle of the prefix, so the retained turns — though token-identical — now follow a different prefix and their cached state cannot be reused; everything after the first changed token must be recomputed. New requests after compaction benefit from caching again. ^[extracted]

### Experiment

Because Pi is extensible, the compaction mechanism itself is replaceable: ask Pi to create an extension with a custom compaction prompt to test a different summarization approach. ^[extracted]

## Concepts

- [[concepts/context-management-for-agents|Context Management for Agents]] — compaction is the harness-owned automated form
- [[concepts/prompt-caching|Prompt Caching]] — compaction is a deliberate cache break (exact-prefix rule)
- [[concepts/session-portability|Session Portability]] — plain-text summaries keep sessions portable
- [[concepts/context-rot|Context Rot]] — why "just keep more context" is not free

## Entities

- [[entities/pi|Pi]] — the harness described
- [[entities/earendil|Earendil]] — the company and engineering blog behind the post

## Open Questions

- The post says the 20k default "comes out to roughly 5 to 20 turns" — the range reflects varying turn sizes. ^[inferred]
- Whether mid-turn overflow compaction risks losing the in-flight request's context — not discussed. ^[ambiguous]

## Related

- [[references/pi-compaction-and-branch-summarization|Pi: Compaction & Branch Summarization (Official Docs)]] — the same design, mechanically detailed (cut-point rules, split turns, hooks)
- [[misc/web-yingchao-dev-blog-compaction|Compaction — Yingchao Dai's cross-harness comparison]]
- [[references/prompt-caching-in-agents|Prompt Caching In Agents — Earendil Engineering]] — the caching essay this post extends
- [[references/openai-server-side-compaction|OpenAI Server-Side Compaction]] — the provider-side alternative
