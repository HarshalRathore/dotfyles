---
title: "Making the Repository the Single Source of Truth — Lecture 03, Learn Harness Engineering (Walking Labs)"
category: references
type: reference
tags: [harness-engineering, agent-harness, repository, system-of-record, context-engineering]
sources:
  - "https://walkinglabs.github.io/learn-harness-engineering/en/lectures/lecture-03-why-the-repository-must-become-the-system-of-record/"
source_url: "https://walkinglabs.github.io/learn-harness-engineering/en/lectures/lecture-03-why-the-repository-must-become-the-system-of-record/"
created: "2026-08-13"
updated: "2026-08-13"
summary: "Lecture 03: the repo is the agent's single source of truth — knowledge visibility gap, fresh-session test, map-drawing principles, ACID agent state, and drift when decisions live in chat/trackers."
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

# Making the Repository the Single Source of Truth — Lecture 03 (Learn Harness Engineering)

> [!tldr] An agent has only three input sources: prompts/task descriptions, repository file contents, and tool execution output. Slack, Jira, Confluence, and senior engineers' heads are invisible to it — so the repository must become the system of record. The lecture gives the map metaphor (knowledge visibility gap, fresh session test, discovery cost, knowledge decay rate) and an ACID framework for agent state, backed by a 30-microservice e-commerce transformation story.

**Course:** Learn Harness Engineering (Walking Labs), Lecture 03. No named author on the page. ^[ambiguous] Companions: OpenAI's Harness Engineering post, Anthropic's Effective Harnesses for Long-Running Agents.

## Overview

Lecture 02 established "the repo IS the spec"; this lecture operationalizes it: *why* the repo must be the single source of truth (agent input channels), *what* belongs in it (the map), *how* to keep the map good (four principles + concrete repo structure), and *how* to manage agent state so the map stays authoritative (ACID analogy). The framing throughout is "give the agent a map that's good enough" — drawing the map properly is cheaper than paying for the agent's guessing. ^[extracted]

## Key Points

### Why the repo is the truth: agent input channels vs human input channels

- A human can ask a colleague, search chat logs, dig through documentation, or corner someone in the break room. An agent cannot "go ask someone" — it has exactly **three sources of input**: system prompts and task descriptions, file contents from the repository, and tool execution output. ^[extracted]
- Slack history, Jira tickets, Confluence pages, and hallway decisions are all invisible to the agent. "Information that's not in the repository simply does not exist." ^[extracted]
- OpenAI's harness engineering article states this as the **"repo as spec"** principle — the repository itself is the highest-authority specification document. ^[extracted]
- Anthropic's long-running agents documentation: **persistent state is a necessary condition for long-task continuity**, and cross-session knowledge recoverability directly determines task success rates. The repo is the only stable, reliably accessible storage the agent has. ^[extracted]
- "This isn't a 'write more documentation' problem — it's a 'put decision information in the right place' problem." A 50-line `ARCHITECTURE.md` beside `src/api/` beats a 500-page Confluence design doc nobody maintains; **proximity matters more than length**. ^[extracted]

### What belongs on the map (core concepts)

- **Knowledge Visibility Gap** — the proportion of total project knowledge NOT in the repository. Estimate it by counting implicit project knowledge in people's heads vs what made it into the repo; the difference is the gap. Bigger gap → higher agent failure rate. ^[extracted]
- **System of Record** — the repo as the authoritative source for project decisions, architecture constraints, execution state, and verification standards. "The repo has the final say — nowhere else counts." The lecture's anecdote: if "this road is closed" only lives in Old Zhang's head, you must ask Old Zhang every time; write it in the repo and nobody has to ask. ^[extracted]
- **Fresh Session Test** — open a brand-new agent session with only repo contents and ask five questions: What is this system? How is it organized? How do I run it? How do I verify it? What's the current progress? How many the agent answers = how complete the map is. ^[extracted]
- **Discovery Cost** — the context budget an agent burns to find one key piece of information. The more hidden the info, the less budget remains for the actual task; critical information belongs where the agent sees it first, not ten directory levels deep. ^[extracted]
- **Knowledge Decay Rate** — the proportion of knowledge entries that go stale per unit of time. "Worse than no documentation at all is documentation that's out of date." ^[extracted]
- **ACID Analogy** — database transaction principles (Atomicity, Consistency, Isolation, Durability) applied to agent state management (expanded below). ^[extracted]

### How to draw a good map (keeping repo and reality in sync)

- **Principle 1 — Knowledge lives next to code.** A rule about API endpoint authentication belongs beside the API code, not in a giant global document. A short doc per module directory (responsibilities, interfaces, special constraints) makes the module directory itself a natural index — "when the agent reaches the code, it also reaches the constraints, no searching required." ^[extracted]
- **Principle 2 — Standardized entry file.** `AGENTS.md` (or `CLAUDE.md`) is the agent's "landing page" — it must let the agent quickly answer: What is this project? How do I run it? How do I verify it? 50–100 lines is enough; it need not contain everything. ^[extracted]
- **Principle 3 — Minimal but complete.** Every piece of knowledge needs a clear use case — if removing a rule doesn't affect decision quality, it shouldn't exist — but every fresh-session-test question must have an answer. An ongoing balance, not a one-time setup. ^[extracted]
- **Principle 4 — Update with code.** Bind knowledge updates to code changes: architecture docs live in their module directories so code edits surface the doc, and CI can remind after code changes whether docs need updating. ^[extracted]
- **Concrete structure:** root `AGENTS.md` (overview, run commands, hard constraints), `src/api/ARCHITECTURE.md`, `src/db/CONSTRAINTS.md`, `PROGRESS.md` (done / in-progress / blocked), and a `Makefile` with standardized commands (`setup`, `test`, `lint`, `check`). ^[extracted]

### Managing agent state with ACID principles

- **Atomicity** — each logical operation ("add new endpoint and update tests") gets one git commit; on mid-way failure, `git stash` rolls back. All or nothing, no "half done." ^[extracted]
- **Consistency** — define "consistent state" verification predicates (all tests pass, lint reports zero errors); the agent runs verification after each operation and inconsistent intermediate states are never committed. ^[extracted]
- **Isolation** — with multiple concurrent agents, design state files to avoid race conditions: each agent uses its own progress file, or use git branches. Concurrent writes to the same file are a common source of trouble. ^[extracted]
- **Durability** — critical project knowledge lives in git-tracked files; temporary state may stay in session memory, but cross-session knowledge must be written to files. "What's in your head doesn't count — only what's written down counts." ^[extracted]

### Consequences of drift: the transformation story

- A team maintained an e-commerce platform with ~30 microservices. Architecture decisions (inter-service communication protocols, data consistency strategies, API versioning rules) were scattered across Confluence (partially outdated), Slack (hard to search), senior engineers' heads (not scalable), and sporadic code comments (not systematic). ^[extracted]
- After introducing AI agents, **70% of tasks required human intervention**; nearly every failure involved the agent violating an implicit constraint that "everyone knows but nobody ever wrote down." The agent had no way to know what it didn't know. ^[extracted]
- Transformation: root `AGENTS.md` (overview, tech stack versions, global hard constraints), `ARCHITECTURE.md` per microservice directory, a centralized `CONSTRAINTS.md` using explicit **MUST / MUST NOT** language, and `PROGRESS.md` per service. ^[extracted]
- After transformation, the same agent answered all key project questions on a fresh session and task completion quality improved significantly. ^[extracted]

### Key takeaways

- Knowledge not in the repo doesn't exist for the agent; putting decision information in the repository is **the most fundamental harness investment**. ^[extracted]
- Use the fresh session test to evaluate repo quality; where the map is blank the agent guesses — wrong guesses become bugs, excessive guessing wastes context, and every new session guesses all over again. The cost of guessing is always far higher than the cost of drawing the map properly. ^[extracted]
- Knowledge should be near code, minimal but complete, and updated together with code. ^[extracted]
- Use ACID principles for agent state: atomic commits, consistency verification, concurrency isolation, durable critical knowledge. ^[extracted]
- **Knowledge decay is the biggest enemy** — out-of-date documentation is more dangerous than none: it sends the agent in the wrong direction while the agent thinks it's on the right track. ^[extracted]

## Concepts

- [[concepts/repository-as-system-of-record|Repository as System of Record]] — the wiki's concept page distilled from this lecture
- [[concepts/agents-md|AGENTS.md]] — the standardized entry file; the agent's "landing page"
- [[concepts/ai-harness|AI Harness]] — the repo-as-spec claim merges into the harness concept (see also lecture 02)
- [[concepts/context-engineering|Context Engineering]] — the map/visibility framing is a context-delivery strategy
- [[concepts/agent-memory|Agent Memory]] — durability: only what's written down counts
- [[concepts/agents-should-use-a-filesystem|Agents Should Use a File System]] — the repo as the agent's state representation
- [[concepts/loop-engineering|Loop Engineering]] — verification predicates (ACID consistency) close the loop
- [[concepts/agent-environment|Agent Environment]] — the repo as the stable, reliably accessible environment

## Entities

- [[entities/openai|OpenAI]] — "repo as spec" principle; harness-engineering article in Further Reading
- [[entities/anthropic|Anthropic]] — long-running-agents docs: persistent state as necessary condition for long-task continuity
- [[entities/codex|Codex]] — the OpenAI coding agent the course's harness engineering is framed around (per course description) ^[inferred]
- [[entities/claude-code|Claude Code]] — CLAUDE.md as the standardized entry file example
- Walking Labs (course publisher) has no entity page — listed as a dangling target in the ingest report.

## Open Questions

- The lecture asserts "the cost of guessing is always far higher than the cost of drawing the map" — no quantification is offered; under what conditions does map-maintenance cost exceed guessing cost? ^[inferred]
- The 70%-intervention pre-transformation number and "significantly improved" post-transformation outcome are anecdotal, single-case; no metrics or timeframes given. ^[ambiguous]
- Knowledge decay rate is defined but no measurement method or remediation cadence is specified beyond "CI can remind you." ^[inferred]
- The fresh session test's five questions are agent-agnostic — do different agents (context-window sizes, retrieval tools) need different question sets? ^[inferred]
- The lecture page carries no named author; authorship and publication date of the course itself are unrecorded. ^[ambiguous]

## Related

- [[references/harness-lecture-02-what-a-harness-actually-is|What a Harness Actually Is — Lecture 02]] — establishes "the repo IS the spec"; this lecture operationalizes it
- [[references/harness-lecture-01-why-capable-agents-still-fail|Why Capable Agents Still Fail — Lecture 01]] — harness quality as the reliability lever
- [[concepts/repo-snapshot-pattern|Repository Snapshot Pattern]] — environment-side complement: snapshot/reload/rollback repo state for agent runs
- [[concepts/agent-code-editor|Agent Code Editor]] — the agent's file contents input channel in practice
