---
title: "What a Harness Actually Is — Lecture 02, Learn Harness Engineering (Walking Labs)"
category: references
type: reference
tags: [harness-engineering, agent-harness, coding-agents, verification, state-management]
sources:
  - "https://walkinglabs.github.io/learn-harness-engineering/en/lectures/lecture-02-what-a-harness-actually-is/"
source_url: "https://walkinglabs.github.io/learn-harness-engineering/en/lectures/lecture-02-what-a-harness-actually-is/"
created: "2026-08-13"
updated: "2026-08-13"
summary: "Walking Labs: a harness is everything outside model weights — five subsystems (instructions, tools, environment, state, feedback); the repo IS the spec; ablation quantifies value."
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

# What a Harness Actually Is — Lecture 02 (Learn Harness Engineering)

> [!tldr] A prompt file is not a harness. A harness is everything in the engineering infrastructure **outside the model weights** — five subsystems (instructions, tools, environment, state, feedback) that determine how much of the model's capability actually gets realized. "If it is not model weights, it is harness."

**Course:** Learn Harness Engineering (Walking Labs), Lecture 02. No named author on the page. ^[ambiguous] Companions: OpenAI's Harness Engineering post, Anthropic's Effective Harnesses for Long-Running Agents.

## Overview

The lecture gives "harness" a precise, actionable definition rather than an academic abstraction: a harness consists of five subsystems — **instructions, tools, environment, state, feedback** — each with clear responsibilities and evaluation criteria. It frames the agent as a newly hired engineer dropped into an undocumented codebase: the agent can only see the files put in front of it and the commands it can execute. Everything in the engineering infrastructure outside the model determines how much of the model's capability is realized. ^[extracted]

## Key Points

### The definition: a prompt file is not a harness

- "Harness" gets thrown around in AI coding-agent circles, but most uses really mean a prompt file — and a prompt file is not a harness. ^[extracted]
- **Harness = everything in the engineering infrastructure outside the model weights.** ^[extracted] OpenAI distills the engineer's core job into three things: designing environments, expressing intent, and building feedback loops. Anthropic directly calls its Claude Agent SDK a "general-purpose agent harness." ^[extracted]

### Harness vs model, and why it matters

- The model is fixed capability; the harness decides how much of that capability gets realized. The case study below demonstrates the same model going from 20% to ~100% task success purely from harness changes. ^[extracted]
- OpenAI frames the core principle as **"the repo IS the spec"** — all necessary context lives in the repository, delivered through structured instruction files, explicit verification commands, and clear directory organization. ^[extracted]
- Anthropic's long-running-agents documentation emphasizes state persistence, explicit recovery paths, and structured progress tracking. The two companies focus on different aspects but say the same thing. ^[extracted]
- **Anything the agent cannot see, for all practical purposes, does not exist** — the repo is the single source of truth; OpenAI treats it as the "system of record." ^[extracted]

### The five subsystems (components)

| Subsystem | Responsibility | Canonical artifact |
|---|---|---|
| Instructions | Project overview & purpose, tech stack and versions, first-run commands, non-negotiable hard constraints, links to deeper docs | AGENTS.md or CLAUDE.md |
| Tools | Sufficient tool access under least privilege — do not disable shell "for security reasons" (an agent that cannot run `pip install` cannot get anything done), but do not open everything either | shell, editor, browser access |
| Environment | Make environment state self-describing and reproducible | `pyproject.toml` / `package.json`, `.nvmrc` / `.python-version`, Docker / devcontainers |
| State | Progress tracking across long tasks and sessions | PROGRESS.md (done / in progress / blocked), written before each session ends, read at the next start |
| Feedback | Explicit verification commands — the highest-ROI subsystem | `pytest tests/ -x`, `mypy src/ --strict`, `ruff check src/`, `make check` listed in AGENTS.md |

Missing any one of the five subsystems means an incomplete harness, and "the agent will always feel awkward to use." ^[extracted]

### Design principles

- **Give a map, not a manual** — AGENTS.md should be a directory page, not an encyclopedia; around 100 lines is enough; if it does not fit, split it into a `docs/` directory and let the agent read on demand. ^[extracted]
- **Constrain, don't micromanage** — use executable rules to constrain the agent rather than enumerating instructions one by one; OpenAI: "enforce invariants, don't micromanage implementation." Anthropic found agents confidently praise their own work; the fix is separating "the person who does the work" from "the person who checks the work." ^[extracted]
- **Remove one at a time and observe** — quantify each component's marginal contribution by ablation (see below). ^[extracted]

### Quantifying harness component value

- **Controlled variable exclusion test:** keep the model fixed, remove one subsystem at a time, and see which removal causes the biggest performance drop — that component has the highest marginal contribution for the current task. ^[extracted]
- Anthropic used this method and found that as models get stronger, some components stop being critical — but new critical components always emerge. ^[extracted]
- The experiment answers "which component is most valuable right now," **not** "where is the bottleneck." Bottleneck location requires failure records and attribution: was the task unclear, context insufficient, environment unreproducible, verification feedback missing, or state management broken? Ablation results are supporting evidence only. ^[extracted]
- Near-zero-impact components should not be dismissed outright — they may be redundant, poorly designed, or simply not exercised by the current task. ^[extracted]

### Tools as worked examples of harness thinking

- **Claude Code** embodies harness thinking: reads CLAUDE.md, runs shell commands, executes in the local environment, maintains session history, can run tests — but without told test commands it has no way to verify correctness. ^[extracted]
- **Cursor** — `.cursorrules` is the instruction source, the terminal is the tool; but state management is weak: close and reopen the IDE and prior context is gone. ^[extracted]
- **Codex** uses git worktrees to isolate each task's runtime environment, paired with a local observability stack (logs, metrics, traces), so every change is verified in an independent environment; it performs far better in repos with an AGENTS.md and clear verification commands than in "bare" repos. ^[extracted]
- **AutoGPT** is the cautionary tale: unstructured state causes context to accumulate endlessly; missing feedback mechanisms cause looping. "Many people say AutoGPT 'doesn't work,' but really it is the harness that does not work." ^[extracted]

### A team's real story (case study)

A team used GPT-4o on a ~20,000-line TypeScript + React frontend, adding harness components one at a time across four stages — **model unchanged throughout**: ^[extracted]

1. **Stage 1** — basic project description only in README: **1/5 runs succeeded (20%)**. Failures: wrong package manager (npm vs yarn), ignored naming conventions, couldn't run tests.
2. **Stage 2** — added AGENTS.md with tech-stack versions, naming conventions, key architecture decisions: **60%**. Remaining failures: environment issues and missing verification.
3. **Stage 3** — listed verification commands (`yarn test && yarn lint && yarn build`) in AGENTS.md: **80%**.
4. **Stage 4** — progress-file templates where the agent recorded completed/incomplete work each run: **80–100%**, stabilized.

"You did not switch to a better model — what changed was the harness." ^[extracted]

### Key takeaways

- Harness = Instructions + Tools + Environment + State + Feedback; all five essential. ^[extracted]
- If it is not model weights, it is harness. ^[extracted]
- The feedback subsystem usually has the lowest investment and highest return — get verification commands right first. ^[extracted]
- Use controlled variable exclusion tests to quantify subsystem marginal contribution; locate bottlenecks via failure records and attribution, not ablation alone. ^[extracted]
- **Harness rots like code** — audit regularly and pay down harness debt like technical debt. ^[extracted]

## Concepts

- [[concepts/ai-harness|AI Harness]] — the wiki's concept page; this lecture supplies the five-subsystem definition (merged there)
- [[concepts/agents-md|AGENTS.md]] — the instruction-file substrate the lecture centers on
- [[concepts/agent-rails|Agent Rails]] — Hykes' constraining rails ≈ "constrain, don't micromanage"
- [[concepts/agent-environment|Agent Environment]] — isolation/customizability lens on the environment subsystem
- [[concepts/agent-memory|Agent Memory]] — persistence lens on the state subsystem
- [[concepts/agent-tools|Agent Tools]] — the tool subsystem's design space
- [[concepts/loop-engineering|Loop Engineering]] — verification/feedback closes the loop this lecture optimizes
- [[concepts/context-engineering|Context Engineering]] — "the repo IS the spec" is a context-delivery strategy
- [[concepts/agent-architecture|Agent Architecture]] — where the harness sits around client/reasoning/workflows/tools

## Entities

- [[entities/openai|OpenAI]] — "the repo IS the spec"; harness-engineering post in Further Reading
- [[entities/anthropic|Anthropic]] — long-running-agents docs; calls Claude Agent SDK a "general-purpose agent harness"
- [[entities/claude-code|Claude Code]] — CLAUDE.md + shell + local environment + session history example
- [[entities/cursor-ai|Cursor]] — `.cursorrules` + weak-state-management example
- [[entities/codex|Codex]] — git-worktree isolation + observability stack example
- [[entities/humanlayer|HumanLayer]] — author of a Further Reading harness-engineering post
- AutoGPT, SWE-agent, Thoughtworks, Walking Labs (course publisher), and GPT-4o (case-study model) have no entity pages — listed as dangling targets in the ingest report.

## Open Questions

- The lecture asserts the feedback subsystem is "usually" the highest-ROI subsystem — under what task conditions does another subsystem dominate? ^[ambiguous]
- Does the five-subsystem model (repo-file artifacts) transfer to non-repo agent domains (research agents, computer use) where there is no repository to be the spec? ^[inferred]
- The lecture page carries no named author; authorship and publication date of the course itself are unrecorded in the page. ^[ambiguous]
- "Harness debt" is asserted to accumulate like technical debt, but no concrete audit cadence or measurement is given. ^[inferred]

## Related

- [[references/command-code-read-tool-harness-engineering|The Read Tool — Command Code's Harness-Engineering Deep Dive]] — tool-subsystem engineering in practice (token cost as harness outcome)
- [[references/memoharness-agent-harnesses-learn-from-experience|MemoHarness]] — formal six-surface decomposition, a control-surface complement to this lecture's five repo-level subsystems
- [[references/towards-long-horizon-agents-a-survey|Towards Long-Horizon Agents]] — harness as the externalized half of Agent = π_θ ⊕ H
- [[references/cyrilxbt-agent-concepts-explainer-video|Hermes Agent Harness & Loop Engineering Explained]] — the horse-and-harness metaphor framing
- [[concepts/loop-engineering|Loop Engineering]] — the engineering-roadmap counterpart to this definitional lecture
