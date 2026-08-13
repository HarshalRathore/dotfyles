---
title: Compaction — How Pi, opencode, and codex Rebuild Context (Yingchao Dai)
category: misc
tags: [compaction, context-management, agent-harness, coding-agents, prompt-caching]
aliases: [compaction yingchao, baggiiiie compaction, harness compaction comparison]
sources:
  - https://yingchao.dev/blog/compaction
summary: Yingchao Dai's technical comparison of context-window compaction across three harnesses — Pi's structured summaries and split-turn handling, opencode's 8k-token checkpoint serialization, codex's server-side encrypted compaction — plus the handoff-vs-compaction philosophy shift.
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.45
lifecycle: draft
lifecycle_changed: 2026-08-13
tier: supporting
created: 2026-08-13T15:00:00Z
updated: 2026-08-13T15:00:00Z
---

# Compaction — How Pi, opencode, and codex Rebuild Context

**Author:** [[entities/yingchao-dai|Yingchao Dai]] (@baggiiiie) — software engineer, personal blog at yingchao.dev ("stuff about machines") ^[extracted]
**Published:** 2026-08-07 · **URL:** https://yingchao.dev/blog/compaction

## The Article

A hands-on comparison of how three coding-agent harnesses implement **compaction** — replacing the LLM-visible context window with a summary plus a retained recent tail. Mechanistically, compaction and handoff are the same: reinitialize a new context window with a summary of the old one, relying on history construction and prompt engineering at the harness level. ^[extracted] The subtlety is in name and usage: *compaction* encourages hands-off trust that the harness manages the window (mostly triggered by context overflow), letting context "flow into a dumb zone"; *handoff* encourages manual context management — the user judges when a prompt diverges from the main thread. The author reads this as an industry shift from manual context management toward leaning into model capabilities. ^[extracted]

### Pi (earendil-works)

- Trigger: provider-reported token usage; walks backwards until the `recent-token` target, then picks the nearest **valid cutoff** — never a standalone tool result; tool calls always pair with results, results capped at 2000 chars. Retains a 20k-token tail by default. ^[extracted]
- Summary format is a rigid structured template (Goal / Constraints & Preferences / Progress / Key Decisions / Next Steps / Critical Context) with a dedicated system prompt and an **update prompt** that merges new messages into the previous summary via `<previous-summary>` tags. ^[extracted]
- **Split-turn summarization**: when one giant agent turn exceeds the tail budget, Pi keeps the recent portion verbatim and writes a *prefix summary* of the turn's earlier part (original user request + early progress). ^[extracted]
- Summary budget: 16384 tokens (2^14), 80% allocated to the history summary — the author finds no stated rationale (links issue #92). ^[extracted]

### opencode (anomalyco)

- Keeps the latest **8k tokens** as recent context, asks a *tool-free* LLM to summarize the older portion, saves a conversation checkpoint (summary + recent context), and sends it as **one user message** wrapped in `<conversation-checkpoint>` tags in the next request. ^[extracted]
- Difference from Pi: opencode serializes *all* compacted history (old and recent) into plain text — no tool-call structure. Benefits: saves tokens, avoids accidental tool calls during summarization. Downside: lossy for attachments/images; tool results truncated. ^[extracted]

### codex (OpenAI)

- 20k-token budget spent **solely on the user message, not tools**; no assistant/tool history retained after compaction, so no tool-boundary or split-turn logic needed. On overflow it removes the oldest history item and retries until it fits. The summary becomes a synthetic user message. ^[extracted]
- Summary prompt is concise and less template-y than Pi's. ^[extracted]
- **Server-side compaction**: V1 calls a `/responses/compact` endpoint; V2 uses a `CompactionTrigger` inside normal streaming requests — the provider responds with a compaction output. No client-side summary prompt at all. The compaction output + a 64k-token budget of most recent messages (no tool calls) becomes the new context window. The returned compacted window includes an **encrypted compaction item** — opaque, carries forward key prior state and reasoning using fewer tokens (see [[references/openai-server-side-compaction|OpenAI compaction docs]]). ^[extracted]

### Author's open questions

- Prompt caching is "the single most important metric for a production-stage AI agent" (linking Manus's context-engineering post); editing prompts, switching models, and removing tools for compaction **bust prompt caching** — Pi considers a compaction "a cache reset rather than a cache failure". ^[extracted]
- The split-turn summary also busts caching; the author wonders whether the resulting quality is actually better. ^[inferred]
- Whether amp/cursor use codex's server-side compaction under the hood — unverified. ^[ambiguous]

## Concepts

- [[concepts/context-management-for-agents|Context Management for Agents]] — compaction is the automated, harness-owned form of context management
- [[concepts/prompt-caching|Prompt Caching]] — compaction's cache-busting trade-off; "cache reset rather than cache failure"
- [[concepts/context-engineering|Context Engineering]] — summary prompts, serialization, and prompt design are the load-bearing parts of compaction
- [[concepts/loop-engineering|Loop Engineering]] — long-horizon sessions depend on lossy-but-restorable context replacement
- [[concepts/long-horizon-agency|Long-Horizon Agency]] — compaction is what makes sessions outlive a single context window

## Entities

- [[entities/pi|Pi]] — earendil-works coding agent, structured-summary compaction pioneer
- [[entities/opencode|OpenCode]] — 8k recent-context checkpoint serialization
- [[entities/codex|Codex]] — OpenAI coding agent; client budget + server-side compaction
- [[entities/amp|Amp]] — replaced handoff with auto-compaction in its Neo rebuild
- [[entities/yingchao-dai|Yingchao Dai]] — author

## Open Questions

- Why 16384 tokens (2^14) for Pi's summary budget, with 80% to history? ^[ambiguous]
- Does server-side compaction (codex) beat client-side (pi/opencode/cursor) in quality or cost? ^[ambiguous]
- Are amp and cursor silently using codex's server-side compaction? ^[ambiguous]

## Related

- [[references/pi-compaction-and-branch-summarization|Pi: Compaction & Branch Summarization (official docs)]]
- [[references/openai-server-side-compaction|OpenAI: Server-Side Compaction (official docs)]]
- [[references/manus-context-engineering-lessons|Manus: Context Engineering Lessons]]
- [[references/prompt-caching-in-agents|Earendil: Prompt Caching In Agents]]
- [[references/humanlayer-context-backpressure|HumanLayer: Context-Efficient Backpressure]]
