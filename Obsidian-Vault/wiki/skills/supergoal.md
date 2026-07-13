---
title: Supergoal
category: skills
tags: [agent-workflows, autonomous-agents, self-healing, phase-planning, coding-agents, goal-command]
aliases: [supergoal skill, /supergoal]
relationships:
  - target: "[[concepts/agent-loop|Agent Loop]]"
    type: implements
  - target: "[[concepts/agent-driven-development|Agent-Driven Development]]"
    type: enables
  - target: "[[concepts/plan-then-code-workflow|Plan-Then-Code Workflow]]"
    type: related_to
  - target: "[[entities/claude-code|Claude Code]]"
    type: uses
  - target: "[[entities/codex|Codex]]"
    type: uses
  - target: "[[concepts/agent-memory-knowledge|Agent Memory and Knowledge]]"
    type: extends
  - target: "[[concepts/sub-goal-division|Sub-goal Division]]"
    type: implements
sources:
  - "https://x.com/robertcourson/status/2063739468171874383"
  - "https://github.com/robzilla1738/supergoal"
summary: CLI skill that plans deeply, gets one confirmation, then autonomously builds a task end-to-end across phases with self-healing recovery and memory writeback.
provenance:
  extracted: 0.78
  inferred: 0.17
  ambiguous: 0.05
base_confidence: 0.70
lifecycle: draft
lifecycle_changed: 2026-07-13
tier: supporting
created: 2026-07-13T00:00:00Z
updated: 2026-07-13T00:00:00Z
---

# Supergoal

**Supergoal** is a Claude Code and Codex skill (CLI tool) that plans a software task deeply, then autonomously builds it end-to-end with self-healing failure recovery and per-phase memory writeback. It follows the **plan-then-code** workflow: one `/supergoal` command to generate a complete phased plan, one confirmation, one paste of `/goal`, then the agent works autonomously until the task is done. ^[extracted]

Created by **[[entities/robert-courson|Robert Courson]]** (@robertcourson), it was announced on Twitter on June 8, 2026, and is available at [github.com/robzilla1738/supergoal](https://github.com/robzilla1738/supergoal) under the MIT license. ^[extracted]

At 2026-07-13, the project is at v0.7.0 with 646 GitHub stars. ^[extracted]

## How It Works (7-Stage Pipeline)

Supergoal runs a structured planning pipeline before outputting a ready-to-paste `/goal` command:

| Stage | What Happens |
|---|---|
| 0 | Load memory + detect environment (Claude Code vs. Codex) |
| 1 | Intake — greenfield: walks full category checklist; brownfield: 0–2 clarifying questions |
| 2 | Recon — parallel codebase and environment scan |
| 3 | Risks + best practices |
| 4 | Decompose into N phases (adaptive count, no fixed cap) |
| 5 | Write ROADMAP, STATE, per-phase specs to disk |
| 6 | Self-critique + plan review + revision menu |
| 6.5 | Pre-flight smoke check |
| 7 | Print ready-to-paste `/goal` command |

The user pastes `/goal` once. The agent then runs the **autonomous loop** per phase: read spec → do work → `SUPERGOAL_PHASE_VERIFY` (includes cleanliness grep) → write memory → `SUPERGOAL_PHASE_DONE`. ^[extracted]

## Self-Healing Failure Recovery

Supergoal implements a **3-strike self-healing** model for each acceptance criterion:

1. **First failure** → `FAILURE_PROBE` printed, probe injected as feedback, auto-retry once
2. **Second failure** → `FAILURE_ESCALATE`, writes a focused fix spec, executes inline
3. **Third failure** → `FAILURE_HANDOFF`, marks state BLOCKED, stops

This contrasts with naive agent loops that either retry infinitely or fail silently. ^[extracted]

## Memory Writeback

Each phase ends with a "non-obvious learnings" check. Learnings are saved to the auto-detected memory directory (`~/.claude/projects/*/memory`, `~/.claude/memory`, `$PWD/.claude/memory`, etc.), enabling cross-phase knowledge transfer. ^[extracted] This connects to the broader pattern of **[[concepts/agent-memory-knowledge|Agent Memory and Knowledge]]**.

## Artifacts

Each run produces a namespaced subdirectory under `.supergoal/<task-slug>-<id>/` containing:

- `ROADMAP.md` — overall plan
- `STATE.md` — run state + baseline reference
- `THINKING.md` — reasoning trace
- `PROTOCOL.md` — execution protocol
- `repo-state.sh` — state tracking script
- `context.md` — context summary
- `repo-map.md` — codebase map (brownfield only)
- `applied-memories.md` — memories loaded for this run
- `tools.md` — tool inventory
- `phases/` — per-phase spec files (phase-1.md, phase-2.md, ...) ^[extracted]

## Installation

**Claude Code:**
```
/plugin marketplace add https://github.com/robzilla1738/supergoal.git
/plugin install supergoal@supergoal
/reload-plugins
```

Manual install: clone and copy to `~/.claude/skills/`. ^[extracted]

**Codex CLI:** Clone-and-copy to `~/.codex/skills/` (no plugin marketplace). ^[extracted]

## Skill Internals

```
skills/supergoal/
├── SKILL.md
├── references/
│   ├── planning-depth.md
│   ├── phase-design.md
│   ├── goal-format.md
│   └── repo-state-comparison.md
├── scripts/
│   ├── claim-run.sh
│   ├── detect-env.sh
│   ├── detect-stack.sh
│   ├── summarize-repo.sh
│   ├── repo-state.sh
│   └── validate-phase.sh
└── templates/
    ├── ROADMAP.md
    ├── STATE.md
    ├── phase-goal.txt
    └── PROTOCOL.md
```

## Why One `/goal` (Not a Chain)

`/goal` takes a short end-state condition, not a long task body. One `/goal` covers the whole run; phase work lives in files the agent reads from disk. No character budget, no inter-session chain, no fragility. ^[extracted]

This design contrasts with traditional planning workflows that require re-prompting between each step, and aligns with the broader thesis of **[[concepts/agent-driven-development|Agent-Driven Development]]** where agents handle the majority of the software lifecycle. ^[inferred]

## Community Response

The tweet announcing supergoal received 620 likes, 889 bookmarks, and 58.3K views. Notable reactions:

- **[[entities/wes-sander|Wes Sander]]** (@ucsandman): "using it right now with a dynamic workflow to run a tournament for how I should re-build my mission control for a site" — 1.3K views
- **Mark Morris** (@morrismarkw): "That is the way! I use a mesh with work streams. Slowly working toward full automation. Including self monitoring of health, edge cases, errors and user feedback."
- **[[entities/steipete|Peter Steinberger]]** (@steipete) was quoted in the original tweet: "you shouldn't be prompting coding agents anymore. You should be designing loops that prompt your agents." ^[extracted]

## Open Questions

- How does supergoal's self-healing compare to recovery mechanisms in other agent planning tools like [[entities/devin|Devin]] or [[entities/openhands|OpenHands]]? ^[ambiguous]
- Can the adaptive phase decomposition generalize to non-software tasks (e.g. research, design, ops)? ^[inferred]
- How does the memory writeback interact with the broader wiki memory ecosystem? ^[inferred]

## Related

- [[concepts/agent-driven-development|Agent-Driven Development]] — The broader paradigm supergoal implements
- [[concepts/plan-then-code-workflow|Plan-Then-Code Workflow]] — Complementary workflow approach
- [[concepts/agent-loop|Agent Loop]] — The iterative pattern supergoal structures
- [[concepts/sub-goal-division|Sub-goal Division]] — Phase decomposition is a form of sub-goal division
- [[concepts/always-on-ai|Always-On AI]] — The vision of autonomous background work
- [[references/github-robzilla1738-supergoal|GitHub: robzilla1738/supergoal]] — Source repository
