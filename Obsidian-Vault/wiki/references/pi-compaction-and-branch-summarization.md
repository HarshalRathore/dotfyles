---
title: Pi — Compaction & Branch Summarization (Official Docs)
category: references
tags: [compaction, branch-summarization, coding-agents, harness-design, pi]
aliases: [pi compaction docs, earendil pi compaction]
relationships:
  - target: '[[concepts/context-management-for-agents]]'
    type: implements
  - target: '[[entities/pi]]'
    type: related_to
  - target: '[[concepts/prompt-caching]]'
    type: related_to
sources:
  - https://github.com/earendil-works/pi/blob/main/packages/coding-agent/docs/compaction.md
summary: "Official Pi docs on compaction and branch summarization — trigger thresholds, cut-point rules, split-turn handling, structured summary format, extension hooks, cache-disabling requests."
provenance:
  extracted: 0.92
  inferred: 0.06
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-08-13
tier: supporting
created: 2026-08-13T15:00:00Z
updated: 2026-08-13T15:00:00Z
---

# Pi — Compaction & Branch Summarization

> **TL;DR:** Pi's compaction triggers when `contextTokens > contextWindow - reserveTokens` (reserve 16384 default), cuts at user/assistant-level boundaries (never tool results), keeps a 20k-token recent tail, produces a rigidly structured summary (Goal / Constraints / Progress / Key Decisions / Next Steps / Critical Context) plus `<read-files>`/`<modified-files>` blocks, handles giant single turns via split-turn prefix summaries, and exposes `session_before_compact` / `session_before_tree` extension hooks. Compaction requests deliberately disable prompt-cache writes.

## Overview

Two summarization mechanisms in [[entities/pi|Pi]]: **compaction** (context exceeds threshold or manual `/compact`) and **branch summarization** (`/tree` navigation preserves context from the abandoned branch). Both use the same structured summary format, track file operations cumulatively, and use fresh routing session IDs with prompt-cache writes disabled (these one-off prompts are unlikely to be reused). ^[extracted]

## Compaction

- **Trigger:** `contextTokens > contextWindow - reserveTokens`; `reserveTokens` defaults to 16384 (configurable in `~/.pi/agent/settings.json` or `<project-dir>/.pi/settings.json`), leaving room for the response. Manual: `/compact [instructions]`. ^[extracted]
- **Cut point:** walk backwards from the newest message accumulating token estimates until `keepRecentTokens` (default 20k) is reached. Valid cut points: user messages, assistant messages, BashExecution messages, custom messages. **Never cut at tool results** — they must stay with their tool call. ^[extracted]
- **Split turns:** a turn = user message + everything until the next user message. If one turn exceeds `keepRecentTokens`, the cut lands mid-turn → Pi generates two summaries (history summary + turn prefix summary) and merges them; the retained tail continues verbatim from the mid-turn boundary. ^[extracted]
- **Repeated compactions:** the summarized span starts at the previous compaction's kept boundary (`firstKeptEntryId`), so messages that survived an earlier compaction are included in the next summarization pass. `tokensBefore` is recalculated from the rebuilt context. ^[extracted]
- **Entry structure:** `CompactionEntry` stores `summary`, `firstKeptEntryId`, `tokensBefore`, optional `usage`, and `details` (default: `readFiles`/`modifiedFiles`) — extensions can store any JSON-serializable data. ^[extracted]

## Branch Summarization

On `/tree` navigation Pi offers to summarize the abandoned branch: find the common ancestor, collect entries from the old leaf back to it, summarize within a token budget, and append a `BranchSummaryEntry` at the navigation point — injecting context from the left branch into the new branch. ^[extracted]

## Cumulative File Tracking

Both mechanisms extract file operations from tool calls **and** from previous compaction/branch-summary `details`, so read/modified file history accumulates across multiple compactions or nested branch summaries. ^[extracted]

## Summary Format & Serialization

Structured markdown: `## Goal`, `## Constraints & Preferences`, `## Progress` (Done / In Progress / Blocked), `## Key Decisions`, `## Next Steps`, `## Critical Context`, plus `<read-files>` and `<modified-files>` blocks. Before summarization, messages are serialized to text via `serializeConversation()` (`[User]:`, `[Assistant thinking]:`, `[Assistant tool calls]:`, `[Tool result]:`) — preventing the model from treating it as a conversation to continue. Tool results truncate at **2000 characters** with a truncation marker (read/bash results dominate context size). ^[extracted]

## Extension Hooks

- `session_before_compact` — fires before auto-compaction or `/compact`; can cancel (`{cancel: true}`) or supply a custom summary (with `firstKeptEntryId`, `tokensBefore`, `usage`, custom `details`). `preparation` exposes `messagesToSummarize`, `turnPrefixMessages`, `previousSummary`, `fileOps`, `reason` ("manual" | "threshold" | "overflow"), `willRetry`, and an AbortSignal. Custom models can use `serializeConversation(convertToLlm(...))` for text input. ^[extracted]
- `session_before_tree` — fires before `/tree` navigation; can cancel or provide a custom branch summary. ^[extracted]

## Concepts

- [[concepts/context-management-for-agents|Context Management for Agents]] — Pi's compaction is the automated form of this practice
- [[concepts/prompt-caching|Prompt Caching]] — compaction requests disable cache writes; see the deeper treatment in [[references/prompt-caching-in-agents|Earendil's Prompt Caching In Agents]]
- [[concepts/context-engineering|Context Engineering]] — the structured summary format is prompt engineering at the harness level
- [[concepts/long-horizon-agency|Long-Horizon Agency]] — compaction + branch summarization are what make tree-shaped sessions persist

## Entities

- [[entities/pi|Pi]] — the harness these mechanisms belong to
- [[entities/yingchao-dai|Yingchao Dai]] — documented this design from the outside in "Compaction"

## Open Questions

- Is the 16384-token summary budget (80% history) empirically tuned or arbitrary? ^[ambiguous]
- How much quality is lost by the 2000-char tool-result truncation during serialization? ^[ambiguous]

## Related

- [[misc/web-yingchao-dev-blog-compaction|Compaction — Yingchao Dai's cross-harness comparison]]
- [[references/openai-server-side-compaction|OpenAI Server-Side Compaction]] — the provider-side alternative to client-side summarization
