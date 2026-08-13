---
title: Context Management for Agents
category: concepts
tags:
- context-management
- context-window
- agent-navigation
- vibe-coding
- aief2025
summary: Actively managing an AI agent's context window — feeding diffs, protecting key files, building component inventories, and persisting state across sessions — to maintain reasoning quality and continuity.
sources:
- AIEF2025 - How to Improve your Vibe Coding — Ian Butler - https://www.youtube.com/watch?v=g03m-WFEu1U
- 'AIEF2025 - The Eyes Are The (Context) Window to The Soul: How Windsurf Gets to Know You — Sam Fertig, Windsurf - https://www.youtube.com/watch?v=jUv5WSPo9fk'
- 'https://yingchao.dev/blog/compaction'
- 'https://github.com/earendil-works/pi/blob/main/packages/coding-agent/docs/compaction.md'
- 'https://walkinglabs.github.io/learn-harness-engineering/en/lectures/lecture-05-why-long-running-tasks-lose-continuity/'
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-08-13
relationships:
- target: '[[concepts/vibe-coding]]'
  type: improves
- target: '[[concepts/context-engineering]]'
  type: extends
- target: '[[concepts/agent-memory-types]]'
  type: relates_to
- target: '[[concepts/user-state-and-codebase-state|User State and Codebase State]]'
  type: relates-to
---

# Context Management for Agents

Agents navigating codebases lose logical links to code they've already read over time. Their ability to reason and make connections across a codebase degrades significantly as context fills up. When agents reach their context limits, they summarize or compact files — and bug detection ability drops sharply during compaction. ^[extracted]

This is especially problematic because real bugs are often complex multi-step processes nested deep in codebases, requiring the agent to maintain cross-file reasoning over extended periods. ^[extracted]

## Practical Strategies

### Feed Diffs

Provide the agent with diffs of changed code rather than full files. This helps the agent understand cause-and-effect relationships more efficiently. ^[extracted]

### Protect Key Files

Ensure key files are not summarized or compacted out of the context window. These are the files the agent needs for cross-referencing and reasoning. ^[extracted]

### Build Component Inventories

Have the agent generate a step-by-step inventory of the codebase: list all classes, variables, and how they're used across the codebase. This indexed representation dramatically improves the agent's ability to find bugs. ^[extracted]

## 2026-08-13: Compaction as Automated Context Management

The harness-level answer to manual context management is **compaction** — automatically replacing the LLM-visible context window with a summary plus a retained recent tail when the window fills. Per [[misc/web-yingchao-dev-blog-compaction|Yingchao Dai's comparison]] (2026-08) and the [[references/pi-compaction-and-branch-summarization|Pi docs]]: ^[extracted]

- **Pi** — triggers at `contextTokens > contextWindow − reserveTokens` (reserve 16384 default), cuts only at user/assistant-level boundaries (never standalone tool results), keeps a 20k-token tail, structured summary (Goal/Constraints/Progress/Key Decisions/Next Steps/Critical Context), split-turn prefix summaries for giant turns, cumulative file tracking, `session_before_compact` extension hook. ^[extracted]
- **opencode** — 8k-token recent context + tool-free LLM summary → single `<conversation-checkpoint>` user message; all history serialized to plain text (lossy for attachments/images). ^[extracted]
- **codex** — 20k-token budget on the user message only (no tool history retained), retry-on-overflow, concise handoff-style summary; server-side compaction via `/responses/compact` and `CompactionTrigger` with a 64k-token recent tail and an opaque encrypted compaction item ([[references/openai-server-side-compaction|OpenAI docs]]). ^[extracted]
- **Amp (Neo)** — replaced manual handoff with auto-compaction at 90% context fill ("handoff is out, compaction is in"). ^[extracted]

The **handoff-vs-compaction** framing: identical mechanics (reinitiate a window with a summary), different user behavior — compaction is hands-off trust in the harness, handoff is manual task-divergence judgment. The industry shift is toward automation as models improve. ^[extracted] Compaction also busts prompt caching deliberately — Pi counts it as "a cache reset rather than a cache failure" (see [[concepts/prompt-caching|Prompt Caching]]). ^[extracted]

[[misc/web-earendil-com-posts-compaction-in-pi|Pi's official post]] (2026-08-13) adds the first-party framing of the overflow decision: when the window fills, the alternatives are (1) **restart empty** — discards prior decisions but is defensible because output quality degrades as context grows ([[references/chroma-context-rot-report|Chroma's context-rot report]]), or (2) **compact** — summarize older content, keep a recent tail. Pi's summarization runs as a **standalone request** (dedicated "context summarization assistant" system prompt, structured goal/progress/key-decisions output) that reuses none of the conversation — which also means it can use a different model without extra cost. ^[extracted]

## 2026-08 — Learn Harness Engineering (Walking Labs): cross-session continuity

[[references/harness-lecture-05-long-running-tasks-continuity|Lecture 05 of the Learn Harness Engineering course]] extends context management from within-session navigation to the cross-session horizon. Its claims:

- **Finite windows are the root cause**: even 1M-token windows exhaust on complex tasks because agent information needs (codebases, decision history, tool output, conversation) grow faster than window expansion. Long tasks will span sessions, and sessions will lose information — objective reality, not a model-upgrade problem. ^[extracted]
- **The "what"/"why" asymmetry**: intermediate reasoning holds the "why" of decisions; final output holds only the "what." Compaction keeps "what," loses "why" — so a new session may "optimize" away a deliberate design decision. ^[extracted]
- **Context anxiety** (Anthropic): agents exhibit "rushed finish" behavior near context limits — skipping verification, choosing simple over optimal. Anthropic's March 2026 data: severe on Sonnet 4.5 (compaction alone insufficient, context reset critical) and greatly diminished on Opus 4.5 (compaction suffices) — so harness design must be model-specific, not one-size-fits-all. ^[extracted]
- **Persistence mechanism**: PROGRESS.md (current state / completed / in-progress / known issues / next steps), DECISIONS.md (what decision, why, when, rejected alternatives), git commits as checkpoints, and clock-in/clock-out routines declared in AGENTS.md. Mixed strategy: short tasks (<30 min) in-session; start preparing the handoff when a task needs >60% of the window. ^[extracted]
- **Rebuild cost is the key metric**: a good harness compresses it ~15 min → ~3 min; the lecture's worked example reports −78% rebuild time, feature completion 58% → 100%, hidden defects 43% → 8%. ^[extracted]
- Both OpenAI (repository as "operational record") and Anthropic (handoff files: current state, known issues, next actions) prescribe the same structured state persistence. ^[extracted]

**Tension with the compaction-as-default view:** this lecture's claim that compaction alone is insufficient for Sonnet 4.5-class models (Anthropic data, 2026-03, reported 2026-08) sits against the compaction-hawking industry shift noted above — Amp/Neo's "handoff is out, compaction is in" (2026-08). Both positions are recorded; the lecture frames the compaction-vs-reset choice as **model-dependent** rather than universal. ^[inferred]

## Relationship to Other Concepts

Context management for agents extends [[concepts/context-engineering|context engineering]] (the principle that getting the right tokens in the context window is the primary lever for reliability) to the specific domain of codebase navigation. ^[inferred] It also relates to [[concepts/agent-memory-types|agent memory types]] — the agent's working memory degrades when context is compacted, analogous to working memory loss. ^[inferred]
Context management for agents relates to [[concepts/user-state-and-codebase-state|user state and codebase state]] — the formula for determining relevant output from an AI coding agent. ^[inferred]
