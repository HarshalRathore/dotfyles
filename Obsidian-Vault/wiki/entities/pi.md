---
title: Pi
category: entities
tags: [tool, coding-agents, harness, open-source, compaction]
aliases: [Pi agent, earendil pi, pi coding agent]
relationships:
  - target: '[[concepts/context-management-for-agents]]'
    type: implements
  - target: '[[concepts/prompt-caching]]'
    type: related_to
sources:
  - https://github.com/earendil-works/pi
  - https://github.com/earendil-works/pi/blob/main/packages/coding-agent/docs/compaction.md
  - https://earendil.com/posts/compaction-in-pi/
summary: Pi — the coding agent from earendil-works. Tree-structured sessions with /tree and /fork, structured-summary compaction (20k tail, split-turn prefix summaries, 16k budget, standalone "context summarization assistant" request), branch summarization, cumulative file tracking, cache-aware design (compaction = cache reset), plain-text summaries for session portability.
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-08-13
tier: supporting
created: 2026-08-13T15:00:00Z
updated: 2026-08-13T15:30:00Z
---

# Pi

**Pi** is the coding agent built by **[[entities/earendil|earendil-works]]** (open-source, monorepo `earendil-works/pi`; npm packages under `@earendil-works/pi-coding-agent`). Sessions are **trees, not lists** — `/tree` navigates branches, `/fork` creates new sessions carrying context over. ^[extracted]

## Compaction & Summarization

- Auto-compaction triggers at `contextTokens > contextWindow − reserveTokens` (reserve 16384 default); keeps a 20k-token recent tail; cut points only at user/assistant/BashExecution/custom messages — never standalone tool results. ^[extracted]
- Structured summary format (Goal / Constraints & Preferences / Progress / Key Decisions / Next Steps / Critical Context) with `<read-files>`/`<modified-files>` blocks and cumulative file tracking across compactions; tool results truncated to 2000 chars during serialization. ^[extracted]
- **Split-turn handling** for giant single turns: prefix summary + verbatim retained suffix. ^[extracted]
- **Branch summarization** on `/tree` navigation preserves the abandoned branch's context in the new branch. ^[extracted]
- Extension hooks: `session_before_compact`, `session_before_tree` — cancel or supply custom summaries; compaction requests use fresh routing session IDs and disable prompt-cache writes. ^[extracted]
- **Official post (2026-08-13)** adds the design rationale: auto-compaction is checked after a turn ends (maximizing cached-prefix reuse between checks); mid-turn compaction happens only on overflow errors; the compaction request is **standalone** — dedicated "context summarization assistant" system prompt, user prompt requesting "a structured summary of this conversation branch for context when returning later" (sections: goal, progress, key decisions) — and because it reuses no history, it can run on a different model without extra cost. ^[extracted]
- **Portability:** summaries are stored as **plain text** in the session, keeping compacted context readable and portable across model switches (see [[concepts/session-portability|Session Portability]]). ^[extracted]

## Cache-Aware Design

Pi keeps a stable, append-oriented transcript and does **not** prune aggressively — rewriting mid-context is usually more expensive than the tokens saved (break-even formula in [[references/prompt-caching-in-agents|Earendil's prompt caching essay]]). Compaction is counted as a **cache reset rather than a cache failure** in session statistics. Cache observability: footer `R`/`W`/`CH`, `/session` totals, `showCacheMissNotices`. Supports additive tool loading (`setActiveTools()` → deferred definitions / tool-search items) where models allow. ^[extracted]

## Related

- [[misc/web-yingchao-dev-blog-compaction|Compaction — Yingchao Dai's analysis of Pi]]
- [[references/pi-compaction-and-branch-summarization|Pi: Compaction & Branch Summarization (official docs)]]
- [[references/prompt-caching-in-agents|Prompt Caching In Agents — Earendil Engineering]]
