---
title: "Draw Clear Task Boundaries for Agents — Learn Harness Engineering Lecture 7"
created: 2026-08-13
updated: 2026-08-13
type: reference
category: references
tags: [harness-engineering, coding-agents, agent-harness, scope-management, completion-evidence]
sources:
  - "https://walkinglabs.github.io/learn-harness-engineering/en/lectures/lecture-07-why-agents-overreach-and-under-finish/"
base_confidence: 0.85
lifecycle: draft
tier: supporting
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
summary: "Learn Harness Engineering Lecture 7: overreach (more than asked) and under-finish (stopping early) feed each other; WIP=1, executable completion evidence, and externalized scope fix it."
---

# Draw Clear Task Boundaries for Agents — Learn Harness Engineering, Lecture 7

> [!tldr] Agents are born with an impulse to "do a little extra" — and doing too many things at once guarantees none of them get done well. Overreach (activating more tasks than optimal) and under-finish (stopping before end-to-end verification passes) form a vicious cycle. This is not a model problem — it's a harness problem: you didn't draw the boundary. The fix: WIP=1, executable completion evidence, an externalized scope surface, and a verified-completion-rate gate.

**Source:** Learn Harness Engineering (Walking Labs), Lecture 7 — "Draw Clear Task Boundaries for Agents" (URL slug: why-agents-overreach-and-under-finish). Course repo: walkinglabs/learn-harness-engineering. ^[extracted]

## Overview

The lecture opens with a familiar scene: tell Claude Code to "add user authentication to this project" and it starts modifying the database schema, writing routes, changing frontend components, and — while it's at it — refactoring the error-handling middleware. Two hours later: 12 files modified, 800 lines of new code, and not a single feature works end-to-end. The lecture argues this failure is structural, not random: agents have an impulse to "do a little extra," and the harness (not the model) is what must constrain it. It grounds the argument in Anthropic's *Effective harnesses for long-running agents* and OpenAI's Codex engineering practices, then prescribes four harness controls: WIP=1, explicit completion evidence per task, an externalized scope surface, and monitored verified completion rate. ^[extracted]

## Key Points

### Overreach and under-finish: the failure pair

- **Overreach** — the agent activates more tasks in a single session than optimal. The lecture insists this is quantifiable, not subjective: doing 5 features with 0 passing end-to-end is overreach. ^[extracted]
- **Under-finish** — the ratio of tasks that pass end-to-end verification, out of all activated tasks, falls below threshold. Code written but tests not passing is under-finish. ^[extracted]
- Anthropic's harnesses blog: when prompts are too broad, agents "start multiple things at once" rather than "finish one thing first"; OpenAI's Codex engineering practices found the same — tasks without explicit scope controls see completion rates plummet. ^[extracted]

### Attention is a finite resource

- Modeled as math: with context capacity `C` and `k` simultaneously active tasks, each task gets `C/k` reasoning resources on average. When `C/k` drops below the minimum threshold needed to complete a single task, none get finished. ^[extracted]
- The lecture's worked example of "add user registration": User model → registration route → email verification (add a mail service) → password hashing (add bcrypt) → inconsistent error handling (refactor global middleware) → messy test structure (reorganize directory). Six steps later, every one is half-done, with complex coupling between half-baked pieces and no end-to-end verification. ^[extracted]
- Anthropic's experimental data: agents using a "small next step" strategy (equivalent to WIP=1) show a **37% higher task completion rate** than agents using broad prompts; lines of code generated are **weakly negatively correlated** with feature completion — more code written, fewer features completed. ^[extracted]

### A vicious cycle, not two independent bugs

- Overreach dilutes attention → diluted attention causes under-finish → half-finished code increases system complexity → complexity drives further overreach in the next task. The two problems amplify each other; solving one solves the other. ^[extracted]
- Kanban framing via Little's Law: `L = λ × W` — if work-in-progress `L` is too high, lead time `W` per task inevitably rises; for agents, each feature takes longer from start to verified completion and failure probability grows. ^[extracted]
- Steve McConnell's *Rapid Development* documented scope creep as the leading cause of project failure — but humans at least have the intuition of "I've done enough." Agents have none: generating the next idea ("let me fix this too while I'm here") costs almost nothing in tokens, so every additional modification is nearly free while diluting attention. ^[extracted]

### Harness controls: how to do it right

1. **Enforce WIP=1** — only one task allowed in "active" status at any time. The lecture gives copy-ready work rules for CLAUDE.md / AGENTS.md: work on one feature at a time; only start the next feature after the current one passes end-to-end verification; don't "also refactor" feature B while implementing feature A. ^[extracted]
2. **Define explicit completion evidence for every task** — done is not "code is written"; it's "behavior verification passes." Every feature-list entry needs a verification command (e.g. `curl -X POST /api/register ... | jq .status == 201`) plus a state. ^[extracted]
3. **Externalize the scope surface** — a machine-readable file (JSON or Markdown) records all task states. Any new session reads this file and immediately knows which task is active, what counts as done, and what verifications have passed. ^[extracted]
4. **Monitor verified completion rate (VCR)** — the harness continuously tracks `VCR = verified tasks / activated tasks` and **blocks new task activations when VCR < 1.0**. ^[extracted]

The core vocabulary introduced: **WIP limit** (Kanban; WIP=1 is the safest default for agents), **completion evidence** (the verifiable condition for "in progress" → "done"; without it agents substitute "the code looks fine" for "the behavior passes tests"), **scope surface** (a DAG where nodes are work units, edges are dependencies; states limited to `not_started`, `active`, `blocked`, `passing`), and **completion pressure** (the constraining force the harness exerts via WIP limits and completion-evidence requirements). ^[extracted]

### Real-world case: 8-feature REST API

- **Unconstrained mode:** agent activates 5 features simultaneously in session 1; ~800 lines across 12 files; end-to-end test pass rate 20% (only user registration works); by end of session 3 only 3 of 8 features complete. ^[extracted]
- **WIP=1 mode:** session 1 works on user registration only; ~200 lines across 4 files; end-to-end tests 100% passing; clean, verified commit; by end of session 4, 7 of 8 features complete (the 8th blocked by an external dependency). ^[extracted]
- Result: less total code (800 vs 1200 lines) but more effective code; completion rate **87.5% vs 37.5%**. ^[extracted]

### Key takeaways

- WIP=1 is the default safe setting for agent harnesses — finish one, then start the next; don't try to parallelize. ^[extracted]
- Completion evidence must be executable — "curl returns 201" counts; "the code looks fine" does not. ^[extracted]
- The scope surface must be externalized as a file in the repo — recorded machine-readably, not just mentioned in conversation. ^[extracted]
- "Do less but finish" always beats "do more but leave half-done" — code volume and feature completion are negatively correlated. ^[extracted]

## Concepts

- [[concepts/agent-exit-strategies|Agent Exit Strategies]] — under-finish is an exit-strategy failure; completion evidence is the lecture's external stop condition
- [[concepts/ai-harness|AI Harness]] — the lecture's thesis: overreach/under-finish is a harness problem, not a model problem
- [[concepts/loop-engineering|Loop Engineering]] — WIP=1 and the VCR gate are loop-level controls; Little's Law frames their cost
- [[concepts/agents-md|AGENTS.md]] — the surface where WIP=1 work rules get written (alongside CLAUDE.md)
- [[references/harness-lecture-03-repository-system-of-record|Repository as System of Record]] — the externalized scope surface is the same principle: machine-readable state living in the repo

## Entities

- [[entities/walkinglabs|Walking Labs]] — course publisher
- [[entities/claude-code|Claude Code]] — the lecture's running example agent (CLAUDE.md work rules)
- [[entities/codex|Codex]] — OpenAI agent whose engineering practices the lecture cites (AGENTS.md work rules)

## Open Questions

- The four scope-surface states include `blocked`, but the lecture gives no unblocking policy — in the case study the 8th feature stayed incomplete because of an external dependency. ^[ambiguous]
- The 37% completion-rate lift and the negative code-lines correlation are cited from Anthropic's blog; the lecture reports no sample sizes, task mix, or model generations behind them. ^[ambiguous]
- WIP=1 is argued as the safest default for a single agent, but the course's own later lectures (graph engineering, multi-agent coordination) raise whether WIP limits should relax when independent agents work separate features in parallel. ^[inferred]

## Related

- [[references/knowing-when-to-stop-loop-convergence|Knowing When to Stop: The Art of Making a Loop Converge]] — Yoko Li's verifier lens on the same "done" problem; the lecture's completion evidence and VCR gate are concrete mechanisms for her "stopping rule" condition
- [[misc/web-walkinglabs-github-io-learn-harness-engineering-en|Learn Harness Engineering (Course Landing)]] — course hub with all 14 lecture links
- [[concepts/instruction-budget|Instruction Budget]] — the C/k attention model is an instruction/context-budget argument for why narrow task boundaries work
