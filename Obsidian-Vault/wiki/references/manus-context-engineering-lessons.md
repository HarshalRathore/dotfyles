---
title: Context Engineering for AI Agents — Lessons from Building Manus
category: references
tags: [context-engineering, kv-cache, agent-design, manus, tool-design]
aliases: [manus context engineering, yichao ji context engineering]
relationships:
  - target: '[[concepts/context-engineering]]'
    type: extends
  - target: '[[entities/manus]]'
    type: related_to
  - target: '[[entities/yichao-ji]]'
    type: authored_by
sources:
  - https://manus.im/blog/Context-Engineering-for-AI-Agents-Lessons-from-Building-Manus
summary: Yichao 'Peak' Ji's six context-engineering principles from building Manus — design around the KV-cache, mask instead of removing tools, use the file system as restorable context, recite goals via todo.md, keep failures in context, and avoid few-shot ruts.
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

# Context Engineering for AI Agents — Lessons from Building Manus

> **TL;DR:** Six principles from [[entities/manus|Manus]]'s rebuilds: (1) design around the KV-cache — hit rate is the single most important production metric; (2) mask tool logits instead of dynamically adding/removing tools; (3) use the file system as unlimited, restorable context; (4) recite the goal via a todo.md to manipulate attention; (5) keep failed turns in context as evidence; (6) don't let few-shot patterns become ruts.

## Design Around the KV-Cache

The **KV-cache hit rate is the single most important metric for a production-stage AI agent** — it drives latency and cost. Agent loops are prefill-heavy (Manus averages ~100:1 input:output token ratio), so identical prefixes pay off hugely: Claude Sonnet cached input costs $0.30/MTok vs $3/MTok uncached — a 10x difference. ^[extracted]

- **Keep the prompt prefix stable** — a single-token difference (e.g. a second-precision timestamp at the start of the system prompt) invalidates the cache from that token onward. ^[extracted]
- **Make context append-only** — never modify previous actions/observations; keep serialization deterministic. ^[extracted]

## Mask, Don't Remove

More tools (especially user-configurable MCP tools) make the model dumber. But dynamically loading/unloading tools mid-iteration backfires: tool definitions sit near the front of the context, so any change invalidates the KV-cache for everything after; and old actions referencing removed tools cause schema violations/hallucinated actions. ^[extracted] Manus instead uses a **context-aware state machine that masks token logits during decoding** to prevent/enforce actions without touching tool definitions. Three function-calling modes (Hermes format example): Auto (prefill only the reply prefix `<|im_start|>assistant`), Required, and a third constraining mode. ^[extracted]

## Use the File System as Context

Context windows of 128K+ are often both insufficient and a liability (performance degrades past a point; long inputs are expensive even with prefix caching). Manus treats the **file system as the ultimate context**: unlimited, persistent, directly operable by the agent. Compression strategies are always **restorable** — drop a web page's content but keep its URL; omit a document's contents but keep its sandbox path. ^[extracted] The author imagines State Space Models (SSMs) working in agentic settings precisely because they could externalize long-term state to file-based memory instead of holding it in context. ^[inferred]

## Manipulate Attention Through Recitation

Manus deliberately writes and rewrites a **todo.md** as tasks progress — reciting objectives into the end of the context pushes the global plan into recent attention, avoiding lost-in-the-middle and reducing goal drift. Typical tasks run ~50 tool calls, and recitation is a natural-language bias mechanism requiring no architectural change. ^[extracted]

## Keep the Wrong Stuff In

Erasing failures removes evidence. Leaving failed actions and stack traces in context lets the model implicitly update its priors away from repeating mistakes. **Error recovery is one of the clearest indicators of true agentic behavior** — yet it's underrepresented in benchmarks, which test success under ideal conditions. ^[extracted]

## Don't Get Few-Shotted

Contexts full of similar action-observation pairs make the model mimic the pattern even when suboptimal (e.g. reviewing 20 resumes → rhythm of repeated actions, drift, hallucination). Fix: **increase diversity** — small amounts of structured variation in serialization templates, phrasing, ordering. The more uniform the context, the more brittle the agent. ^[extracted]

## Context

"Stochastic Graduate Descent" — the author's term for Manus's manual process of architecture searching, prompt fiddling, and empirical guesswork; the framework was rebuilt four times. Betting on context engineering (rather than training an end-to-end agentic model) lets Manus ship improvements in hours instead of weeks and stay orthogonal to underlying models: "If model progress is the rising tide, we want Manus to be the boat, not the pillar stuck to the seabed." ^[extracted]

## Concepts

- [[concepts/context-engineering|Context Engineering]] — this post is a primary source of practitioner rules
- [[concepts/prompt-caching|Prompt Caching]] — KV-cache design rules connect directly
- [[concepts/context-management-for-agents|Context Management for Agents]] — restorable compression via file system
- [[concepts/loop-engineering|Loop Engineering]] — 50-tool-call loops, goal recitation, error recovery
- [[concepts/progressive-disclosure-forms|Progressive Disclosure Forms]] — file-system-as-context is progressive disclosure of state

## Entities

- [[entities/manus|Manus]] — the agent these lessons were learned on
- [[entities/yichao-ji|Yichao 'Peak' Ji]] — author
- [[entities/openai|OpenAI]] — provider pricing cited

## Open Questions

- How do logit-masking tool constraints interact with tool definitions in non-Hermes formats? ^[ambiguous]
- Can SSM-based agents genuinely replace attention for agentic state with file-based memory? ^[inferred]

## Related

- [[misc/web-yingchao-dev-blog-compaction|Compaction — Yingchao Dai]] — cites this post for "cache hit rate is the single most important metric"
- [[references/prompt-caching-in-agents|Earendil: Prompt Caching In Agents]] — the systems view of the same metric
- [[references/humanlayer-context-backpressure|HumanLayer: Context-Efficient Backpressure]] — staying in the smart zone
