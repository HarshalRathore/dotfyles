---
title: Context-Efficient Backpressure for Coding Agents — HumanLayer
category: references
tags: [context-engineering, backpressure, tool-output, coding-agents, humanlayer]
aliases: [humanlayer backpressure, run_silent, smart zone]
relationships:
  - target: '[[entities/dex-horthy]]'
    type: authored_by
  - target: '[[entities/humanlayer]]'
    type: related_to
  - target: '[[concepts/context-engineering]]'
    type: extends
sources:
  - https://www.humanlayer.dev/blog/context-efficient-backpressure
summary: "Dex Horthy's pattern keeps agents in the ~75k-token \"smart zone\": swallow test/build/lint output, failFast, filter, avoid context-anxious models burning tokens."
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

# Context-Efficient Backpressure for Coding Agents

> **TL;DR:** Swallow all test/build/lint output and replace it with a single `✓` when the stage passes; dump the stashed output only on non-zero exit. Deterministic truncation beats letting the model decide. Stay in the ~75k-token "smart zone" for Claude models — every line of passing-test noise is waste that pushes the agent toward needing a compaction/restart.

## The Pattern

A `run_silent()` wrapper runs the command to a temp file; on success it prints `  ✓ <description>` (under 10 tokens), on failure it prints `  ✗ <description>` plus the full captured output. A 200-line jest/pytest/maven run becomes a 3-line status block. The model never sees passing noise — and it doesn't get to decide what to truncate, because that decision is already made: success = ✓, failure = full output. ^[extracted]

Key motivations: every token used diminishes results and moves closer to "need to clear or compact to get back to the smart zone"; human time wasted wrangling an agent in the dumb zone is likely 10x+ more expensive than the token costs saved. ^[extracted]

## Making It Smaller Over Time

- **failFast** — `pytest -x`, `jest --bail`, `go test -failfast`: one failure at a time, no context-switching between five bugs or re-reading stale failure lists. ^[extracted]
- **Filter output** — strip generic stack frames and timing info; grep/sed/awk/cut your way to just the assertion that failed. ^[extracted]
- **Framework-specific parsing** — extract test counts from pytest/jest/go test/vitest so visibility survives without noise; works for notoriously verbose Maven/Gradle, xcodebuild, cargo. ^[extracted]

## Context-Anxious Models Overcorrect

The latest models are so conservative with context that they burn more tokens than they save: output swallowing with `||` guards can use MORE tokens than the output itself; `| head -n 50` on a 5-minute test suite causes re-runs when the model can't see the tail. Ironically the "conservative" behavior wastes tokens, human time, and mental energy. ^[extracted] The author suspects this is in-broad-strokes intentional — it helps models perform well in codebases that aren't thoughtful about context-efficient backpressure. ^[inferred] "Deterministic is better than non-deterministic. If you already know what matters, don't leave it to a model to churn through 1000s of junk tokens to decide." ^[extracted]

## Concepts

- [[concepts/context-engineering|Context Engineering]] — staying in the smart zone is context management at the tool-output layer
- [[concepts/context-management-for-agents|Context Management for Agents]] — backpressure as a way to avoid compaction entirely
- [[concepts/prompt-caching|Prompt Caching]] — less junk in the transcript also keeps prefixes stable

## Entities

- [[entities/dex-horthy|Dex Horthy]] — author, HumanLayer CTO, originator of the "LLMs are pure functions" framing
- [[entities/humanlayer|HumanLayer]]

## Open Questions

- How should harnesses signal "stage passed" in a way that also survives compaction summaries? ^[inferred]

## Related

- [[misc/web-yingchao-dev-blog-compaction|Compaction — Yingchao Dai]] — the "dumb zone" phrase this post coined is referenced there
- [[references/manus-context-engineering-lessons|Manus: Context Engineering Lessons]] — complementary context-shaping principles
