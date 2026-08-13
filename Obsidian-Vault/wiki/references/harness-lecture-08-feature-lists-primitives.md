---
title: "Feature Lists as Harness Primitives — Lecture 08, Learn Harness Engineering (Walking Labs)"
category: references
type: reference
tags: [harness-engineering, agent-harness, coding-agents, verification, context-engineering]
sources:
  - "https://walkinglabs.github.io/learn-harness-engineering/en/lectures/lecture-08-why-feature-lists-are-harness-primitives/"
source_url: "https://walkinglabs.github.io/learn-harness-engineering/en/lectures/lecture-08-why-feature-lists-are-harness-primitives/"
created: "2026-08-13"
updated: "2026-08-13"
summary: "Lecture 08: feature lists are harness primitives, not memos — each item is a (behavior, verification, state) triple in a harness-controlled state machine; the list is the single source of truth."
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

# Feature Lists as Harness Primitives — Lecture 08 (Learn Harness Engineering)

> [!tldr] Agents don't know what "done" means — so the harness must define it. A feature list is not a memo for humans but the foundational data structure of the harness: the scheduler reads it to pick tasks, the verifier reads it to judge completion, and the handoff reporter reads it to write summaries. Each item is a triple (behavior, verification command, state) in a harness-controlled four-state machine; passing verification is the only, irreversible path to done.

**Course:** Learn Harness Engineering (Walking Labs), Lecture 08 — "Use Feature Lists to Constrain What the Agent Does". No named author on the page. ^[ambiguous] Companions: OpenAI's Harness Engineering article, Anthropic's Building Effective Agents.

## Overview

Lecture 08 makes feature lists the load-bearing structure of the harness: they externalize "what done means" into a machine-readable repo file so the agent, the scheduler, the verifier, and future sessions all share one consensus. The lecture's through-line is that "done" is never implicit — without an explicit list, the agent substitutes its own standard ("the code has no obvious syntax errors") and the human's intent ("end-to-end checkout works") never lands. It then defines the list's schema (the triple), its lifecycle (a four-state machine with harness-controlled transitions), and its role (single source of truth plus back-pressure), and closes with a quantified memo-vs-structured case study. ^[extracted]

## Key Points

### Agents don't know what "done" means

- Neither Claude Code nor Codex automatically knows what "done" means: "add a shopping cart feature" is interpreted as "write a Cart component and an `addToCart` method," while the requester means "browse products, add to cart, and complete checkout end-to-end." ^[extracted]
- Without a feature list the agent falls back to an implicit standard — usually "no obvious syntax errors" — where what is needed is **end-to-end behavioral verification**. ^[extracted]
- A typical unstructured progress note ("Did user auth, shopping cart mostly done, still need payments") answers none of the questions a fresh session needs: what does "mostly done" mean, which tests passed, what blocks payments. The new session burns ~20 minutes inferring state and may re-implement completed features. ^[extracted]
- Anthropic's engineering data: good progress records reduce session startup diagnostic time by **60–80%**. ^[extracted] (Methodology/sample unstated — see Open Questions.)

### The triple: behavior, verification, state

- Each feature item contains three elements: **(behavior description, verification command, current state)**. Behavior tells the agent what to do, verification defines what counts as done, state records where things stand. Missing any element makes the item incomplete. ^[extracted]
- Anthropic and OpenAI both emphasize that **artifacts must be externalized**: feature state lives in a machine-readable file in the repo, never in unstructured conversation text. ^[extracted]
- Minimal schema (JSON or structured Markdown suffices — the course's resource library ships a `feature_list.json` template ^[inferred]):

```json
{
  "id": "F03",
  "behavior": "POST /cart/items with {product_id, quantity} returns 201",
  "verification": "curl -X POST http://localhost:3000/api/cart/items -H 'Content-Type: application/json' -d '{\"product_id\":1,\"quantity\":2}' | jq .status == 201",
  "state": "passing",
  "evidence": "commit abc123, test output log"
}
```
- `evidence` (commit hash, test log) is a fifth, optional field anchoring the state claim to artifacts. ^[inferred]

### The feature state machine

- Four states per item: **not_started → active → blocked → passing**. State transitions are controlled by the harness, not freely changed by the agent. ^[extracted]
- **Pass-state gating**: the only way `active` becomes `passing` is the verification command executing successfully. The transition is **irreversible** — once passing, it cannot go back. The agent can only *submit* a verification request; the harness executes it and decides. ^[extracted]
- The agent cannot flip its own state to `passing` — a direct control constraint that prevents "declared victory" without evidence. ^[extracted]

### Why feature lists must be primitives

- "Documents are for humans to read; primitives are for systems to execute. Documents can be ignored; primitives can't be bypassed." ^[extracted]
- Analogy: feature lists as harness primitives play the role of **database trigger constraints** (enforced by the engine, no SQL can skip them) rather than application-layer checks (depend on code correctness, can be accidentally bypassed). ^[extracted]
- Four harness components consume the list: ^[extracted]
  - **Scheduler** — reads states, picks the next `not_started` feature
  - **Verifier** — executes verification commands, decides whether to allow state transitions
  - **Handoff reporter** — automatically generates session handoff summaries from the list
  - **Progress tracker** — tallies state distribution, provides project health metrics
- **Single source of truth**: all "what needs to be done" information derives from one feature list; no contradictions between the list and conversation history. ^[extracted]
- **Back-pressure**: the count of not-yet-passing features is the pressure the harness exerts on the agent; zero pressure = project complete. ^[extracted]

### How to do it

1. **Define a minimal format** — structured Markdown or JSON; every entry carries the triple. No complex system needed. ^[extracted]
2. **Let the harness control state transitions** — agent submits a verification request; harness runs the command and gates the transition (pass-state gating). ^[extracted]
3. **Write the rules in CLAUDE.md** (the agent's rule file): feature list path, one active feature at a time, verification must pass before marking passing, and "don't modify feature list states yourself — the verification script updates them automatically." ^[extracted]
4. **Calibrate granularity** to "completable in one session": "User can add items to cart" is right; "Implement the shopping cart" is too broad; "Create the name field on the Cart model" is too narrow. ^[extracted]

### Real-world case: memo mode vs structured mode

- Memo mode (unstructured notes) on a 10-feature e-commerce platform: after 3 sessions the notes read "did user auth and product list, shopping cart mostly done but has bugs, payments not started" — a new session needs ~20 minutes to infer state and ultimately re-implements completed features. ^[extracted]
- Structured mode: a new session reads the list and in ~3 minutes knows F01–F05 passing, F06 active, F07–F10 not_started; it picks up directly from F06 with zero rework. ^[extracted]
- Claimed result: structured feature lists show **45% higher feature completion rate** than free-form tracking, with **zero duplicate implementations**. ^[extracted] (Anecdotal, single case — see Open Questions.)

### Key takeaways

- Feature lists are the harness's foundational structure, not memos — scheduler, verifier, and handoff reporter all depend on them. ^[extracted]
- Every item needs the triple: behavior + verification command + current state; missing one makes it incomplete. ^[extracted]
- State transitions are harness-controlled; passing verification is the only upgrade path. ^[extracted]
- The list is the project's single source of truth; all "what to do" information derives from it. ^[extracted]
- Calibrate granularity to "completable in one session." ^[extracted]

## Concepts

- [[concepts/ai-harness|AI Harness]] — the feature list is the foundational data structure this lecture claims the whole harness is built on
- [[concepts/repository-as-system-of-record|Repository as System of Record]] — externalized feature state is the lecture-03 repo-as-truth principle applied to task state
- [[concepts/agents-md|AGENTS.md]] — CLAUDE.md is where the feature-list rules (path, one-active, no self-gating) get written
- [[concepts/agent-exit-strategies|Agent Exit Strategies]] — pass-state gating is an external, verifier-driven exit condition for the work loop
- [[concepts/loop-engineering|Loop Engineering]] — verification commands are the loop-closing signal; the verifier defines "done"
- [[concepts/back-pressure|Back Pressure]] — the lecture's harness sense (unpassed-feature count pressing the agent) parallels the wiki's ML-serving sense (queue pressure) ^[inferred]
- [[concepts/verifiers-toolkit|Verifiers Toolkit]] — verification commands as the verifier mechanism behind pass-state gating
- [[concepts/context-engineering|Context Engineering]] — the progress-note problem ("mostly done") is a context-delivery failure the list solves

## Entities

- [[entities/openai|OpenAI]] — Harness Engineering article: "externalizing artifacts" principle cited by the lecture
- [[entities/anthropic|Anthropic]] — Building Effective Agents; identifies the feature list as the "core data structure" for controlling agent scope; source of the 60–80% startup-time stat
- [[entities/codex|Codex]] — the OpenAI coding agent the course's harness engineering targets
- [[entities/claude-code|Claude Code]] — the other target agent; CLAUDE.md as the rules surface
- [[entities/walkinglabs|Walking Labs]] — course publisher (code examples repo, Project 04 companion)

## Open Questions

- The headline numbers — 60–80% startup-time reduction (Anthropic) and 45% completion-rate gain / zero duplicate implementations (case study) — are asserted without methodology, sample size, or control. ^[ambiguous]
- Pass-state gating is declared irreversible, but the lecture doesn't say how a feature returns to `active` when requirements or tests change after it passed. ^[inferred]
- The CLAUDE.md example mandates "only one feature active at a time" — a serialization assumption; contention on a shared feature list with parallel agents is unaddressed (cf. lecture-03's ACID isolation point). ^[inferred]
- The `blocked` state is named but its entry/exit conditions are never defined. ^[ambiguous]
- The lecture page carries no named author; course authorship/publication date unrecorded. ^[ambiguous]

## Related

- [[references/harness-lecture-03-repository-system-of-record|Repository as System of Record — Lecture 03]] — the repo as the authoritative store; this lecture puts machine-readable feature state in it
- [[references/harness-lecture-02-what-a-harness-actually-is|What a Harness Actually Is — Lecture 02]] — the scheduler/verifier/handoff components that consume the feature list
- [[references/harness-lecture-07-overreach-under-finish|Overreach and Under-Finish — Lecture 07]] — scope control; the feature list constrains what the agent is allowed to do
- [[references/harness-lecture-09-declare-victory-too-early|Declaring Victory Too Early — Lecture 09]] — verifier-gated `passing` is the antidote to premature "done" claims
- [[references/knowing-when-to-stop-loop-convergence|Knowing When to Stop — Loop Convergence]] — "done" must be manufactured outside the generator; the verifier defines progress
- [[misc/web-walkinglabs-github-io-learn-harness-engineering-en|Learn Harness Engineering (Course Landing)]] — course hub; Resource Library ships the `feature_list.json` template
