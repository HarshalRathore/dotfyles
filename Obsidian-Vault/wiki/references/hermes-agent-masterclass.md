---
title: "Hermes Agent Masterclass — Akshay Pachaar"
category: references
tags: [hermes-agent, nous-research, agent-memory, self-evolving-skills, ge-pa, agent-architecture, cron]
aliases: [Hermes Agent Masterclass, Akshay Pachaar Hermes Guide]
sources:
  - https://x.com/akshay_pachaar/status/2054564519280804028
summary: >-
  Comprehensive guide to Nous Research's Hermes Agent: three-tier memory, self-evolving skills, GEPA optimization, and multi-agent profiles.
provenance:
  extracted: 0.85
  inferred: 0.15
  ambiguous: 0.00
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-13
tier: supporting
created: 2026-07-13T00:00:00Z
updated: 2026-07-13T00:00:00Z
relationships:
  - target: "[[concepts/agent-memory-knowledge|Agent Memory and Knowledge]]"
    type: extends
  - target: "[[concepts/agent-loop|Agent Loop]]"
    type: implements
  - target: "[[concepts/openclaw|OpenClaw]]"
    type: related_to
---

# Hermes Agent Masterclass — Akshay Pachaar

**Hermes Agent** by [[entities/nous-research|Nous Research]] is an open-source persistent agent framework that crossed 90,000 GitHub stars in two months. It uniquely combines three capabilities usually found in separate systems: runtime skill learning, persistent multi-layer memory, and an optional offline weight-training pipeline.

This masterclass was published by [[entities/akshay-pachaar|Akshay Pachaar]] (@akshay_pachaar) on May 13, 2026 as a comprehensive walkthrough of Hermes's architecture, memory system, and deployment patterns.

## Architectural Distinction

Hermes is architecturally framed as: **"a gateway around a learning agent."**[^1] The closest comparison in the open ecosystem is [[concepts/openclaw|OpenClaw]], which is described as: **"an agent around a messaging gateway."** Both are persistent and messaging-friendly but make opposite design choices.

Everything flows through a single `AIAgent` class in a `run_agent.py` script. CLI, messaging gateway, batch runner, and IDE integration are all entry points into the same core agent.

The core loop is ReAct-style and synchronous: build the system prompt → check if compression is needed → make an interruptible API call → execute tool calls → loop again.

Notable implementation details:
- Commands can execute in six environments: Local terminal, Docker, SSH, Modal, Daytona, or Singularity — same code, just a config change
- Works with almost any model via a translation layer that routes any provider through one of three API formats
- Hard cap of 90 turns per task to prevent credit burn from runaway loops ^[extracted]

## Three-Tier Memory System

Hermes implements a three-tier memory architecture designed for different speed and depth requirements:

### Tier 1: Two Markdown Files

At the core are two on-disk files injected as a frozen snapshot at session start:

- **`MEMORY.md`** (2,200 char max) — agent's notes about environment, project conventions, tool quirks, lessons learned
- **`USER.md`** (1,375 char max) — user profile: name, communication preferences, skill level, things to avoid

Changes persist to disk immediately mid-session but only appear in the system prompt on the next session. When memory fills to ~80% capacity, the agent consolidates: merging related entries into denser, more information-packed versions. Only useful information survives.

This maps to [[concepts/agent-memory-knowledge|Agent Memory and Knowledge]] but with a specific two-file implementation and automatic compaction strategy.

### Tier 2: Full-Text Session Search

Every conversation (CLI and messaging) is stored in SQLite with FTS5. The agent can search weeks of past conversations on demand. Critical facts live in Tier 1 memory; everything else is searchable on demand.

### Tier 3: External Memory Providers

Hermes ships with 8 pluggable external memory providers that run alongside built-in memory (never replacing it). Only one can be active at a time.

## Self-Evolving Skills

Skills are Markdown files with YAML frontmatter that function as the agent's **procedural memory** — not what it knows, but how it does things.

### Skill Anatomy

```markdown
---
name: k8s-pod-debug
description: >
  Activate for crashing pods, CrashLoopBackOff,
  "why is my pod restarting", container failures.
version: 1.2.0
author: agent
platforms: [linux, macos]
---

## Procedure
1. Get pod status → check events → pull logs
2. Look for OOMKilled, ImagePullBackOff, config errors

## Pitfalls
- Forgetting --previous flag on restarted containers

## Verification
- Pod stays Running with 0 restarts for 5+ minutes
```

Progressive disclosure keeps token costs low:
- **Level 0:** Agent sees names + descriptions only (~3k tokens for full catalog)
- **Level 1:** Full skill content loaded on demand
- **Level 2:** Drill into specific reference files within a skill

### Self-Improvement Loop

The agent creates its own skills autonomously via the `skill_manage` tool. Triggers:
- Completes a complex task (5+ tool calls)
- Hits errors or dead ends and finds the working path
- User corrects its approach
- Discovers a non-trivial workflow

The loop: problem → trial and error → saves successful approach as `SKILL.md` → next time loads the skill instead of rediscovering from scratch.

### The Curator: Garbage Collection

Without maintenance, agent-created skills pile up. The Curator is a background system that runs on an inactivity check (not a cron daemon): when 7 days have passed since last run and the agent has been idle for 2+ hours, a background fork spins up with its own prompt cache.

Two phases:
1. **Automatic transitions** (deterministic, no LLM): Skills unused 30 days → stale. Unused 90 days → archived.
2. **LLM review** (up to 8 iterations): A forked agent surveys all skills and decides per-skill: keep, patch, consolidate, or archive.

Constraints:
- Never touches bundled or hub-installed skills — only agent-authored ones
- Never auto-deletes; worst case is archival to `~/.hermes/skills/.archive/` (recoverable with one command)

## GEPA: Offline Evolution with Execution Traces

**GEPA** (Genetic-Pareto Prompt Evolution) is not built into the Hermes runtime. It lives in a companion repository (`NousResearch/hermes-agent-self-evolution`) as an offline optimization pipeline. Published as an ICLR 2026 Oral paper, MIT licensed.

The core insight: instead of asking the agent "did you do well?" (which tends toward self-congratulation), GEPA reads execution traces to understand why things failed, then proposes targeted improvements through evolutionary search.

Pipeline:
1. Read current skill from Hermes repo
2. Generate evaluation dataset (synthetic test cases via Claude Opus, real session history from SQLite, or hand-curated golden sets)
3. Run GEPA optimizer: read traces → understand failures → generate candidate variants
4. Evaluate candidates using LLM-as-judge scoring with rubrics (not binary pass/fail)
5. Apply constraint gates: 100% test suite pass, skills under 15KB, caching compatibility preserved, semantic purpose not drifted
6. Best variant goes out as a PR against the Hermes repo — never a direct commit

Cost: roughly $2–10 per optimization run. No GPU required — everything runs through API calls.

## File Structure: `~/.hermes/`

```
~/.hermes/
├── config.yaml           # Main configuration
├── .env                  # API keys and secrets
├── auth.json             # OAuth provider credentials
├── SOUL.md               # Agent identity (slot #1 in system prompt)
│
├── memories/
│   ├── MEMORY.md         # Persistent agent facts
│   └── USER.md           # User model
│
├── skills/               # All skills (bundled, hub, agent-created)
│   ├── mlops/
│   │   ├── axolotl/
│   │   │   ├── SKILL.md
│   │   │   ├── references/
│   │   │   └── scripts/
│   │   └── vllm/
│   ├── devops/
│   └── .hub/             # Skills Hub state
│
├── sessions/             # Per-platform session metadata
├── state.db              # SQLite session store with FTS5
├── cron/
│   ├── jobs.json         # Scheduled jobs
│   └── output/           # Cron run outputs
│
├── plugins/              # Custom plugins
├── hooks/                # Lifecycle hooks
├── skins/                # CLI themes
└── logs/                 # agent.log, gateway.log, errors.log
```

## Skills Hub

Hermes maintains an official Skills Hub with 687 skills across 18 categories:
- 87 built-in skills
- 79 optional skills (enable on demand)
- 16 from Anthropic
- 505 from LobeHub (broader community contributions)

Custom taps: `hermes skills tap add yourname/your-skills-repo` then `hermes skills install yourname/your-skills-repo/<skill-name>`.

## Multi-Agent Profiles

Each [[concepts/profile-isolation|profile]] is a fully isolated Hermes instance with its own config, memory, skills, sessions, and `SOUL.md`. They share nothing by default.

Three profiles were demonstrated: a designer, a programmer, and a researcher — each with its own Telegram bot and personality.

Cron scheduling uses plain English descriptions converted to scheduled jobs by Hermes's built-in scheduler, not cron expressions.

## Open Questions

- What are the 8 external memory providers shipped with Hermes?
- How does GEPA compare to other offline prompt evolution methods like [[concepts/self-improvement-loop|self-improvement loops]] or [[concepts/evolutionary-prompts|evolutionary prompt methods]]?
- How does the Curator's consolidation strategy compare to memory compaction approaches in [[concepts/agent-memory-knowledge|other agent frameworks]]?

## Related

- [[concepts/openclaw|OpenClaw]] — the closest open ecosystem alternative with opposite architectural philosophy
- [[concepts/agent-memory-knowledge|Agent Memory and Knowledge]] — the broader category this implementation belongs to
- [[concepts/agent-loop|Agent Loop]] — the execution pattern Hermes uses (ReAct-style)
- [[concepts/self-driven-agents|Self-Driven Agents]] — autonomous agent patterns
- [[concepts/stateful-environments|Stateful Environments]] — container isolation pattern relevant to multi-agent setups

[^1]: Framing from the Kilo blog, cited by Akshay Pachaar
