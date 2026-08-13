---
title: Codex
category: entities
tags: [tool, AI-coding, OpenAI, nano-gpt-speed-run, compaction]
aliases: [codex, OpenAI Codex]
relationships:
  - target: '[[concepts/nano-gpt-speed-run]]'
    type: participated_in
  - target: '[[concepts/context-management-for-agents]]'
    type: implements
sources:
  - https://www.youtube.com/watch?v=4sX_He5c4sI
  - https://yingchao.dev/blog/compaction
  - https://developers.openai.com/api/docs/guides/compaction
summary: OpenAI's AI coding agent — Nano GPT Speed Run competitor (GPT 5.5 + X1) and the reference client for OpenAI's server-side compaction (20k user-message budget, /responses/compact and CompactionTrigger, 64k retained tail, encrypted compaction item).
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: 2026-07-06
tier: supporting
created: 2026-07-06T00:00:00Z
updated: 2026-08-13T15:00:00Z
---

# Codex

**Codex** is OpenAI's AI coding agent that participated in the **Nano GPT Speed Run** competition with **GPT 5.5 + X1**. ^[extracted]

## Nano GPT Speed Run

In the Nano GPT Speed Run, Codex competed against Cloud Code (Opus 4.8 + X1) to discover better CUDA kernels. Each run took about 15–20 minutes, and the agents iterated over multiple versions (V1, V2, V3). ^[extracted]

## Compaction Implementation

Per [[misc/web-yingchao-dev-blog-compaction|Yingchao Dai's analysis]] of the codex-rs source: ^[extracted]

- **Client budget:** 20k tokens spent solely on the **user message**, not tools — codex retains no assistant/tool history after compaction, so it needs neither tool-boundary rules nor Pi-style split-turn logic. On overflow it removes the oldest history item and retries until the request fits. The summary becomes a synthetic user message. ^[extracted]
- **Concise summary prompt:** a short "CONTEXT CHECKPOINT COMPACTION" handoff-style prompt (progress, key decisions, constraints, next steps, critical data) — far less template-y than Pi's. ^[extracted]
- **Server-side compaction:** V1 calls a `/responses/compact` endpoint; V2 uses a `CompactionTrigger` inside normal streaming requests — the provider responds with a compaction output, no client-side summary prompt. The compaction output plus a **64k-token budget** of the most recent messages (with no tool calls) becomes the new context window. ^[extracted]
- The compacted window includes an **encrypted compaction item** — opaque, carries forward key prior state and reasoning with fewer tokens (see [[references/openai-server-side-compaction|OpenAI's compaction docs]]). ^[extracted]

## Related

- [[concepts/nano-gpt-speed-run|Nano GPT Speed Run]] — the competition Codex participated in
- [[entities/openai|OpenAI]] — the company that makes Codex
- [[references/openai-server-side-compaction|OpenAI Server-Side Compaction]] — the official API docs

## Sources

- AI Engineer World's Fair 2026: https://www.youtube.com/watch?v=4sX_He5c4sI
- https://yingchao.dev/blog/compaction
- https://developers.openai.com/api/docs/guides/compaction
