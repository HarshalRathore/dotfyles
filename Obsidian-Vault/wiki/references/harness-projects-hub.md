---
title: "Projects — Learn Harness Engineering (Walking Labs)"
category: references
type: reference
tags: [harness-engineering, coding-agents, agent-harness, projects]
sources:
  - "https://walkinglabs.github.io/learn-harness-engineering/en/projects/"
source_url: "https://walkinglabs.github.io/learn-harness-engineering/en/projects/"
created: "2026-08-13"
updated: "2026-08-13"
summary: "Projects hub of Learn Harness Engineering: 7 progressive hands-on projects — prompt-vs-rules baseline, agent-readable workspace, multi-session continuity, first loop, first graph."
affinity: {}
promotion_status: misc
stub: false
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: "2026-08-13"
tier: supporting
---

# Projects — Learn Harness Engineering (Walking Labs)

> [!tldr] The hands-on section of the [[misc/web-walkinglabs-github-io-learn-harness-engineering-en|Learn Harness Engineering]] course: reading the lectures isn't enough — you build the environments yourself and observe how [[entities/codex|Codex]], [[entities/claude-code|Claude Code]], or other AI agents behave under different rules. The hub describes 7 progressive projects (a prompt-only vs rules-first baseline, an agent-readable workspace, multi-session continuity, runtime feedback and scope control, self-verification and role separation, a complete-harness capstone, and your first automated loop), each delivered as a folder with `starter/` and `solution/` workspaces plus task instructions. The projects are the applied track that turns the course's lecture theory (repository-as-system-of-record, initialization, verification, loop and graph engineering) into a working agentic environment built from scratch.

**Course:** Learn Harness Engineering (Walking Labs), Projects hub — "Welcome to Projects". No named author on the page. ^[ambiguous]

## Overview

The Projects section is the course's hands-on track: "Reading the lectures isn't enough—you need to build the environments yourself and observe how Codex, Claude Code, or other AI agents behave under different rules." ^[extracted] The hub states the course "features 7 progressive, hands-on projects that teach you how to build a reliable agentic working environment from scratch." ^[extracted] The sidebar, however, lists **8** project pages (`project-01` through `project-08`); the hub page itself never reconciles the 7-vs-8 discrepancy. ^[ambiguous]

The seven described project themes, in overview order: ^[extracted]

1. **Prompt-Only vs. Rules-First** — compare how an agent performs with just a prompt versus a basic harness.
2. **Agent-Readable Workspace** — structure your repository to make it AI-friendly and establish handoff mechanisms.
3. **Multi-Session Continuity** — design state files and initialization scripts so the agent can resume work seamlessly across sessions.
4. **Runtime Feedback and Scope Control** — introduce tools that let the agent test its own code and correct errors during execution.
5. **Self-Verification and Role Separation** — build an independent review mechanism to prevent hallucinations and early declarations of victory.
6. **Complete Harness (Capstone)** — assemble a final, observable, end-to-end agent working environment.
7. **Your First Automated Loop** — transition from manual driving to automated looping via three progressive experiments: goal loop, timer loop, and maker-checker loop.

## Key Points

- **Folder anatomy:** each project folder "typically contains" `starter/` (your starting workspace), `solution/` (a reference implementation if you get stuck), and task instructions detailing your background and specific goals. ^[extracted]
- **How to proceed:** use your preferred AI Coding Agent (e.g. Claude Code, Cursor, Trae) to complete the tasks inside the `starter/` directory. ^[extracted]
- **Prerequisites (implied):** the lectures come first — the hub frames the projects as the "hands-on section" and warns reading alone is insufficient; a coding-agent tool ([[entities/claude-code|Claude Code]], [[entities/cursor-ai|Cursor]], Trae) and the course repo's project folders are the other requirements. ^[inferred]
- **Relation to lectures:** the projects apply lecture concepts by observation — rules-first harnesses (Lecture 1's why-capable-agents-still-fail theme), repo structuring ([[concepts/repository-as-system-of-record|Repository as System of Record]]), state/init scripts ([[concepts/context-engineering|Context Engineering]]), verification ([[references/harness-lecture-09-declare-victory-too-early|Lecture 9]]), observability ([[concepts/agent-observability|Agent Observability]]), and the loop → graph trajectory ([[concepts/loop-engineering|Loop Engineering]], [[concepts/graph-engineering|Graph Engineering]]). ^[inferred from project titles and overview text]
- The hub page describes the projects' goals in prose but does **not** explicitly map each overview bullet to a sidebar page URL. ^[ambiguous]

## Project List

Sidebar order (project-01 … project-08). Pairings to the overview bullets are marked where inferred; the hub itself only guarantees the URLs and the prose descriptions.

1. **project-01 — Baseline vs Minimal Harness** (https://walkinglabs.github.io/learn-harness-engineering/en/projects/project-01-baseline-vs-minimal-harness/) — the "Prompt-Only vs. Rules-First" comparison: agent performance with just a prompt versus a basic harness. ^[extracted]
2. **project-02 — Agent-Readable Workspace** (https://walkinglabs.github.io/learn-harness-engineering/en/projects/project-02-agent-readable-workspace/) — AI-friendly repository structure and handoff mechanisms. ^[extracted]
3. **project-03 — Multi-Session Continuity** (https://walkinglabs.github.io/learn-harness-engineering/en/projects/project-03-multi-session-continuity/) — state files and initialization scripts so the agent resumes seamlessly across sessions. ^[extracted]
4. **project-04 — Incremental Indexing** (https://walkinglabs.github.io/learn-harness-engineering/en/projects/project-04-incremental-indexing/) — sidebar page with no explicit overview bullet; plausibly a continuation of the agent-readable-workspace indexing theme. ^[ambiguous]
5. **project-05 — Grounded QA Verification** (https://walkinglabs.github.io/learn-harness-engineering/en/projects/project-05-grounded-qa-verification/) — likely the "Self-Verification and Role Separation" bullet: an independent review mechanism against hallucinations and premature victory. ^[inferred pairing]
6. **project-06 — Runtime Observability and Debugging** (https://walkinglabs.github.io/learn-harness-engineering/en/projects/project-06-runtime-observability-and-debugging/) — likely the "Runtime Feedback and Scope Control" bullet: tools that let the agent test its own code and correct errors during execution. ^[inferred pairing]
7. **project-07 — Loop Engineering: First Loop** (https://walkinglabs.github.io/learn-harness-engineering/en/projects/project-07-loop-engineering-first-loop/) — the "Your First Automated Loop" bullet: goal loop, timer loop, maker-checker loop. ^[extracted]
8. **project-08 — Graph Engineering: First Graph** (https://walkinglabs.github.io/learn-harness-engineering/en/projects/project-08-graph-engineering-first-graph/) — sidebar page with no explicit overview bullet; companion to [[references/harness-lecture-14-graph-engineering|Lecture 14: Graph Engineering]]. ^[inferred]

The "Complete Harness (Capstone)" overview bullet has no obvious sidebar counterpart; it may subsume project-06/project-08 or be delivered across projects. ^[ambiguous]

## Concepts

- [[concepts/ai-harness|AI Harness]] — the projects build this infrastructure layer (rules, state, verification, observability) from scratch
- [[concepts/repository-as-system-of-record|Repository as System of Record]] — the agent-readable workspace projects structure the repo as the shared source of truth
- [[concepts/context-engineering|Context Engineering]] — state files and initialization scripts as continuity mechanisms across sessions
- [[concepts/agents-md|AGENTS.md]] — the "rules-first" side of the prompt-only vs rules-first baseline ^[inferred — the hub does not name AGENTS.md]
- [[concepts/agent-observability|Agent Observability]] — the capstone's "observable" environment and project-06's runtime debugging
- [[concepts/loop-engineering|Loop Engineering]] — project-07: the first automated loop (goal/timer/maker-checker)
- [[concepts/graph-engineering|Graph Engineering]] — project-08: the first graph

## Entities

- [[entities/walkinglabs|Walking Labs]] — publisher of the course. ^[extracted]
- [[entities/claude-code|Claude Code]] — example agent whose behavior the projects observe; also named as a preferred agent for completing the projects. ^[extracted]
- [[entities/codex|Codex]] — example agent named in the hub intro. ^[extracted]
- [[entities/cursor-ai|Cursor]] — named as a preferred agent for doing the projects. ^[extracted]
- Trae — named as an example agent; no entity page yet. ^[inferred]

## Open Questions

- The overview says "7 progressive projects" but the sidebar lists 8 project pages; the hub never explains which is current. ^[ambiguous]
- The exact mapping between the 7 overview bullets and the 8 sidebar pages (project-04, project-05, project-06, project-08) is not stated on the hub. ^[ambiguous]
- Whether "Complete Harness (Capstone)" is a distinct deliverable or a label covering the later projects is unclear. ^[ambiguous]
- The hub names no formal prerequisites or time estimates per project. ^[inferred]

## Related

- [[misc/web-walkinglabs-github-io-learn-harness-engineering-en|Learn Harness Engineering (course landing)]] — the course overview this hub belongs to
- [[references/harness-lecture-01-why-capable-agents-still-fail|Lecture 1: Why Capable Agents Still Fail]] — the prompt-vs-harness baseline the projects test
- [[references/harness-lecture-13-loop-engineering|Lecture 13: Loop Engineering]] — theory behind project-07
- [[references/harness-lecture-14-graph-engineering|Lecture 14: Graph Engineering]] — theory behind project-08
- [[references/harness-resources-hub|Resources]] — the copy-ready template library (AGENTS.md, feature_list.json) that pairs with the projects
- [[references/harness-skills-hub|Skills]] — the course's skills track

### Further reading (outbound links from the page)

- Project 01: Baseline vs Minimal Harness — https://walkinglabs.github.io/learn-harness-engineering/en/projects/project-01-baseline-vs-minimal-harness/
- Project 02: Agent-Readable Workspace — https://walkinglabs.github.io/learn-harness-engineering/en/projects/project-02-agent-readable-workspace/
- Project 03: Multi-Session Continuity — https://walkinglabs.github.io/learn-harness-engineering/en/projects/project-03-multi-session-continuity/
- Project 04: Incremental Indexing — https://walkinglabs.github.io/learn-harness-engineering/en/projects/project-04-incremental-indexing/
- Project 05: Grounded QA Verification — https://walkinglabs.github.io/learn-harness-engineering/en/projects/project-05-grounded-qa-verification/
- Project 06: Runtime Observability and Debugging — https://walkinglabs.github.io/learn-harness-engineering/en/projects/project-06-runtime-observability-and-debugging/
- Project 07: Loop Engineering: First Loop — https://walkinglabs.github.io/learn-harness-engineering/en/projects/project-07-loop-engineering-first-loop/
- Project 08: Graph Engineering: First Graph — https://walkinglabs.github.io/learn-harness-engineering/en/projects/project-08-graph-engineering-first-graph/
- Course templates (GitHub) — https://github.com/walkinglabs/learn-harness-engineering/blob/main/docs/en/resources/templates/index.md
- Course repository — https://github.com/walkinglabs/learn-harness-engineering/tree/main
- Community Discord — https://discord.gg/XU7DQmpqk
- Localized versions of the hub exist at `/learn-harness-engineering/<locale>/projects/` for 14 locales (zh, zh-TW, ja, es, fr, de, tr, ar, vi, ko, uz, ru, pt-BR, uk). ^[inferred from relative links]
