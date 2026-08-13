---
title: "English Resource Library — Resources Hub, Learn Harness Engineering (Walking Labs)"
category: references
type: reference
tags: [harness-engineering, templates, coding-agents, agent-workflow, context-engineering]
sources:
  - "https://walkinglabs.github.io/learn-harness-engineering/en/resources/"
source_url: "https://walkinglabs.github.io/learn-harness-engineering/en/resources/"
created: "2026-08-13"
updated: "2026-08-13"
summary: "Resources hub: the course's copy-ready library — AGENTS.md/CLAUDE.md, feature_list.json, claude-progress.md, init.sh, handoff, checklist, rubric — for stable multi-session agent work."
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

# English Resource Library — Resources Hub (Learn Harness Engineering)

> [!tldr] The Resources section of Learn Harness Engineering turns the course's methods into **copy-ready templates and compact references** you can drop into a real repository so that Codex, Claude Code, or another coding agent can work across multiple sessions without re-deriving setup, status, and scope each time. The recommended minimal pack is four files — `AGENTS.md` or `CLAUDE.md`, `feature_list.json`, `claude-progress.md`, and `init.sh` — which the course says is "enough to make most agent workflows noticeably more stable." A larger `openai-advanced/` pack (repo skeleton, system-of-record docs, agent-first governance templates) exists for longer-running, multi-domain systems.

**Course:** Learn Harness Engineering (Walking Labs), Resources section — "English Resource Library". No named author on the page. ^[ambiguous] Course repo: github.com/walkinglabs/learn-harness-engineering, with resources under `docs/en/resources/`. ^[inferred from link paths]

## Overview

The hub page is the entry point to the course's **Resource Library**: a folder of templates and compact references, explicitly framed as usable in a *real* repository rather than as course exercises. Its stated purpose is to stop coding agents from constantly re-deriving setup, status, and scope across sessions — the failure mode the course's lectures analyze in depth. The page presents a staged adoption path: a minimal four-file pack first, then a set of "then add" files for handoff/clean-exit/rubric needs, and finally an advanced pack derived from OpenAI's "Harness engineering" post for systems that outgrow the minimal setup. ^[extracted]

## Key Points

### When to use it

Start here when you want a coding agent to work across multiple sessions without re-deriving setup, status, and scope. ^[extracted] Especially useful when: ^[extracted]

- work spans multiple sessions
- features are numerous and easy to leave half-finished
- agents tend to declare victory too early
- startup steps are rediscovered every time

### The recommended minimal pack

Four files are enough to make most agent workflows noticeably more stable: ^[extracted]

1. **`AGENTS.md` or `CLAUDE.md`** — root instructions for the agent
2. **`feature_list.json`** — feature state
3. **`claude-progress.md`** — progress log
4. **`init.sh`** — bootstrap script reference

The progress-log filename is a **historical course convention**: `claude-progress.md` is a generic, repository-local session progress log that *any* coding agent can use — but agents only read or update it when their instructions explicitly tell them to do so. ^[extracted]

### Then add

For a fuller setup, add: ^[extracted]

- **`session-handoff.md`** — session handoff
- **`clean-state-checklist.md`** — clean-exit checklist
- **`evaluator-rubric.md`** — evaluator rubric

### The advanced pack

The `openai-advanced/` pack provides the fuller OpenAI-style repository structure from the "Harness engineering" post: advanced repo skeleton, system-of-record docs, and agent-first governance templates. ^[extracted] Move up to it when the repo grows into a longer-running system with multiple domains, active plans, quality scoring, and reliability policies — "instead of stretching the minimal pack too far." ^[extracted]

### Library structure

- `templates/` — templates to copy into a real repo ^[extracted]
- `reference/` — method notes, startup flow, and failure-mode maps ^[extracted]
- `openai-advanced/` — advanced repo skeleton, system-of-record docs, and agent-first governance templates ^[extracted]

## Resource List

| Template / dir | Purpose | Lectures that use it |
|---|---|---|
| `AGENTS.md` / `CLAUDE.md` | Root instructions; the harness's "clear objective" file | Lecture 04 ([[references/harness-lecture-04-giant-instruction-file-fails]]) — sizing the root file; Lecture 03 ([[references/harness-lecture-03-repository-system-of-record]]) — repo as system of record |
| `feature_list.json` | Machine-readable feature state — what "done" means | Lecture 08 ([[references/harness-lecture-08-feature-lists-primitives]]), Lecture 13 ([[references/harness-lecture-13-loop-engineering]]) |
| `claude-progress.md` | Generic repository-local session progress log (historical filename) | Lecture 13 ([[references/harness-lecture-13-loop-engineering]]), Lecture 05 ([[references/harness-lecture-05-long-running-tasks-continuity]]) ^[inferred], Lecture 09 ([[references/harness-lecture-09-declare-victory-too-early]]) ^[inferred] |
| `init.sh` | Bootstrap script; initialization phase | Lecture 06 ([[references/harness-lecture-06-initialization-phase]]), Lecture 05 ([[references/harness-lecture-05-long-running-tasks-continuity]]), Lecture 13 ([[references/harness-lecture-13-loop-engineering]]) |
| `session-handoff.md` | Session handoff state | Lecture 11 ([[references/harness-lecture-11-observability-in-harness]]), Lecture 05 ([[references/harness-lecture-05-long-running-tasks-continuity]]) ^[inferred] |
| `clean-state-checklist.md` | Clean-exit checklist | Lecture 12 ([[references/harness-lecture-12-clean-state]]) ^[inferred] |
| `evaluator-rubric.md` | Evaluator rubric for judging agent output | Lecture 09 ([[references/harness-lecture-09-declare-victory-too-early]]) / Lecture 10 ([[references/harness-lecture-10-e2e-testing]]) ^[inferred] |
| `reference/` | Method notes, startup flow, failure-mode maps | course-wide methodology |
| `openai-advanced/` | Advanced repo skeleton, system-of-record docs, governance templates | Lecture 03 ([[references/harness-lecture-03-repository-system-of-record]]) ^[inferred] |

Lecture-column links are the per-lecture wiki pages created by the parallel course ingest; the template→lecture mapping is mostly ^[inferred] from lecture titles and the template-mention greps of sibling pages (feature_list: L08/L13; claude-progress: L13; init.sh: L05/L06/L13; session-handoff: L11).

## Concepts

- [[concepts/agents-md|AGENTS.md]] — the root-instructions template is the "clear objective" file of the harness loop; the resource library ships copy-ready versions for AGENTS.md and CLAUDE.md conventions
- [[concepts/ai-harness|AI Harness]] — the library operationalizes the harness layer the course teaches: objective, initialization, state, verification, cleanup
- [[concepts/repository-as-system-of-record|Repository as System of Record]] — templates externalize agent state (feature list, progress log) into the repo so it becomes the source of truth across sessions
- [[concepts/agent-initialization|Agent Initialization]] — `init.sh` is the bootstrap side of the initialization phase
- [[concepts/context-engineering|Context Engineering]] — the library prevents re-deriving setup/status/scope on every session, i.e. it engineers the agent's startup context
- [[concepts/instruction-budget|Instruction Budget]] — the minimal-pack split (root instructions vs. separate state/progress files) avoids the one-giant-instruction-file failure
- [[concepts/loop-engineering|Loop Engineering]] — the four-file pack stabilizes the closed loop the course describes (objective → init → run → verify → cleanup)

## Entities

- [[entities/walkinglabs|Walking Labs]] — publisher of the course and the resource library
- [[entities/openai|OpenAI]] — the `openai-advanced/` pack derives from OpenAI's "Harness engineering" post
- [[entities/anthropic|Anthropic]] — the `CLAUDE.md` naming and effective-harnesses guidance the templates encode ^[inferred]
- [[entities/claude-code|Claude Code]] — one of the coding agents the library targets (CLAUDE.md root file)
- [[entities/codex|Codex]] — the other coding agent the library targets (AGENTS.md root file)

## Open Questions

- The hub page links `templates/` in detail but only names the `reference/` directory (method notes, startup flow, failure-mode maps) without enumerating its files — whether `reference/` is meant to be read as pages or copied like templates is unclear. ^[ambiguous]
- Which lecture(s) introduced the `claude-progress.md` convention and why the Claude-specific filename stuck despite being agent-agnostic is not stated on this page. ^[inferred]
- Whether `evaluator-rubric.md` maps to a specific lecture's rubric (e.g. Lecture 09's done-evidence or Lecture 10's E2E verification) is not stated here. ^[inferred]
- How the `openai-advanced/` pack differs file-by-file from the minimal pack is not summarized on this page (the pack's own index would say). ^[ambiguous]

## Related

- Course landing: [[misc/web-walkinglabs-github-io-learn-harness-engineering-en|Learn Harness Engineering (course landing)]] — lists this hub under "Hubs"
- Sibling hubs: [[references/harness-projects-hub|Projects Hub]], [[references/harness-skills-hub|Skills Hub]]
- Core references of the course (no wiki pages yet; linked from the course landing page): OpenAI "Harness engineering" — openai.com/index/harness-engineering; Anthropic "Effective harnesses" — anthropic.com/engineering/effective-harnesses-for-long-running-agents
- Template-consuming lectures: [[references/harness-lecture-08-feature-lists-primitives|Lecture 08: Feature Lists as Primitives]], [[references/harness-lecture-06-initialization-phase|Lecture 06: Initialization Phase]], [[references/harness-lecture-12-clean-state|Lecture 12: Clean State]], [[references/harness-lecture-05-long-running-tasks-continuity|Lecture 05: Long-Running Tasks Lose Continuity]], [[references/harness-lecture-09-declare-victory-too-early|Lecture 09: Declaring Victory Too Early]], [[references/harness-lecture-04-giant-instruction-file-fails|Lecture 04: Why One Giant Instruction File Fails]], [[references/harness-lecture-13-loop-engineering|Lecture 13: Loop Engineering]], [[references/harness-lecture-11-observability-in-harness|Lecture 11: Observability in the Harness]]

### Further reading (outbound links from the page)

Base: https://walkinglabs.github.io/learn-harness-engineering/en/resources/ — all links below are relative paths on the page (resolved forms ^[inferred from relative link]):

- Templates index — https://github.com/walkinglabs/learn-harness-engineering/blob/main/docs/en/resources/templates/index.md (recorded; NOT fetched — depth 1)
- templates/AGENTS.md — https://walkinglabs.github.io/learn-harness-engineering/en/resources/templates/AGENTS.md
- templates/CLAUDE.md — https://walkinglabs.github.io/learn-harness-engineering/en/resources/templates/CLAUDE.md
- templates/feature_list.json — https://walkinglabs.github.io/learn-harness-engineering/en/resources/templates/feature_list.json
- templates/claude-progress.md — https://walkinglabs.github.io/learn-harness-engineering/en/resources/templates/claude-progress.md
- templates/init.sh — source-tree reference `docs/en/resources/templates/init.sh`; GitHub: https://github.com/walkinglabs/learn-harness-engineering/blob/main/docs/en/resources/templates/init.sh
- templates/session-handoff.md — https://walkinglabs.github.io/learn-harness-engineering/en/resources/templates/session-handoff.md
- templates/clean-state-checklist.md — https://walkinglabs.github.io/learn-harness-engineering/en/resources/templates/clean-state-checklist.md
- templates/evaluator-rubric.md — https://walkinglabs.github.io/learn-harness-engineering/en/resources/templates/evaluator-rubric.md
- openai-advanced/index.md — https://walkinglabs.github.io/learn-harness-engineering/en/resources/openai-advanced/index.md
- templates/ (directory) and reference/ (directory) — directory listings linked from the Library Structure section
