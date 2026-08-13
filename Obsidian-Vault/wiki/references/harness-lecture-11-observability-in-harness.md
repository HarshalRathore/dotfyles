---
title: "Why Observability Belongs Inside the Harness — Lecture 11, Learn Harness Engineering (Walking Labs)"
category: references
type: reference
tags: [harness-engineering, agent-harness, observability, tracing, verification]
sources:
  - "https://walkinglabs.github.io/learn-harness-engineering/en/lectures/lecture-11-why-observability-belongs-inside-the-harness/"
source_url: "https://walkinglabs.github.io/learn-harness-engineering/en/lectures/lecture-11-why-observability-belongs-inside-the-harness/"
created: "2026-08-13"
updated: "2026-08-13"
summary: "Lecture 11: observability is a harness architecture property — runtime (logs/traces) + process (sprint contracts, rubrics) layers; missing it wastes 30-50% of session time on redundant diagnosis."
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

# Why Observability Belongs Inside the Harness — Lecture 11 (Learn Harness Engineering)

> [!tldr] An agent that runs without visibility into its own runtime state is guessing: "done, but two tests are failing — not sure why." Observability is a harness architecture property, not an add-on feature. The harness must collect runtime signals automatically (agents won't log what they don't know they need) and make the decision layer observable too — sprint contracts and scoring rubrics turn evaluation from mysticism into reproducible evidence. The lecture's dark-mode case study measures 3x efficiency from observability alone, and Anthropic's three-agent harness experiment prices a full feature build at 3h50m / $124.70 with the evaluator fixed by reading its own logs.

**Course:** Learn Harness Engineering (Walking Labs), Lecture 11 — "Making the Agent's Runtime Observable". No named author on the page. ^[ambiguous] Companions: Anthropic's Harness Design for Long-Running Application Development, OpenAI's Harness Engineering. Companion project: Project 06 (Runtime Observability and Debugging).

## Overview

The lecture opens with the canonical failure: an agent runs 20 minutes, touches many files, reports "done, but two tests are failing," and cannot say why — "not sure, might be a timing issue." The root cause is not agent capability but the harness's missing observability: without visibility into actual runtime state, every decision the agent makes is essentially a guess. ^[extracted] The lecture's central claim: observability is an **architecture property of the harness** that must be designed in from the start, and it operates on two layers — runtime (what the system did) and process (why this change should be accepted). ^[extracted]

## Key Points

### The four costs of missing observability

- **Cannot distinguish "correct" from "looks correct"** — code review shows what was *written*; runtime tracing shows what *actually ran*. A function with a boundary-condition bug can look right in review and fail at runtime; only traces reveal the execution path deviated from expectations. You need both views. ^[extracted]
- **Evaluation becomes mysticism** — without scoring rubrics and acceptance criteria, evaluators (human or agent) rely on implicit assumptions; the same output gets wildly different assessments, and quality evaluation becomes non-reproducible. ^[extracted]
- **Retries become blind guesses** — an agent that doesn't know why something failed retries in random directions, hammering unrelated code paths while the real root cause stays; every blind retry burns tokens and time. ^[extracted]
- **Session handoff information cliff** — incomplete work handed to a new session forces it to diagnose system state from scratch; Anthropic's observations of long-running agents put the cost of this redundant diagnosis at **30–50% of total session time**. ^[extracted]

### The dark-mode scenario: observability as the only variable

A harness using a planner-generator-evaluator three-role workflow on "add dark mode to the app": ^[extracted]

- **Without observability:** vague planner description → generator implements against the vagueness → evaluator rejects on implicit standards ("it doesn't feel right") → blind retries. 3–4 cycles, ~45 minutes, barely acceptable output.
- **With observability:** the planner emits a **sprint contract** (components to modify, verification standards, exclusions like "no print styles"); runtime observability records each component's style loading and application; the evaluator scores dimension by dimension citing specific evidence ("Button color contrast is insufficient — WCAG AA 4.5:1, measured 2.1:1"). One iteration, ~15 minutes, high-quality result.
- **3x efficiency difference — the only variable is observability.** ^[extracted]

### Layered observability: runtime and process

- **Runtime observability** — system-level signals: logs, traces, process events, health checks. Answers "what did the system do." ^[extracted]
- **Process observability** — visibility into harness *decision artifacts*: plans, sprint contracts, scoring rubrics, acceptance criteria. Answers "why should this change be accepted." ^[extracted]
- **Layered observability** — the two layers designed simultaneously, reinforcing each other: runtime signals explain behavior, process artifacts explain intent. ^[extracted] Observability is not "add more logging" — and process observability cannot be solved by logging at all. ^[extracted]
- **Task trace** — a complete decision-path record from task start to completion, analogous to request tracing in distributed systems; every step and its context is recorded so a failure can be replayed end to end. ^[extracted]

### Why agents can't instrument themselves

- **Agents don't know what they don't know** — they won't proactively record signals they don't realize they need; without harness-level constraints, agents log only what they think is important, which is usually not enough. ^[extracted]
- **Log formats are inconsistent** across sessions, making systematic analysis impossible. ^[extracted]
- **Process observability can't be solved by logging** — sprint contracts and scoring rubrics are structured artifacts that require harness-level support; print statements won't cut it. ^[extracted]

### How to build observability into the harness

1. **Build runtime signal collection into the harness** — never rely on the agent printing its own logs. Collect: application lifecycle (startup/ready/running/shutdown phases), feature-path execution (entry points, checkpoints, exits on critical paths), data flow between components, resource utilization (e.g. continuously growing memory), and errors/exceptions with full context, not just messages. ^[extracted]
2. **Implement sprint contracts** — before each task, the generator and evaluator (possibly different invocations of the same agent) negotiate scope, verification standards, and exclusions. Example contract for dark mode: scope (theme toggle component, global CSS variables, dark-mode tests), verification (visual regression tests, end-to-end main flow, no flash of unstyled content), exclusions (no print styles, no third-party components). ^[extracted]
3. **Establish an evaluator rubric** — turn "is it good or not" into quantifiable A/B/C/D scoring per dimension (code correctness, architecture compliance, test coverage), so different evaluators reach similar conclusions for the same output. ^[extracted]
4. **Standardize with OpenTelemetry** — one trace per harness session, a span per task, sub-spans per verification step; standard attributes so observability data integrates with standard toolchains (Jaeger, Zipkin). ^[extracted]

### Anthropic's three-agent architecture experiment (March 2026)

Anthropic ran the same task ("build a browser-based DAW using the Web Audio API") with three architectures and recorded phase-by-phase data. The planner/generator/evaluator run: **3 hr 50 min total, $124.70** (planner 4.7 min / $0.46; build rounds 2h07m / $71.08, 1h02m / $36.89, 10.9m / $5.88; QA rounds 8.8m / $3.24, 6.8m / $3.09, 9.6m / $4.06). ^[extracted]

- **Planner** — receives a 1–4 sentence requirement, expands it into a full product spec, instructed to be "bold in scope" and focus on product context and high-level technical design: premature granular technical details that are wrong cascade downstream, so constrain deliverables and let the agent find its own path during execution. ^[extracted]
- **Generator** — implements feature by feature, sprint by sprint; negotiates a sprint contract with the evaluator before each sprint defining what "done" means for that feature block, then implements, self-evaluates, and hands off to QA. ^[extracted]
- **Evaluator** — uses Playwright MCP to interact with the running app like a real user (UI functionality, API endpoints, database state); scores each sprint on product depth, functionality, visual design, and code quality, each with a hard threshold — any shortfall fails the sprint and the generator receives detailed feedback for fixes. ^[extracted]
- The evaluator was **not always reliable**: early versions identified reasonable issues, then talked themselves into dismissing those issues as not severe and approving the work. The fix was itself an observability practice — read the evaluator's logs, find the points where its judgment diverged from human judgment, and update the QA prompt to address those specific problems. After several rounds of this development loop, the evaluator's scoring became reliable. ^[extracted]

### Key takeaways

- Observability is a harness **architecture property** — not a feature added after the fact; it must be designed in from the start. ^[extracted]
- Both layers are essential: runtime signals explain "what happened," process artifacts explain "why it was done this way." ^[extracted]
- Sprint contracts front-load alignment — they prevent the generator from building something the evaluator immediately rejects for foreseeable reasons. ^[extracted]
- Scoring rubrics make evaluation reproducible — different evaluators produce similar scores for the same output. ^[extracted]
- Missing observability wastes 30–50% of session time on redundant diagnosis. ^[extracted]
- Both OpenAI and Anthropic frame reliability as an **evidence problem**: the harness must expose runtime behavior and evaluation signals in a form that can guide the next decision. ^[extracted]

## Concepts

- [[concepts/agent-observability|Agent Observability]] — this lecture is the harness-flavored extension: observability as a harness property, not a monitoring-vendor add-on
- [[concepts/ai-harness|AI Agentic Harness]] — observability is one of the harness's core subsystems, designed in from the start
- [[concepts/rubric-based-evaluation|Rubric-Based Evaluation]] — the evaluator rubric is the lecture's concrete instance of rubric-based scoring for reproducibility
- [[concepts/open-telemetry|OpenTelemetry (OTEL)]] — the standardization layer: trace per session, span per task, sub-spans per verification step
- [[concepts/distributed-tracing|Distributed Tracing]] — the task trace is request tracing applied to the agent's decision path
- [[concepts/verifiers-toolkit|Verifiers Toolkit]] — scoring rubrics and acceptance criteria are verifier mechanisms for the work loop
- [[concepts/loop-engineering|Loop Engineering]] — observability is what makes each loop iteration directional instead of a blind retry
- [[concepts/agent-evaluation-pipeline|Agent Evaluation Pipeline]] — evaluator rubrics and sprint contracts are the process-layer half of the pipeline
- [[concepts/context-management-for-agents|Context Management for Agents]] — the 30–50% redundant-diagnosis cost is a context-delivery failure across session handoffs
- [[concepts/sprint-contract|Sprint Contract]] — the lecture's core process-observability artifact (scope, verification standards, exclusions)
- [[concepts/task-trace|Task Trace]] — replayable decision-path record of a task from start to completion

## Entities

- [[entities/walkinglabs|Walking Labs]] — course publisher (code examples repo, Project 06 companion)
- [[entities/anthropic|Anthropic]] — source of the three-agent harness experiment (March 2026) and the 30–50% session-diagnosis stat
- [[entities/openai|OpenAI]] — frames reliability as an evidence problem; companion Harness Engineering reference
- [[entities/claude-code|Claude Code]] — the concrete harness in the dark-mode scenario ^[inferred from scenario framing]
- [[entities/codex|Codex]] — the other agentic tool the course's harness engineering targets ^[inferred from course landing]

## Open Questions

- The 3x efficiency claim comes from a single illustrative scenario, not a controlled study; the only-variable framing is asserted, not demonstrated. ^[ambiguous]
- The 30–50% redundant-diagnosis figure is attributed to "Anthropic's observations of long-running agents" with no study link or methodology — unverifiable from this page alone. ^[ambiguous]
- The evaluator-reliability fix (read logs, find divergence from human judgment, update the QA prompt) is described as a process, but no concrete criteria for "judgment diverged" are given. ^[ambiguous]
- Sprint contracts and task traces are described as structured artifacts, but no schema beyond the markdown example — or a harness API for storing and retrieving them — is specified. ^[inferred]

## Related

- [[references/anthropic-harness-design|Anthropic: Harness Design]] — the lecture's primary cited source: the three-agent experiment and sprint contracts/rubrics
- [[references/harness-lecture-05-long-running-tasks-continuity|Lecture 5: Long-Running Tasks Lose Continuity]] — the session-handoff failure mode observability mitigates
- [[references/harness-lecture-08-feature-lists-primitives|Feature Lists as Harness Primitives — Lecture 08]] — verification-driven state as the sibling mechanism; rubrics close the loop
- [[references/harness-lecture-06-initialization-phase|Initialization Needs Its Own Phase — Lecture 06]] — phase discipline pairs with signal collection for fresh sessions
- [[misc/web-walkinglabs-github-io-learn-harness-engineering-en|Learn Harness Engineering (Course Landing)]] — course hub; the loop's "Runtime Feedback" step is this lecture's subject

### Further reading (outbound links from the lecture)

- Anthropic: Harness design for long-running application development — https://www.anthropic.com/engineering/harness-design-long-running-apps
- Observability Engineering (Charity Majors, Honeycomb) — https://www.honeycomb.io/blog/observability-engineering-book
- Dapper — Google (Sigelman et al.) — https://research.google/pubs/pub36356/
- Site Reliability Engineering (Google) — https://sre.google/sre-book/table-of-contents/
- Lecture code examples — https://github.com/walkinglabs/learn-harness-engineering/blob/main/docs/en/lectures/lecture-11-why-observability-belongs-inside-the-harness/code/
- Chinese translation of this lecture — https://walkinglabs.github.io/learn-harness-engineering/zh/lectures/lecture-11-why-observability-belongs-inside-the-harness/ ^[inferred from relative link]
- Companion project: Project 06 (Runtime Observability and Debugging) — https://walkinglabs.github.io/learn-harness-engineering/en/projects/project-06-runtime-observability-and-debugging/ ^[inferred from relative link]
