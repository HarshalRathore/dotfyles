---
title: "Why One Giant Instruction File Fails — Learn Harness Engineering Lecture 4"
created: 2026-08-13
updated: 2026-08-13
type: reference
category: references
tags: [harness-engineering, agents-md, context-engineering, instruction-budget, coding-agents]
sources:
  - "https://walkinglabs.github.io/learn-harness-engineering/en/lectures/lecture-04-why-one-giant-instruction-file-fails/"
base_confidence: 0.85
lifecycle: draft
tier: supporting
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
summary: "Lecture 4 of Learn Harness Engineering: why monolithic AGENTS.md files fail — context bloat, lost-in-the-middle, priority conflicts, decay — and the entry-file-as-router split that fixes it."
---

# Why One Giant Instruction File Fails — Learn Harness Engineering, Lecture 4

> [!tldr] A 600-line AGENTS.md is a liability, not an asset: every token is loaded on every request, the middle of the file is attention-blind, hard constraints and soft preferences look identical, and the file only ever grows. The fix is architecture — a short entry file that routes (overview, first-run commands, ≤15 hard constraints, topic-doc links) with details revealed on demand.

**Source:** Learn Harness Engineering (Walking Labs), Lecture 4 — "Split Instructions Across Files" (Why One Giant Instruction File Fails). Course repo: walkinglabs/learn-harness-engineering. ^[extracted]

## Overview

The lecture opens with a familiar trajectory: an `AGENTS.md` that starts useful balloons to 300 lines in a month, 450 in two, 600 in three — and agent performance gets *worse* even as the file gets more comprehensive. Simple bug fixes burn context processing irrelevant deployment instructions; a security constraint at line 300 is ignored outright; three contradictory code-style rules make the agent pick one at random. "Everything seems useful, so you cram it all in" — but only a third of the file is relevant to any given task. ^[extracted]

## Key Points

### The vicious cycle at the root

- The canonical escalation loop: agent makes a mistake → "add a rule to prevent this" → it works temporarily → a different mistake → another rule → bloat out of control. A natural reaction whose cumulative effect is disastrous. ^[extracted]
- Five compounding failure mechanisms: (1) context budget eaten alive, (2) lost in the middle, (3) priority conflicts, (4) maintenance decay, (5) contradiction accumulation. ^[extracted]

### Token-budget and attention-degradation evidence

- **Instruction bloat:** a 600-line `AGENTS.md` consumes 10,000–20,000 tokens — 8–15% of a 128K window (the lecture also cites ~10–15% of Claude's 200K standard window). Complex tasks then compete for the exhausted remainder against dozens of source-file reads, tool-execution output, and accumulating conversation history. ^[extracted]
- **Lost in the Middle (Liu et al., 2023):** LLMs utilize information in the middle of long texts significantly less effectively than at the beginning or end (arxiv.org/abs/2307.03172). A critical rule at line 300 of a 600-line file — e.g. "all database queries must use parameterized queries" — has a very high probability of being ignored. ^[extracted]

### Why monolithic instruction files fail

- **Priority conflicts / can't tell what matters:** non-negotiable hard constraints ("never use eval()"), important design guidelines ("prefer functional style"), and specific historical lessons ("fixed a WebSocket memory leak last week") all render identically — the agent has no reliable signal distinguishing a red line from a suggestion. ^[extracted]
- **Maintenance decay:** outdated instructions rarely get deleted (deletion is uncertain — "maybe something else depends on this rule?" — while addition feels cost-free), so the file only grows and signal-to-noise steadily declines — technical-debt accumulation in instruction form. ^[extracted]
- **Contradiction accumulation:** rules added at different times start conflicting ("use TypeScript strict mode" vs "some legacy files are allowed to use any"); the agent picks one at random each time. ^[extracted]

### The map-not-manual structure (Instruction Architecture)

- The entry file is a **router/map, not an encyclopedia/manual**: 50–200 lines containing only a project overview (1–2 sentences), first-run commands (`make setup && make test`), global hard constraints (≤15 non-negotiable rules), and one-line topic-doc links with applicability conditions. ^[extracted] (The lecture's two mermaid architecture diagrams did not extract; the structure is reconstructed from the "How to Split" prose. ^[ambiguous])
- **Topic documents** are 50–150 lines each, organized by subject in `docs/` or next to the corresponding module — the "packing cubes for luggage" analogy: the agent reads only what the current task needs, without emptying the whole bag. ^[extracted]
- Some information belongs in the code itself — type definitions, interface comments, config-file explanations — because the agent sees it while reading code anyway; no need to duplicate it in instructions. ^[extracted]
- Every instruction should carry a **source** ("why was this rule added?"), an **applicability condition** ("when is this rule needed?"), and an **expiry condition** ("when can this rule be removed?"); audit regularly and delete outdated/redundant/contradictory entries — manage instructions the way you manage code dependencies. ^[extracted]
- Placement rule: if an instruction absolutely must stay in the entry file, put it at the top or bottom — never the middle. ^[extracted]
- Both vendors implicitly endorse the split: OpenAI says entry files should be "short and routing-oriented"; Anthropic says control information for long-running agents should be "concise and high-priority". ^[extracted]

### Splitting strategies and measured results

- Real-world example: a SaaS team's `AGENTS.md` ballooned 50 → 600 lines, mixing tech-stack versions, coding standards, historical bug-fix notes, API usage guides, deployment procedures, and personal preferences. ^[extracted]
- The split refactor: (1) `AGENTS.md` trimmed to 80 lines — overview, run commands, 15 global hard constraints; (2) topic documents created — `docs/api-patterns.md` (120 lines), `docs/database-rules.md` (60 lines), `docs/testing-standards.md` (80 lines); (3) topic-doc links added to the entry file; (4) historical notes converted to test cases or deleted outright. ^[extracted]
- Results (single unnamed team's anecdote): task success rate on the same task set improved 45% → 72%; security-constraint compliance rose 60% → 95% once the parameterized-query rule moved from the middle of the file to the top. ^[extracted] (No eval methodology is given, and the compliance figure conflates position change with content reduction. ^[ambiguous])
- **Instruction SNR** (signal-to-noise ratio): the proportion of instructions in a file relevant to the current task — reading 50 lines of deployment instructions during a bug fix is low SNR. After splitting, the agent spends more of its context budget on the task itself. ^[extracted]

## Concepts

- [[concepts/agents-md|AGENTS.md]] — the file this lecture dissects; its "ball of mud" failure mode is the giant-file trap
- [[concepts/instruction-budget|Instruction Budget]] — the budget lens on the 8–15% context-window figure
- [[concepts/context-engineering|Context Engineering]] — the discipline the split serves
- [[concepts/progressive-disclosure-forms|Progressive Disclosure]] — "reveal on demand" is this lecture's name for the same mechanism
- [[concepts/ai-harness|AI Harness]] — instruction files as one layer of the harness
- [[concepts/system-prompt-curve|System Prompt Curve]] — adjacent evidence on prompt size vs model capability ^[inferred]

## Entities

- [[entities/walkinglabs]] — course author (Learn Harness Engineering)
- [[entities/anthropic]] — "concise and high-priority" control-information guidance
- [[entities/openai]] — "short and routing-oriented" entry-file guidance
- [[entities/humanlayer]] — linked as further reading on harness engineering for coding agents
- [[entities/claude-code]] — Claude's 200K context window cited as the budget example ^[inferred]

## Open Questions

- The mermaid "Instruction Architecture" diagrams did not extract; the map-not-manual structure is reconstructed from the surrounding prose. ^[ambiguous]
- Are the 45% → 72% success-rate gains reproducible beyond the single unnamed SaaS team? No eval methodology is given. ^[ambiguous]
- Does the "top or bottom, never middle" placement rule attenuate as effective context windows grow, or does lost-in-the-middle persist? ^[inferred]
- Where the line falls between topic docs and agent skills as reveal-on-demand mechanisms remains unsettled — also flagged as open on [[concepts/agents-md|AGENTS.md]]. ^[inferred]

## Related

- [[references/harness-lecture-01-why-capable-agents-still-fail]] — harness as the reliability bottleneck; instruction architecture is one harness layer
- [[references/harness-lecture-02-what-a-harness-actually-is]] — the harness anatomy this lecture's instruction layer fits into
- [[concepts/instruction-budget]] — the token cap that makes the split necessary
