---
title: "Learn Harness Engineering — Walking Labs (Course Landing)"
category: misc
tags: [harness-engineering, coding-agents, agent-harness, loop-engineering]
aliases: [learn harness engineering, walking labs harness course]
sources:
  - https://walkinglabs.github.io/learn-harness-engineering/en/
summary: "Course landing for Learn Harness Engineering by Walking Labs: 14 lectures on AI-coding-agent harnesses, projects, and copy-ready templates, grounded in OpenAI/Anthropic harness references."
affinity: {}
promotion_status: misc
stub: false
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-08-13
tier: supporting
created: 2026-08-13T16:30:00Z
updated: 2026-08-13T16:30:00Z
---

# Learn Harness Engineering

> [!tldr] A free course by [[entities/walkinglabs|Walking Labs]] on the engineering of AI coding agents: a harness does not "make the model smarter" — it establishes a closed-loop working system (clear objective → initialization → run → feedback → verify → cleanup/handoff) that makes agentic tools like Codex and Claude Code reliable.

**Publisher:** [[entities/walkinglabs|Walking Labs]] (GitHub Pages site, `walkinglabs.github.io`). **URL:** https://walkinglabs.github.io/learn-harness-engineering/en/ · **License:** free to read; repo at github.com/walkinglabs/learn-harness-engineering ^[extracted]

## What it is

Learn Harness Engineering is a course dedicated to the engineering of AI coding agents, synthesizing "the most advanced Harness Engineering theories and practices in the industry." Through systematic **environment design, state management, verification, and control systems**, it teaches how to make agentic coding tools like [[entities/codex|Codex]] and [[entities/claude-code|Claude Code]] truly reliable — building features, fixing bugs, and automating development tasks by constraining the AI coding assistant with explicit rules and boundaries. ^[extracted]

## Core references

The course is grounded in four core references: ^[extracted]

- [[references/openai-harness-engineering|OpenAI: Harness Engineering]] — "Harness engineering: leveraging Codex in an agent-first world" (openai.com/index/harness-engineering)
- [[references/anthropic-effective-harnesses|Anthropic: Effective Harnesses]] — "Effective harnesses for long-running agents" (anthropic.com/engineering/effective-harnesses-for-long-running-agents)
- [[references/anthropic-harness-design|Anthropic: Harness Design]] — "Harness design for long-running application development" (anthropic.com/engineering/harness-design-long-running-apps)
- Awesome Harness Engineering — curated list by Walking Labs (github.com/walkinglabs/awesome-harness-engineering)

## The core mechanism of a harness

The landing page's central claim: **a harness doesn't "make the model smarter"; it establishes a closed-loop working system for the model.** The depicted loop: ^[extracted]

1. **Clear Objective** — `AGENTS.md`
2. **Initialization** — `init.sh`
3. **Run Tasks** — the AI agent
4. **Runtime Feedback** — CLI / logs
5. **Verify & QA** — test suite
6. **Cleanup & Handoff** — `claude-progress.md`

Failures loop back through "Encounter Issues → Auto-fix → Code Completed" until verification passes. ^[extracted]

## What you will learn

- Constrain agent behavior with explicit rules and boundaries. ^[extracted]
- Maintain context across long-running, multi-session tasks. ^[extracted]
- Stop agents from declaring victory too early. ^[extracted]
- Verify work using full-pipeline tests and self-reflection. ^[extracted]
- Make runtime observable and debuggable. ^[extracted]

## Course structure

The course is divided into three learning paths: theoretical **Lectures**, hands-on **Projects** (e.g. Project 01: *Baseline vs Minimal Harness*), and a copy-ready **Resource Library** of templates (`AGENTS.md`, `feature_list.json`, `claude-progress.md`) usable in your own repositories. ^[extracted] The site also exposes a **Skills** section and a "Try Harness" link into the templates. ^[inferred from site navigation]

## Lectures (14)

The course's 14 lectures. One-line glosses below are ^[inferred] from the lecture titles; the linked per-lecture pages (created by parallel ingest of this course) are the authoritative summaries.

1. [[references/harness-lecture-01-why-capable-agents-still-fail|Lecture 1: Why Capable Agents Still Fail]] — why strong models still fail without a harness
2. [[references/harness-lecture-02-what-a-harness-actually-is|Lecture 2: What a Harness Actually Is]] — defining the harness layer
3. [[references/harness-lecture-03-repository-system-of-record|Lecture 3: Repository as System of Record]] — the repo becomes the source of truth
4. [[references/harness-lecture-04-giant-instruction-file-fails|Lecture 4: Why One Giant Instruction File Fails]] — why a single mega-instruction file breaks down
5. [[references/harness-lecture-05-long-running-tasks-continuity|Lecture 5: Long-Running Tasks Lose Continuity]] — context/state loss across sessions
6. [[references/harness-lecture-06-initialization-phase|Lecture 6: Initialization Phase]] — why initialization needs its own phase
7. [[references/harness-lecture-07-overreach-under-finish|Lecture 7: Overreach and Under-Finish]] — agents overshooting scope and leaving work unfinished
8. [[references/harness-lecture-08-feature-lists-primitives|Lecture 8: Feature Lists as Primitives]] — `feature_list.json` as a harness primitive
9. [[references/harness-lecture-09-declare-victory-too-early|Lecture 9: Declaring Victory Too Early]] — premature "done" claims
10. [[references/harness-lecture-10-e2e-testing|Lecture 10: E2E Testing]] — why end-to-end testing changes results
11. [[references/harness-lecture-11-observability-in-harness|Lecture 11: Observability in the Harness]] — why observability belongs inside the harness
12. [[references/harness-lecture-12-clean-state|Lecture 12: Clean State]] — why every session must leave a clean state
13. [[references/harness-lecture-13-loop-engineering|Lecture 13: Loop Engineering]] — from manual prompting to autonomous loops
14. [[references/harness-lecture-14-graph-engineering|Lecture 14: Graph Engineering]] — from single loops to graph engineering

## Hubs

- [[references/harness-projects-hub|Projects]] — hands-on practice building a reliable agentic environment from scratch
- [[references/harness-resources-hub|Resources]] — the copy-ready resource library (AGENTS.md, feature_list.json)
- [[references/harness-skills-hub|Skills]] — skills section of the course site

## Concepts

- [[concepts/ai-harness|AI Harness]] — the course is a curriculum for exactly this infrastructure layer
- [[concepts/loop-engineering|Loop Engineering]] — lectures 13–14 are the course's loop → graph trajectory
- [[concepts/context-engineering|Context Engineering]] — AGENTS.md as the objective-setting surface of the loop ^[inferred]
- [[concepts/agents-md|AGENTS.md]] — the harness's clear-objective file in the core mechanism

## Entities

- [[entities/walkinglabs|Walking Labs]] — publisher of the course
- [[entities/openai|OpenAI]] — author of the referenced Codex harness-engineering article
- [[entities/anthropic|Anthropic]] — author of the two referenced harness articles
- [[entities/claude-code|Claude Code]] — one of the agentic tools the course targets
- [[entities/codex|Codex]] — the other agentic tool the course targets

## Open Questions

- The landing page names "Projects" and "Resource Library" — whether the Skills section is a fourth track or a sub-part of the library is unclear from the landing page alone. ^[ambiguous]
- Team/org details of Walking Labs are not stated on the landing page; see [[entities/walkinglabs|Walking Labs]]. ^[ambiguous]

## Related

- The course is offered in 14 languages (zh, zh-TW, ja, es, fr, de, tr, ar, vi, ko, uz, ru, pt-BR, uk) via locale sub-paths. ^[inferred from site navigation]
- Community: Discord server linked from the site footer (discord.gg/XU7DQmpqk). ^[extracted]
