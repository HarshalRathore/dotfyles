---
title: "Skills — Learn Harness Engineering (Walking Labs)"
category: references
type: reference
tags: [harness-engineering, agent-skills, harness-creator, skill-engineering, verification]
sources:
  - "https://walkinglabs.github.io/learn-harness-engineering/en/skills/"
source_url: "https://walkinglabs.github.io/learn-harness-engineering/en/skills/"
created: "2026-08-13"
updated: "2026-08-13"
summary: "Skills hub of Learn Harness Engineering: the bundled harness-creator agent skill — five harness subsystems, 7 reference patterns, 5 templates, scripts, built via Anthropic skill-creator."
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

# Skills — Learn Harness Engineering (Walking Labs)

> [!tldr] The course's Skills directory ships one bundled agent skill: **harness-creator**, a production-grade harness-engineering skill for AI coding agents. It creates, assesses, and improves the five core harness subsystems — instructions, state, verification, scope, and session lifecycle — and packages the course's loop artifacts (`AGENTS.md`, `feature_list.json`, `init.sh`, `progress.md`, `session-handoff.md`) as ready-to-use templates. Skills are defined as self-contained prompt templates any coding agent (Claude Code, Codex, Cursor, Windsurf) can load; harness-creator itself was built with Anthropic's official skill-creator meta-skill methodology.

**Course:** Learn Harness Engineering (Walking Labs), Skills section — https://walkinglabs.github.io/learn-harness-engineering/en/skills/. No named author on the page. ^[ambiguous] The skill ships from the course repository at `skills/harness-creator/`. ^[extracted]

## Overview

The Skills directory contains the bundled AI agent skills that ship with the course. The page defines a **skill** as a self-contained prompt template that AI coding agents — Claude Code, Codex, Cursor, Windsurf, etc. — can load to perform specialized tasks. ^[extracted] The page currently documents a single skill, `harness-creator`, which operationalizes the course's own curriculum: everything the 14 lectures teach (objective-setting instructions, feature lists, verification, continuity, clean state) is packaged as an installable, assessable skill. ^[inferred] This makes the Skills directory the copy-ready, executable form of the course's [[concepts/ai-harness|AI Harness]] layer. ^[inferred]

## Key Points

### The five core harness subsystems

`harness-creator` helps create, assess, and improve five core harness subsystems: **instructions, state, verification, scope, and session lifecycle**. ^[extracted] Its four capability areas: ^[extracted]

- **Create harnesses from scratch** — `AGENTS.md`, feature lists, verification workflows
- **Improve existing harnesses** — five-subsystem assessment with prioritized improvements
- **Design session continuity** — memory persistence, progress tracking, handoff procedures
- **Apply production patterns** — memory, context engineering, tool safety, multi-agent coordination

### Seven reference patterns

| Pattern | When to Use |
|---|---|
| Memory Persistence | Agent forgets between sessions |
| Skill Runtime | Package reusable workflows as skills |
| Context Engineering | Context budget management, JIT loading |
| Tool Registry | Tool safety, concurrency control |
| Multi-Agent Coordination | Parallelism, specialization workflows |
| Lifecycle & Bootstrap | Hooks, background tasks, initialization |
| Gotchas | 15 non-obvious failure modes with fixes |

All seven patterns are extracted; the page gives no detail on pattern contents beyond the "when to use" column. ^[extracted]

### Five bundled templates

- `agents.md` — AGENTS.md scaffold with working rules
- `feature-list.json` — JSON Schema + example feature list
- `init.sh` — standard initialization script
- `progress.md` — session progress log template
- `session-handoff.md` — session handoff template

The skill also includes plain Node.js scripts for scaffolding, validation, HTML assessment reports, and structural benchmark reports. ^[extracted]

### How harness-creator was built

`harness-creator` was developed using the **skill-creator methodology** — Anthropic's official meta-skill for creating, testing, and iterating on agent skills. It provides a structured workflow (draft → test → evaluate → iterate) with built-in eval runners, graders, and a benchmark viewer. ^[extracted]

## Skill List

The skills/techniques the course ships, and how each maps to the lectures (mappings ^[inferred] from lecture titles; the lecture pages are authoritative):

| Skill / technique (from hub) | Lecture mapping |
|---|---|
| Instructions subsystem (`agents.md` template) | [[references/harness-lecture-04-giant-instruction-file-fails|Lecture 4: Why One Giant Instruction File Fails]]; AGENTS.md as objective ([[references/harness-lecture-03-repository-system-of-record|Lecture 3]]) |
| State subsystem (Memory Persistence pattern, `progress.md`) | [[references/harness-lecture-05-long-running-tasks-continuity|Lecture 5: Long-Running Tasks Lose Continuity]] |
| Verification subsystem (`feature-list.json`, verification workflows) | [[references/harness-lecture-08-feature-lists-primitives|Lecture 8: Feature Lists as Primitives]]; [[references/harness-lecture-09-declare-victory-too-early|Lecture 9: Declaring Victory Too Early]]; [[references/harness-lecture-10-e2e-testing|Lecture 10: E2E Testing]] |
| Scope subsystem | [[references/harness-lecture-07-overreach-under-finish|Lecture 7: Overreach and Under-Finish]] |
| Session lifecycle (`init.sh`, `session-handoff.md`, clean state) | [[references/harness-lecture-06-initialization-phase|Lecture 6: Initialization Phase]]; [[references/harness-lecture-12-clean-state|Lecture 12: Clean State]] |
| Context Engineering pattern (budget, JIT loading) | Loop/graph engineering arc ([[references/harness-lecture-13-loop-engineering|Lecture 13]], [[references/harness-lecture-14-graph-engineering|Lecture 14]]) |
| Multi-Agent Coordination pattern | Graph engineering ([[references/harness-lecture-14-graph-engineering|Lecture 14]]) |
| Skill Runtime pattern (skills as packaged workflows) | The Skills directory itself — the executable form of the course templates |

## Concepts

- [[concepts/ai-harness|AI Harness]] — the infrastructure layer the skill creates/assesses; the course is a curriculum for it
- [[concepts/agents-md|AGENTS.md]] — the instructions subsystem's objective file; the `agents.md` template scaffolds it
- [[concepts/loop-engineering|Loop Engineering]] — the closed loop the five subsystems make reliable
- [[concepts/repository-as-system-of-record|Repository as System of Record]] — instructions and templates live in the repo as the source of truth
- [[concepts/context-engineering|Context Engineering]] — a bundled reference pattern (context budget management, JIT loading)
- [[concepts/evolution-of-verification|Evolution of Verification]] — the verification subsystem sits on this arc ^[inferred]

## Entities

- [[entities/walkinglabs|Walking Labs]] — publisher of the course and the `skills/harness-creator/` repository files
- [[entities/anthropic|Anthropic]] — author of the skill-creator meta-skill and the Claude Code skills docs
- [[entities/claude-code|Claude Code]] — target agent; install by copying `harness-creator/` into the project skill path or pointing at its SKILL.md
- [[entities/codex|Codex]] — target agent named on the page; Cursor and Windsurf are named too but have no entity pages yet ^[inferred]

## Open Questions

- Whether the Skills directory will grow beyond the single documented skill (`harness-creator`) is not stated — no per-lecture skills are listed. ^[ambiguous]
- The "Gotchas" pattern promises 15 non-obvious failure modes, but the page does not enumerate them. ^[ambiguous]
- The install path (`npx skills add walkinglabs/learn-harness-engineering --skill harness-creator`) implies a `skills` CLI/registry, which the page does not explain. ^[ambiguous]
- No clock-in/clock-out style session-routine technique is documented on this page — session continuity is instead covered by memory persistence, progress tracking, and handoff templates. ^[ambiguous]

## Related

- [[misc/web-walkinglabs-github-io-learn-harness-engineering-en|Course Landing]] — the course overview, lectures, and hub index
- [[references/harness-projects-hub|Projects Hub]] — hands-on practice track of the same course
- [[references/harness-resources-hub|Resources Hub]] — the copy-ready resource library (AGENTS.md, feature_list.json, claude-progress.md)

### Further reading (outbound links from the Skills page)

- skill files in the course repo — https://github.com/walkinglabs/learn-harness-engineering/tree/main/skills/harness-creator
- skill-creator source (Anthropic) — https://github.com/anthropics/skills/tree/main/skills/skill-creator
- Claude Code skills docs — https://github.com/anthropics/claude-code/tree/main/plugins/plugin-dev/skills
