---
title: "Memory Engineering"
category: concepts
tags:
  - agent-memory
  - memory-engineering
  - forgetting
  - cost-engineering
  - kv-cache
aliases:
  - memory engineer
  - engineering forgetting
sources:
  - "https://nitter.tiekoetter.com/i/article/2083971749079581120"
summary: "Memory engineering optimizes what an agent forgets — write-path cost, facts-over-logs storage, deletable memory, KV-cache awareness — rather than maximizing what it remembers."
provenance:
  extracted: 0.78
  inferred: 0.17
  ambiguous: 0.05
base_confidence: 0.45
lifecycle: draft
lifecycle_changed: "2026-08-03"
tier: supporting
created: "2026-08-03T00:00:00Z"
updated: "2026-08-03T00:00:00Z"
relationships:
  - target: "[[references/how-to-be-a-memory-engineer]]"
    type: derived_from
  - target: "[[concepts/agent-memory]]"
    type: extends
  - target: "[[concepts/context-rot]]"
    type: related_to
  - target: "[[concepts/retrieval-augmented-generation|RAG]]"
    type: contrasts_with
---

# Memory Engineering

**Memory engineering** is the discipline of treating agent memory as a system with a cost and a lifecycle, not a bucket — and optimizing what the system *forgets* rather than what it remembers. The core claim: "Your agent's memory problem is not that it forgets. It's that it never forgets on purpose." ^[extracted]

## The Four Lenses

Four labs, four hard questions; the skill is refusing to pick just one: ^[extracted]

| Lab | Question |
|---|---|
| Stanford | What does remembering cost? |
| Microsoft | What is worth keeping? |
| Anthropic | Who controls what it keeps? |
| Nvidia | Where does it hit the hardware? |

## Cost Lives on the Write Path

The bill is paid at construction (LLM prefill + embedding), not query time: for LLM-mediated systems, construction burns more energy than answering 300 queries afterward. Accuracy hides the bill — normalized by correct answers, two systems with identical accuracy split by 47×. Every memory system gets two numbers: quality and cost per correct answer. There is no best system, only a choice of which cost to pay: raw context, flat retrieval, structured extraction, or fully agentic. ^[extracted]

## Keep Facts and Skills, Not Logs

More raw memory can make an agent worse — history piles up, retrieval drowns, attention burns on transcripts. Human memory keeps the facts and skills pulled out of events, not the replay. The metric is density: decision-relevant information reaching the agent per token of context it costs. Memento pushes this inside the model (reason in blocks, write a dense note, delete raw reasoning — 2–3× lower peak memory, ~2× throughput), at the cost of a "shadow" that survives erasure: rebuilding from the note alone costs 15 accuracy points. ^[extracted]

## Control Means Deletable Memory

Memory in files the agent reads and writes with its own tools: scoped directories (read-only org memory vs read-write user memory), an audit log, and the power to export, roll back, or redact. A wrong memory persists into every future session that reads it, so control is the design, not a layer. ^[extracted]

## Memory Is KV Cache

Underneath every scheme, memory lands in the KV cache in high-bandwidth memory: full context grows quadratically, prefix caching collapses across sessions. Read memory in HBM bandwidth, GPU utilization, tokens per second, and KV slots freed. Construction behaves like a background indexing job — rate-limit, batch, or defer it off the latency-sensitive path. ^[extracted]

## Forgetting Policy

None of the systems studied prunes or forgets by default; footprint grows up to 9× apart across systems at a million tokens. Growth slope, not starting size, bankrupts a long-lived agent. Add dedup, consolidation, and an explicit forgetting rule before the store gets big — and never auto-merge contradictions: two memories that disagree may both have been right in different contexts. ^[extracted]

## Relationship to Other Concepts

Memory engineering is the cost- and lifecycle-aware layer over [[concepts/agent-memory|agent memory]] — it answers who pays, what is kept, who can delete, and where it runs. It contrasts with [[concepts/retrieval-augmented-generation|flat RAG]] as one of the four memory families (structured extraction beats flat retrieval on density, at higher build cost), and it is the same lesson as [[concepts/lazy-graphrag|LazyGraphRAG]]: structure beats volume — "a bigger context window is not memory, structured memory is." ^[inferred]

## Related

- [[references/how-to-be-a-memory-engineer]] — the fifteen-step course
- [[concepts/agent-memory]] — the substrate being engineered
- [[concepts/lazy-graphrag|LazyGraphRAG]] — structured memory beating the million-token window
- [[concepts/context-rot]] — the rot forgetting policy prevents
- [[concepts/retrieval-augmented-generation|RAG]] — flat retrieval as one memory family
