---
title: "Loop Failure Modes: Relational Deadlock and Cache Hygiene"
category: references
type: reference
tags:
  - loop-engineering
  - agent-architecture
  - autonomous-agents
  - engineering-patterns
  - reliability
  - failure-modes
  - deadlock
  - cache
  - tool-design
sources:
  - "https://commandcode.ai/docs/harness-engineering/read-tool"
  - "https://x.com/MrAhmadAwais/status/2086521445694517404"
summary: "Relational invariants across stateful tools: the read/ledger/write DENIED deadlock, partial-view ledgers as brakes, and self-expiring caches as loop hygiene."
provenance:
  extracted: 0.78
  inferred: 0.18
  ambiguous: 0.04
base_confidence: 0.78
lifecycle: draft
tier: supporting
created: 2026-07-13T00:00:00Z
updated: 2026-08-13
---

> Extracted from [[concepts/loop-engineering|Loop Engineering]] to keep the concept page scannable.

## Failure Mode: Relational Deadlock Between Stateful Tools

A loop failure class invisible to per-field validation, documented from production by [[entities/commandcode|Command Code]]'s read-tool work: invariants that live in the *relationship* between tools that never call each other. Their real-world deadlock: ^[extracted]

```
read → one clamped line (per-line clamp) → ledger says "partial"
→ write DENIED (refuses to overwrite unseen content)
→ model re-reads → dedup returns "unchanged"
→ loop forever
```

Hit in the wild on plan files during plan reviews — every field in every call was valid. "Shape invariants are checkable per field, and every schema you write already checks them. Relational invariants across stateful tools are where the real bugs live, and you only find them by watching production traffic." ^[extracted] This joins Step 6's brake philosophy: a loop's brakes must be placed where the loop can actually observe the failure — a partial-view ledger is a brake the write tool consults before destroying state.

**Self-expiring caches as loop hygiene:** the same incident produced the rule "cheap miss, catastrophic stale hit → self-expiring cache." A dedup stub that points at a compacted-away tool result sends the loop into an unbounded loop; consuming the record on hit caps the damage at one wasted turn. Caches inside loops must be designed for their stale-hit cost, not their hit rate. ^[extracted] See [[skills/read-tool-engineering|Read Tool Engineering]] for the full lesson set.

## Related

- [[concepts/loop-engineering|Loop Engineering]] — the parent concept page
