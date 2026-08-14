---
title: Prompt Caching In Agents — Earendil Engineering
category: references
tags: [prompt-caching, kv-cache, coding-agents, cost-optimization, pi]
aliases: [earendil prompt caching, prompt caching in agents]
relationships:
  - target: '[[concepts/prompt-caching]]'
    type: extends
  - target: '[[entities/pi]]'
    type: related_to
  - target: '[[concepts/context-management-for-agents]]'
    type: related_to
sources:
  - https://earendil.com/posts/prompt-caching/
summary: "Earendil's essay on prompt caching for coding agents — KV-cache mechanics, session affinity vs distributed caches, how tool loadouts and TTLs trash caches, and why Pi doesn't prune aggressively."
provenance:
  extracted: 0.9
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-08-13
tier: supporting
created: 2026-08-13T15:00:00Z
updated: 2026-08-13T15:00:00Z
---

# Prompt Caching In Agents

> **TL;DR:** For coding agents, cache behavior is not an implementation detail — it affects latency, cost, tool design, session design, and product features. Caches are prefix-keyed (a single changed token invalidates everything after it); tool loadouts and dynamic system prompts are the usual culprits; Anthropic's default 5-minute TTL is shorter than normal coding activities; and Pi deliberately keeps an append-only transcript because pruning rewrites are often more expensive than the tokens they save. Pi counts compaction as a *cache reset* in its session statistics, not a cache failure.

## KV-Cache Mechanics

A transformer's prefill computes key/value tensors per token per layer; retained state = the KV cache. Cache reuse requires an identical token prefix — two prompts that mean the same thing but tokenize differently share nothing. ^[extracted]

**Where caches live:**
- **Session affinity** — cache stays on/near the GPU that computed it; the router sends the same session back to the same worker. Fast, little extra infrastructure, but constrains scheduling (overloaded/restarted workers, eviction, balancing decisions can all lose it). ^[extracted]
- **Distributed caches** — KV blocks stored in another memory tier or across workers; better scheduling flexibility and recovery, but moving/indexing/retaining blocks is a systems problem. KV caches can be compressed to a handful of gigabytes even for long conversations. ^[extracted]

**Sessions are trees, caches are prefixes:** [[entities/pi|Pi]] sessions are trees (`/tree`, rewinds, forks) — three branches can share one session ID yet be three token sequences with only partial prefix overlap. Conversely, a fork with a new session ID can carry near-identical context that routing never reuses. The reusable prefix determines what can be cached; session identity merely helps infrastructure find likely content. ^[extracted]

## Explicit vs Automatic Prefix Caching

- **Anthropic-style explicit `cache_control`**: client marks boundaries (system prompt, tool definitions, conversation); pricing is explicit too (cache writes cost; retention duration is a price choice). ^[extracted]
- **Automatic prefix caching**: client sends normally; provider finds the reusable prefix without client breakpoints. A prompt-cache key or session header may help routing but doesn't make different prefixes equal. ^[extracted]

## Why Tool Loadouts Trash Caches

Tool definitions are folded into the system prompt near the front. Adding/removing/reordering a tool or changing a schema moves the first mismatch close to the start — a few tool-schema tokens of savings can cost tens of thousands of conversation tokens of re-prefill. This is the classic plugin/MCP surprise. ^[extracted]

**Additive tool loading** fixes it: a tool becomes available at a specific tool result inside the transcript instead of being inserted into the original list — the old prefix stays intact. Pi supports this for models with native deferred-tool mechanisms: `setActiveTools()` records added names on the tool result; Anthropic models get deferred definitions + `tool_reference`; OpenAI models get tool-search items; other models fall back to sending the complete tool list (works, but wipes the cache). ^[extracted] Removing tools, replacing loadouts, timestamps, shuffled tool order, or extension-driven system-prompt rebuilds still defeat caching — "for many extensions cache efficiency is an afterthought."

## Interruptions and TTLs

Anthropic's default **5-minute cache TTL is shorter than many normal coding activities** — a 7-minute test run, lunch, or diff review outlives the cache, and the next request is billed as full input. (Claude Code raises this to one hour for subscription users, but that's not worth it at API token prices; `PI_CACHE_RETENTION=long` requests longer retention where supported.) ^[extracted]

## The Price of a Miss

With 100k tokens of history, a hit bills almost everything at cache-read price; a miss re-bills the whole history at uncached input price, plus a possible cache-write premium — so a short `continue` after expiry can be the most expensive message in a session. ^[extracted]

**Incentive misalignment:** users and GPU owners want hits (latency, throughput); a gateway/reseller billing uncached input tokens can earn *more* on a miss — so cache performance must be observable. Pi's footer shows cumulative cache reads/writes (`R`/`W`) and latest hit rate (`CH`); `/session` shows total cached/uncached input, hit rate, cost, and re-billed tokens/dollars; `showCacheMissNotices` inserts warnings after significant misses. ^[extracted]

## Why Pi Does Not Prune Aggressively

Pruning changes the prefix at the deletion point — everything after it may be re-processed:

```
one-time rewrite cost   ~= surviving tokens after the edit * (uncached price − cache-read price)
future savings per turn ~= pruned tokens * cache-read price
```

Old tool results also contain the evidence the model used for later decisions. Pi prefers a stable, append-oriented transcript; compaction is available when context pressure justifies a lossy rewrite — and because compaction deliberately creates new context rather than accidentally re-billing an unchanged prompt, **Pi treats it as a cache reset rather than a cache failure** in session statistics. ^[extracted] The goal is not the smallest prompt but the best trade-off among model context, cache reuse, latency, and price. ^[extracted]

**Common causes of worse cache performance:** idling past the TTL; model/provider switches; branch navigation (`/tree`, rewinds, forks); compaction or manual history rewriting; tool/reasoning-level changes; dynamic system prompts (timestamps, random values); extension context transforms; provider routing/eviction. ^[extracted]

## Concepts

- [[concepts/prompt-caching|Prompt Caching]] — the concept page this deepens
- [[concepts/context-management-for-agents|Context Management for Agents]] — pruning vs compaction as context-management strategy
- [[concepts/context-engineering|Context Engineering]] — cache stability is a context-shaping constraint
- [[concepts/long-horizon-agency|Long-Horizon Agency]] — cache economics decide what long sessions can cost

## Entities

- [[entities/pi|Pi]] — the harness whose design choices this essay explains
- [[entities/claude-code|Claude Code]] — 1-hour cache retention for subscription users

## Open Questions

- Which providers support message-anchored additive tool loading beyond Anthropic/OpenAI? ^[ambiguous]
- Can cache health observability become an agent-facing SLO the way Claude Code monitors hit rate? ^[inferred]

## Related

- [[misc/web-yingchao-dev-blog-compaction|Compaction — Yingchao Dai]] — cites this post for "a cache reset rather than a cache failure"
- [[references/manus-context-engineering-lessons|Manus: Context Engineering Lessons]] — the design-time view of the same metric
- [[references/pi-compaction-and-branch-summarization|Pi: Compaction & Branch Summarization]] — the mechanism that resets the cache deliberately
