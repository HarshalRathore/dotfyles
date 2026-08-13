---
title: "Lecture 05 — Why Long-Running Tasks Lose Continuity (Learn Harness Engineering)"
created: 2026-08-13
updated: 2026-08-13
type: reference
category: references
tags: [context-rot, context-management, agent-memory, session-portability, checkpointing]
sources:
  - "https://walkinglabs.github.io/learn-harness-engineering/en/lectures/lecture-05-why-long-running-tasks-lose-continuity/"
base_confidence: 0.85
lifecycle: draft
tier: supporting
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
summary: "Lecture 5 of Walking Labs' Learn Harness Engineering: context windows are finite, compaction keeps the 'what' but loses the 'why,' Anthropic's context anxiety, and state persistence files (PROGRESS/DECISIONS/git + clock-in/clock-out) as the fix."
---

# Lecture 05 — Keeping Context Alive Across Sessions

> [!tldr] Long-running tasks lose continuity because context windows are finite and the "why" of decisions lives in intermediate reasoning that compaction drops. The fix is not bigger windows but structured state persistence — PROGRESS.md, DECISIONS.md, git checkpoints, and clock-in/clock-out routines in AGENTS.md — compressing rebuild cost from ~15 min to ~3 min and, in the lecture's worked example, lifting multi-session feature completion from 58% to 100%.

**Source:** Lecture 05 of the Learn Harness Engineering course (Walking Labs, walkinglabs.github.io), "Keeping Context Alive Across Sessions." Paired with practice project 03: Multi-session continuity. Code examples linked in the lecture; outbound links recorded in the ingest report.

## Overview

The lecture opens with the canonical failure: Claude Code runs 30 minutes on a feature, context runs low, a new session is started — and it remembers neither the decisions (why option A lost to option B), nor which files were modified, nor the test state. It spends 15 minutes re-exploring and may adopt an inconsistent approach. The lecture argues this is inherent (finite windows) and behavioral (Anthropic's "context anxiety") and prescribes harness-side **state persistence files** as the mechanism that lets a new session pick up unambiguously. ^[extracted]

## Key Points

### Context windows are finite — and "what" outlives "why"

- Context windows are finite and no model upgrade fixes it: even 1M-token windows exhaust on complex tasks because the information agents consume — codebases, their own decision history, tool output, conversation — grows faster than window expansion. ^[extracted]
- The information agents produce is not uniformly important: intermediate reasoning steps carry the **"why"** of decisions (option A over B, this library over that one, a skipped optimization); the final output carries only the **"what"** (the code). Compaction preserves the latter and loses the former — the next session sees the code but not the reasoning and may "optimize" away a deliberate design decision. ^[extracted]
- **Context anxiety** (Anthropic, long-running agent research): when agents sense context running low they exhibit "rushed finish" behavior — rushing current work, skipping verification steps, choosing a simple solution over the optimal one. At its core it is an irrational resource anxiety. ^[extracted]
- Anthropic's March 2026 data on Sonnet 4.5: context anxiety is severe enough that **compaction alone is insufficient** — context reset becomes a critical component of harness design. On Opus 4.5 the behavior is greatly diminished and compaction manages context without resets. Harness design therefore needs model-specific understanding, not a one-size-fits-all template. ^[extracted] (Lecture's stated source: Anthropic, "Harness design for long-running application development" — the outbound URL is anthropic.com/engineering/harness-design-long-running-apps.)

### Why agents lose continuity past a session/task horizon

- **Drift** — the gap between the agent's understanding and the actual state of the code repository — is introduced at every session boundary and, without control, compounds session after session. ^[extracted]
- Without state persistence files, a new session re-derives everything: it **re-decides** on incomplete information (the previous session analyzed three approaches and chose B; the new session, blind to that analysis, may choose A — same information, different conclusion), performs **duplicate work** (or half-work that conflicts with the existing implementation), lets implementation **drift silently from the original requirements**, and re-pays a **verification gap** (re-running all tests from scratch every session). ^[extracted]
- Both frontier labs prescribe the same remedy: OpenAI's harness-engineering article treats the repository as an **"operational record"** — every operation's results leave traceable evidence in the repo — and Anthropic's long-running-agents documentation recommends **handoff files**: structured documents with current state, known issues, and next actions. ^[extracted]
- This is behavioral evidence of agent-level context rot across session horizons, complementary to the token-level degradation in Chroma's 18-model report ([[references/chroma-context-rot-report|Context Rot — Chroma Technical Report]]). ^[inferred]

### Mitigation mechanisms

- Core metaphor: treat the agent like an engineer whose short-term memory is wiped every session. Before it "clocks out," it must write down critical information so the next "shift" can pick up quickly. ^[extracted]
- **Tool 1 — PROGRESS.md** (progress file): current state (latest commit, test status, lint), completed work, in-progress items, known issues, next steps. ^[extracted]
- **Tool 2 — DECISIONS.md** (decision log): just "what decision, why, when" — including rejected alternatives and constraints (e.g., Redis over a PostgreSQL materialized view for preference caching). ^[extracted]
- **Tool 3 — Git commits as checkpoints**: commit after each atomic unit of work; messages explain what and why. Free, automatically versioned state snapshots. ^[extracted]
- **Tool 4 — Harness initialization flow** (init.sh / AGENTS.md): declared clock-in routine (read PROGRESS.md, read DECISIONS.md, run `make check`, continue from Next Steps) and clock-out routine (update PROGRESS.md, run `make check`, commit completed work). ^[extracted]
- **Mixed strategy**: short tasks (under 30 minutes) complete within one session; long tasks spanning sessions must use progress files and decision logs. Decision criterion: if a task needs more than 60% of the window, start preparing the handoff. ^[extracted]
- **Rebuild cost** is the key metric — the time a new session needs to reach an executable state; a good harness compresses it from ~15 minutes to ~3 minutes. ^[extracted]

### Evidence: the 12-feature multi-session example

- A blog system with user authentication — 12 feature points, estimated 5 sessions. **Baseline (no persistence):** session 2 spent ~15 minutes inferring the auth middleware interface contract; by session 3 accumulated drift had the agent reimplementing already-completed features; by session 5 the repo held lots of redundant code while the core auth feature still failed end-to-end tests — 7 of 12 features completed, 3 with hidden correctness issues. ^[extracted]
- **With persistence** (progress files, decision logs, verification records, git checkpoints): session 2's rebuild cost dropped to ~3 minutes; all 12 feature points completed and verified by session 5. ^[extracted]
- Quantitative comparison: rebuild time reduced ~78%, feature completion 58% → 100%, hidden defect rate 43% → 8%. Methodology is not given — likely an illustrative worked example rather than a controlled study. ^[ambiguous]

## Concepts

- [[concepts/context-management-for-agents|Context Management for Agents]] — the concept page this lecture extends from within-session navigation to cross-session persistence
- [[concepts/context-rot|Context Rot]] — the agent-level forgetting the lecture documents at session boundaries
- [[concepts/ai-harness|AI Agentic Harness]] — the harness layer that owns persistence, checkpointing, and init flows
- [[concepts/session-portability|Session Portability]] — what a session must carry so another session or model can continue the work
- [[concepts/long-horizon-agency|Long-Horizon Agency]] — the system-level capability state persistence buys
- [[concepts/claude-code-session-management|Claude Code Session Management]] — the motivating tool for the lecture's framing
- [[concepts/loop-engineering|Loop Engineering]] — rebuild cost and drift are loop-level metrics; persistence is part of the loop's stack
- [[concepts/context-engineering|Context Engineering]] — the "right tokens" principle applied across sessions
- [[concepts/agent-memory|Agent Memory]] — PROGRESS/DECISIONS files are the agent's deliberate external memory ^[inferred]
- [[concepts/prompt-caching|Prompt Caching]] — compaction busts caches deliberately; resets discard cached context entirely ^[inferred]

## Entities

- [[entities/anthropic|Anthropic]] — source of the context-anxiety research (March 2026) and the handoff-file recommendation
- [[entities/openai|OpenAI]] — harness-engineering article: repository as "operational record"
- [[entities/claude-code|Claude Code]] — the concrete agent in the lecture's motivating scenario
- [[entities/humanlayer|HumanLayer]] — harness engineering for coding agents (further reading)
- Sonnet 4.5 / Opus 4.5 — model-specific context-anxiety behavior; the contrast is the lecture's argument for model-specific harness design (no entity pages) ^[inferred]
- Walking Labs — course author of Learn Harness Engineering (no entity page) ^[inferred]

## Open Questions

- What methodology did Anthropic's March 2026 research use to measure "rushed finish"? The lecture cites the finding without method or data. ^[ambiguous]
- Are the 58% → 100% / 43% → 8% / −78% figures from a controlled experiment or an illustrative walkthrough? ^[ambiguous]
- Does the "60% of window → prepare handoff" threshold generalize across models, given the lecture's own model-specificity argument? ^[inferred]
- If Opus 4.5-class models don't need resets, does context anxiety fade as models improve — or merely shift to different harness pressures? ^[inferred]

## Related

- [[references/chroma-context-rot-report|Context Rot — Chroma Technical Report]] — token-level degradation evidence underlying why compaction/reset both cost quality
- [[references/pi-compaction-and-branch-summarization|Pi: Compaction & Branch Summarization]] — a production compaction implementation (the lecture's "compaction" side of the trade)
- [[references/earendil-session-portability|The Session You Cannot Take With You]] — what a session must carry to be portable across providers
- [[references/knowing-when-to-stop-loop-convergence|Knowing When to Stop]] — the verifier/stopping-rule lens on the same loop economics
