---
title: "How to be a Memory Engineer (Stanford, Microsoft, Anthropic, Nvidia)"
category: references
tags:
  - agent-memory
  - memory-engineering
  - forgetting
  - retrieval
  - production-systems
sources:
  - "https://nitter.tiekoetter.com/i/article/2083971749079581120"
  - "https://x.com/i/status/2084018136437985417"
source_url: "https://nitter.tiekoetter.com/i/article/2083971749079581120"
created: "2026-08-03T00:00:00Z"
updated: "2026-08-03T00:00:00Z"
summary: "N01ennn's fifteen-step memory-engineering course across four labs: Stanford prices the write path, Microsoft stores facts not logs, Anthropic keeps deletable memory, Nvidia reads memory as KV cache — the job is forgetting."
stub: false
provenance:
  extracted: 0.82
  inferred: 0.12
  ambiguous: 0.06
base_confidence: 0.57
lifecycle: draft
lifecycle_changed: "2026-08-03"
tier: supporting
relationships:
  - target: "[[concepts/memory-engineering]]"
    type: derived_from
  - target: "[[concepts/agent-memory]]"
    type: extends
  - target: "[[entities/n01ennn|NO1ennn]]"
    type: derived_from
  - target: "[[concepts/retrieval-augmented-generation|RAG]]"
    type: related_to
---

# How to be a Memory Engineer (Stanford, Microsoft, Anthropic, Nvidia)

> [!tldr] A fifteen-step course by [[entities/n01ennn|N01ennn]] on the job nobody optimizes: not what the agent remembers, but what it costs to build, what is worth keeping, who can delete it, and where it hits the hardware. "Your agent's memory problem is not that it forgets. It's that it never forgets on purpose." ^[extracted]

Six themes, fifteen steps, four labs. Sources cited by the article: Stanford's *Agent Memory: Characterization and System Implications*, Microsoft Research's PlugMem and Memento, Anthropic's Built-in Memory for Claude Managed Agents, with hardware framing from the H100/vLLM/B200 setups. ^[extracted]

## Part 1 — See memory for what it is

**Step 1 — stop calling storage "memory".** Vector-database history + top-k retrieval works "right up until the history outgrows the context window, the write path costs more than the queries, and the store fills with stale state nobody removes." Real memory is not a bucket, it is a system with a **metabolism**: it eats energy on the way in, grows every session, rots if nothing prunes it, and will serve a memory that was true six months ago and is wrong today. ^[extracted]

**Step 2 — learn the four lenses.** Each lab answers one hard question; hold all four at once: Stanford — what does remembering cost; Microsoft — what is worth keeping; Anthropic — who controls what it keeps; Nvidia — where does it hit the hardware. "None of them is wrong. The skill is refusing to pick just one." ^[extracted]

## Part 2 — Price it before you build it (Stanford)

**Step 3 — move your attention to the write path.** Everyone watches query latency; the real bill is paid at construction — LLM prefill + embedding, paid once, invisible to users. Maintenance (dedup, compaction, forgetting) is usually missing entirely. Finding: *for LLM-mediated systems, construction burns more energy than answering 300 queries against the memory afterward*. ^[extracted]

**Step 4 — measure energy per correct answer, not accuracy.** Accuracy hides the bill; normalized by correct answers, two systems with identical accuracy split by **47×**. "From now on, every memory system gets two numbers, quality and cost per correct answer, and you never quote the first without the second." ^[extracted]

**Step 5 — pick your cost; there is no best system.** Stanford sorts memory into four families: raw context, flat retrieval, structured extraction, fully agentic. None wins build cost, query speed, and accuracy simultaneously — Mem0 answers in under a tenth of a second but pays thousands of seconds to build; a lexical index builds instantly but is slower and blunter at query time. A Memory Engineer picks *which cost to pay on purpose*. ^[extracted]

## Part 3 — Decide what is worth keeping (Microsoft)

**Step 6 — store facts and skills, not logs.** PlugMem starts from a result that "should unsettle you": more raw memory can make the agent *worse* — history piles up, retrieval drowns, attention burns wading through transcripts. The fix is stolen from human memory: we keep the facts and skills pulled out of events, not the replay. ^[extracted]

**Step 7 — judge memory by utility, not size.** Stored as facts and skills, one general-purpose memory module beat purpose-built designs across three tasks while spending fewer tokens. The metric: *decision-relevant information reaching the agent per token of context it costs*. Density beats volume. ^[extracted]

**Step 8 — let the model manage its own context.** Microsoft's Memento pushes memory inside the model: it reasons in blocks, writes itself a dense note, deletes the raw reasoning — peak memory drops 2–3×, throughput nearly doubles. Two lessons: it is a learned skill from ordinary fine-tuning, not orchestration bolted on; and the erased reasoning does not fully vanish — a shadow survives inside the model, and rebuilding context from the note alone costs 15 points of accuracy. "Forgetting is not deletion, and remembering is not just storage." ^[extracted]

## Part 4 — Keep control of what it keeps (Anthropic)

**Step 9 — put memory in files you can delete.** Anthropic's move "is almost boring, and that is the point": memory lives in files on a filesystem, read and written with the same tools the agent already uses. Everything files make possible — export, inspection, programmatic control — is the reason. "A store you cannot open and edit is a store you do not control." ^[extracted]

**Step 10 — scope, audit, and roll back.** A wrong memory does not fail once; it persists into every future session that reads it. Layout: `/memory/org` read-only (conventions, past incidents), `/memory/user-4821` read-write (preferences, skills), plus an audit log (which agent, which session, what changed, when) enabling export, roll back, or redaction. Teams building this way report 97% fewer first-pass errors and ~1/3 faster verification because learning stayed observable. ^[extracted] ^[ambiguous] (self-reported)

## Part 5 — Make it survive the hardware (Nvidia)

**Step 11 — read memory as KV cache, not text.** Every memory decision lands on the GPU: full history in context is quadratic, and prefix caching that saves you inside a session collapses across sessions. The scarce resource is the KV cache in high-bandwidth memory — read memory in HBM bandwidth, GPU utilization, tokens per second, and KV slots freed. Memento on vLLM flushes a reasoning block's KV entries when it finishes, returning slots to the pool: 4,290 tok/s vs 2,447 vanilla, same batch 693 s vs 1,096 s on B200. ^[extracted]

**Step 12 — treat construction as a background job.** Construction is almost pure prefill — long reads in, short writes out — so it behaves like a background indexing job; co-located with live queries, a big write stalls the scheduler exactly when a user query arrives. Rate-limit, batch, or defer it off the latency-sensitive path. "You are not saving text, you are freeing cache for the queries that matter." ^[extracted]

## Part 6 — Build it without hurting yourself

**Step 13 — prove each pass by hand first.** Run it once against real history: pull facts and skills, flag contradictions, price freshness. "A memory system that runs against three notes will hallucinate connections that are not there and train you to ignore it." If the output changes a decision, it earns a schedule. ^[extracted]

**Step 14 — add a forgetting policy before the store grows.** None of the systems Stanford tested prunes or forgets by default; footprint grows up to 9× apart across systems at a million tokens, with agentic systems compounding as the store itself grows. Growth slope, not starting size, bankrupts a long-lived agent. Add dedup, consolidation, and an explicit forgetting rule — and never auto-merge contradictions: two memories that disagree may both have been right in different contexts; the system surfaces, you decide. ^[extracted]

**Step 15 — ship in this order.** (1) Build the write path first (facts and skills), let it fill for weeks; (2) add contradiction detection by hand, schedule it only if collisions surprise you; (3) add forgetting/maintenance before volume climbs; (4) tune the hardware layer last, once volume is real. "Get one manual run reliable, wrap it, then automate it." ^[extracted]

## The Whole Shift

Every memory system promises it never forgets. That is the easy half. The Memory Engineer works the other half — "here is what I chose not to keep, what I distilled, what I pruned before it rotted, and what I flushed so the next batch would fit." Stanford, Microsoft, Anthropic and Nvidia are four vocabularies for one act: deciding what to let go of. "You do not become one by giving your agent a bigger memory. You become one the moment you start engineering its forgetting." ^[extracted]

## Entities

- [[entities/n01ennn|NO1ennn]] — author
- [[entities/microsoft-research|Microsoft Research]] — PlugMem, Memento (cited)
- [[entities/anthropic|Anthropic]] — Built-in Memory for Claude Managed Agents (cited)
- [[entities/nvidia|Nvidia]] — H100/B200 hardware framing (cited) ^[inferred]
- [[entities/stanford|Stanford]] — Agent Memory: Characterization and System Implications (cited)

## Open Questions

- The 47× cost-per-correct-answer spread and the 97% error reduction are reported without methodology; treat as directional until the underlying papers are read. ^[ambiguous]
- How does the Memento "shadow" of erased reasoning interact with the KV-cache flush claim? ^[inferred]

## Related

- [[concepts/memory-engineering]] — the framework as a concept
- [[concepts/agent-memory]] — what memory engineering operates on
- [[concepts/lazy-graphrag|LazyGraphRAG]] — structured memory beating bigger context, the companion claim in the same post
- [[concepts/retrieval-augmented-generation|RAG]] — flat retrieval, one of the four memory families
- [[misc/web-x-com-i-status-2084018136437985417|the source post]] — tweet + lecture pairing
