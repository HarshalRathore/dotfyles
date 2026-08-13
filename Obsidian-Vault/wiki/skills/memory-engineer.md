---
title: "Memory Engineer: Fifteen-Step Procedure"
category: skills
tags:
- skill
- agent-memory
- memory-engineering
- forgetting
- production-systems
sources:
- "https://nitter.tiekoetter.com/i/article/2083971749079581120"
summary: "Fifteen-step procedure for engineering agent memory: price the write path, store facts not logs, keep memory deletable and audited, treat memory as KV cache, add forgetting policy."
provenance:
  extracted: 0.84
  inferred: 0.10
  ambiguous: 0.06
base_confidence: 0.45
lifecycle: draft
lifecycle_changed: "2026-08-03"
tier: supporting
created: "2026-08-03T00:00:00Z"
updated: "2026-08-03T00:00:00Z"
relationships:
  - target: "[[references/how-to-be-a-memory-engineer]]"
    type: derived_from
  - target: "[[concepts/memory-engineering]]"
    type: implements
---

# Memory Engineer — Fifteen-Step Procedure

Six themes, fifteen steps. Full background in [[references/how-to-be-a-memory-engineer]]; this page is the executable order. ^[extracted]

## Part 1 — See memory for what it is

1. **Stop calling storage "memory"** — memory is a system with a metabolism: energy on the way in, growth every session, rot without pruning, stale memories served as truth.
2. **Hold the four lenses at once** — Stanford (cost of remembering), Microsoft (what is worth keeping), Anthropic (who controls it), Nvidia (where it hits hardware). Refusing to pick one is the skill.

## Part 2 — Price it before you build it (Stanford)

3. **Move attention to the write path** — construction (prefill + embedding) costs more than 300 queries afterward; maintenance (dedup, compaction, forgetting) is usually missing entirely.
4. **Measure energy per correct answer, not accuracy** — identical-accuracy systems split by 47×; always quote quality and cost per correct answer together.
5. **Pick your cost; there is no best system** — raw context / flat retrieval / structured extraction / fully agentic each win one axis. Choose deliberately.

## Part 3 — Decide what is worth keeping (Microsoft)

6. **Store facts and skills, not logs** — never replay events; keep what you pulled out of them.
7. **Judge memory by utility, not size** — optimize decision-relevant information per token of context; density beats volume.
8. **Let the model manage its own context** — reason in blocks, write a dense note, delete raw reasoning (2–3× lower peak memory); remember the erased shadow costs accuracy when rebuilding.

## Part 4 — Keep control of what it keeps (Anthropic)

9. **Put memory in files you can delete** — export, inspect, and programmatically control everything the agent retains.
10. **Scope, audit, and roll back** — `/memory/org` read-only, `/memory/user-*` read-write, an audit log, and the power to redact; a wrong memory persists into every future session.

## Part 5 — Make it survive the hardware (Nvidia)

11. **Read memory as KV cache, not text** — track HBM bandwidth, GPU utilization, tokens per second, KV slots freed; flush reasoning-block KV entries to return slots to the pool.
12. **Treat construction as a background job** — it is almost pure prefill; rate-limit, batch, or defer it off the latency-sensitive path.

## Part 6 — Build it without hurting yourself

13. **Prove each pass by hand first** — run against real history, pull facts and skills, flag contradictions, price freshness; only then earn a schedule.
14. **Add a forgetting policy before the store grows** — growth slope, not starting size, bankrupts a long-lived agent; never auto-merge contradictions, surface them.
15. **Ship in this order** — write path first (let it fill for weeks), contradiction detection by hand, forgetting/maintenance before volume climbs, hardware tuning last.

## Source

- [[references/how-to-be-a-memory-engineer]] — N01ennn, *How to be a Memory Engineer, from the perspective of Stanford, Microsoft, Anthropic and Nvidia* (X article, Aug 2026)
