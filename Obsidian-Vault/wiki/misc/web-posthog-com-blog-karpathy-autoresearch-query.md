---
title: "Karpathy's Autoresearch found a 3-year-old bug in our query engine (and improved performance by 11%)"
category: misc
tags: [ai, query-optimization, clickhouse, engineering, agent-loop]
sources:
  - "[[sources/karpathy-autoresearch-query-engine-bug]]"
source_url: "https://posthog.com/blog/karpathy-autoresearch-query-engine-bug"
created: 2026-06-30T23:15:00Z
updated: 2026-06-30T23:15:00Z
summary: "PostHog's engineering team applied Karpathy's autoresearch pattern to ClickHouse query optimization, finding a 3-year-old timezone wrapping bug that prevented primary key usage and improving query performance by 11-37%."
affinity: {}
promotion_status: misc
stub: false
provenance:
  extracted: 0.88
  inferred: 0.10
  ambiguous: 0.02
base_confidence: 0.45
lifecycle: draft
lifecycle_changed: 2026-06-30
---

# Karpathy's Autoresearch found a 3-year-old bug in our query engine (and improved performance by 11%)

> Author: Robbie Coomber (PostHog). Jun 01, 2026.

## Overview

PostHog's Analytics Platform and Query Performance teams applied Karpathy's autoresearch pattern — an AI agent that proposes changes, benchmarks them, keeps what helps, and discards the rest — to their ClickHouse query engine. The agent ran overnight at a Lisbon offsite hackathon and discovered that a `toTimeZone()` wrapper added in April 2023 was silently preventing ClickHouse from using its primary key for partition pruning and index-based lookups on timestamp columns.

The fix: rewriting comparisons so the bare `timestamp` field sits on the left side and the timezone annotation moves to the constant on the right. This restored partition pruning, reduced granules scanned by 62%, and made queries 11-37% faster depending on date range width.

## Key Points

- **Autoresearch pattern:** An AI agent loop that proposes a change, runs a benchmark, measures against a target metric, and keeps or discards the candidate. Popularized by Andrej Karpathy in March 2026. ^[inferred]
- **The bug:** Wrapping `timestamp` in `toTimeZone(timestamp, team_tz)` for per-team timezone support prevented ClickHouse's query planner from deriving bounds on `toYYYYMM(timestamp)` (partition key) and `toDate(timestamp)` (primary key component), silently disabling partition pruning and partial primary key usage for ~3 years.
- **Why it hid:** A MinMax skip index provided enough fallback performance that queries weren't catastrophically slow — just slower than they should have been. Every query was affected equally, so no A/B comparison was possible. The evidence only shows in `EXPLAIN PLAN indexes=1, json=1`.
- **The fix:** Swap `toTimeZone(timestamp, 'US/Pacific') >= '2024-03-01'` to `timestamp >= toDateTime64('2024-03-01', 6, 'US/Pacific')`. Semantics are identical (`toTimeZone` only changes display metadata, not the epoch), but the planner now sees a bare `timestamp` column and can do its job.
- **Results:** 62% reduction in granules scanned. 37% faster on 7-day queries, still measurably faster on 90-day queries. The speedup is largest on short date ranges where partition pruning matters most.
- **Architecture:** The team built a campaign orchestration layer on top of `pi-autoresearch` with structured lanes (predicate ordering, JSON parsing, timezone handling, primary key usage). Range-narrowing let the agent iterate fast against small date ranges, with periodic full-range retests.
- **Future pipeline:** Fetch slow queries from `system.query_log`, spin up sandboxes, run `pi-autoresearch` per candidate, dedup with an LLM, then dispatch PostHog Code sessions for each surviving idea → PRs into Slack for human review.

## Concepts

- [[concepts/ralph-coding-technique]] — Both Ralph and autoresearch are AI agent loops, but Ralph focuses on building features (greenfield coding) while autoresearch focuses on optimization (propose → measure → keep/discard)
- [[concepts/agent-loop]] — The general pattern of AI agents running in iterative loops with feedback

## Entities

- [[entities/andrej-karpathy]] — AI researcher who packaged and named the autoresearch pattern
- [[posthog]] — The company that applied this technique to find a ClickHouse query bug
- [[entities/clickhouse]] — The column-oriented database whose query engine was being optimized

## Open Questions

- How well does the automated pipeline (sandbox → pi-autoresearch → dedup → PostHog Code → PR) work in practice at scale? The article notes these are "second-order results" not yet proven.
- Can the autoresearch pattern generalize to other metrics beyond query speed (memory, cost, accuracy, error rate)?
- Is the campaign/lane orchestration structure necessary, or does the basic pi-autoresearch loop suffice for simpler optimization targets?

## Related

- [[concepts/ralph-coding-technique]] — Connected via "AI agent loop" pattern; both are responses to Karpathy's vision but address different phases of development (build vs optimize)
