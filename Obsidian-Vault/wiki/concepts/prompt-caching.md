---
title: Prompt Caching for AI Agents
category: concepts
tags:
  - prompt-caching
  - agent-infrastructure
  - cost-optimization
  - api-design
aliases:
  - prompt cache
  - prefix-match caching
sources:
  - "https://claude.com/blog/lessons-from-building-claude-code-prompt-caching-is-everything"
  - "https://earendil.com/posts/prompt-caching/"
  - "https://manus.im/blog/Context-Engineering-for-AI-Agents-Lessons-from-Building-Manus"
  - "https://yingchao.dev/blog/compaction"
  - "https://earendil.com/posts/compaction-in-pi/"
summary: "Prompt caching reuses prior API-roundtrip computation via exact-prefix matching, cutting latency and cost for long-running agentic products like Claude Code — compaction is a deliberate cache break."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.59
lifecycle: draft
lifecycle_changed: '2026-07-13'
tier: supporting
created: '2026-07-13T00:00:00Z'
updated: '2026-08-13T15:30:00Z'
relationships:
  - target: '[[concepts/prompt-engineering]]'
    type: extends
  - target: '[[concepts/agent-architecture|Agent Architecture]]'
    type: relates_to
  - target: '[[concepts/llm-cost-structure|LLM Cost Structure]]'
    type: relates_to
---

# Prompt Caching for AI Agents

**Prompt caching** is a prefix-match optimization that reuses computation from previous API roundtrips, dramatically reducing latency and cost for long-running agentic products like [[entities/claude-code|Claude Code]]. The author Thariq Shihipar (member of technical staff on the Claude Code team) calls it the engineering principle that makes long-running agents economically feasible: "Cache Rules Everything Around Me." ^[extracted]

Claude Code runs alerts on prompt cache hit rate and declares SEVs if they're too low — demonstrating that cache performance is operationalized as a core SLO, not just an optimization. ^[extracted]

## How It Works

Prompt caching works by **prefix matching**: the API caches everything from the start of the request up to each `cache_control` breakpoint. The order of content matters enormously because any change anywhere in the prefix invalidates everything after it. ^[extracted]

The optimal structure maximizes shared prefixes: ^[extracted]

1. **Static system prompt & Tools** (globally cached across all sessions)
2. **CLAUDE.md** (cached within a project)
3. **Session context** (cached within a session)
4. **Conversation messages** (least cacheable — changes every turn)

This layered approach ensures new sessions inherit cache hits from the first three tiers while only the conversation messages are unique. ^[extracted]

## Five Design Practices

### 1. Static Content First, Dynamic Last

The best approach puts static content first and dynamic content last. Common mistakes that break caching include:

- Putting an in-depth timestamp in the static system prompt ^[extracted]
- Shuffling tool order definitions non-deterministically ^[extracted]
- Updating tool parameters after the initial cache is established ^[extracted]

### 2. Use Messages for Updates

When information becomes out of date (time, file changes, etc.), the cache-safe approach is to **pass updates via messages** in the agent's next turn rather than editing the system prompt. In Claude Code, a `<system-reminder>` tag in the next user message or tool result delivers fresh information without breaking the cache. ^[extracted]

### 3. Don't Change Models Mid-Session

Prompt caches are unique per model. Switching from a high-cost model like Opus to a cheaper one like Haiku mid-conversation forces a full cache rebuild for Haiku, making the switch more expensive than having Opus answer. The recommended pattern is to use **subagents** — deploy a subagent that prompts Opus to prepare a "hand-off" message to another model. ^[extracted]

### 4. Never Add or Remove Tools Mid-Session

Changing the tool set mid-conversation invalidates the cache for the entire conversation because tools are part of the cached prefix. Claude Code solves this with two patterns: ^[extracted]

- **Plan Mode as a design pattern**: Keep ALL tools in the request at all times, using `EnterPlanMode` and `ExitPlanMode` as tools themselves. This lets the model autonomously enter plan mode when detecting a hard problem without any cache break. ^[extracted]
- **Tool search to defer instead of remove**: Instead of removing MCP tools mid-conversation, send lightweight stubs (just the tool name) and load the full tool schemas only when the model selects them via tool search. ^[extracted]

### 5. Compacting Without Breaking the Cache

Compaction — summarizing the conversation when the context window fills up — is tricky with caching. A naive approach (separate API call with its own system prompt) causes all prefixes to diverge at the very first token. ^[extracted]

**Cache-safe forking** solves this: run compaction with the EXACT SAME system prompt, user context, system context, and tool definitions as the parent conversation, prepending the parent's messages and appending the compaction prompt as a new user message. This makes the compaction request look nearly identical to the parent's last request, reusing the cached prefix. Anthropic later built compaction directly into the API. ^[extracted]

## Monitoring

A few percentage points of cache miss rate can dramatically affect cost and latency. Claude Code monitors cache hit rate like uptime — it is treated as a first-class operational metric. ^[extracted]

## Related References

- [[entities/thariq-al-samarrai|Thariq Shihipar]] — author, member of technical staff on Claude Code team. Also mentioned: "[[https://claude.com/blog/seeing-like-an-agent|Seeing like an agent: how we design tools in Claude Code]]" and "[[https://claude.com/blog/using-claude-code-session-management|Using Claude Code: Session Management & 1M Context]]"
- [[references/aief2025-prompt-engineering-is-dead-nir-gazit-traceloop]] — related perspective on prompt engineering evolution
- [[https://x.com/RLanceMartin/status/2024573404888911886]] — referenced in the article for prompt caching insights

## 2026-08-13: Cache Health as a Systems Property

[[references/prompt-caching-in-agents|Earendil Engineering's essay]] (2026-07) deepens the picture: caching is prefix-keyed — one changed token invalidates everything after it; tool loadouts, dynamic system prompts (timestamps), model/provider switches, and branch navigation (`/tree`, forks) are the usual killers; Anthropic's default **5-minute TTL** is shorter than normal coding activities (a test run or diff review outlives it and the next request is billed at full input price). ^[extracted] The economics of pruning: a rewrite costs `surviving tokens × (uncached − cache-read price)` vs `pruned tokens × cache-read price` per turn — so stable append-only transcripts beat aggressive pruning. ^[extracted] Gateway/reseller billing incentives can misalign with hit rates, so cache health must be observable (Pi's footer `R`/`W`/`CH`, `/session` re-billed estimates, `showCacheMissNotices`). ^[extracted]

[[references/manus-context-engineering-lessons|Manus's design rules]] align: stable prompt prefix (no second-precision timestamps at the start), append-only context, and **masking tool logits instead of dynamically adding/removing tools** — tool definitions sit near the front, so loadout changes invalidate the cached conversation behind them. ^[extracted]

**Compaction is the deliberate cache reset**: [[misc/web-yingchao-dev-blog-compaction|Yingchao Dai]] notes compaction's prompt swaps, model switches, and tool removal bust caching by design; Pi's session statistics count compaction as "a cache reset rather than a cache failure". ^[extracted] OpenAI's server-side compaction ([[references/openai-server-side-compaction|docs]]) moves the rewrite into the provider and returns an opaque encrypted compaction item. ^[extracted]

[[misc/web-earendil-com-posts-compaction-in-pi|Pi's official compaction post]] (2026-08-13) spells out the exact-prefix mechanics: caching requires an **exact prefix match**, and compaction inserts the summary mid-prefix — the retained recent turns are token-identical but now follow a different prefix, so their cached state cannot be reused and everything after the first changed token must be recomputed. Two design consequences: Pi checks auto-compaction **after a turn ends** (each request until then extends the prompt and reuses the cached prefix), and only compacts mid-turn when an overflow error forces it. After the first post-compaction request, caching builds up again. ^[extracted]

## Open Questions

- How does prompt caching interact with the new Anthropic API's built-in compaction feature compared to custom cache-safe forking? ^[inferred]
- What cache-hit-rate thresholds do different vendors use for defining SEVs? ^[ambiguous]
- Does prefix-match caching favor certain prompt structures so heavily that it actively discourages experimentation and iteration? ^[inferred]
