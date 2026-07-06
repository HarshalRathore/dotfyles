---
title: The Multi-Agent Architecture That Actually Ships — Luke Alvoeiro, Factory
category: misc
tags:
- ai
- multi-agent
- architecture
- agent-systems
- factory
sources:
- 'https://www.youtube.com/watch?v=ow1we5pzk-o'
source_url: https://www.youtube.com/watch?v=ow1we5PzK-o
created: '2026-07-01'
updated: '2026-07-01'
summary: Luke Alvoeiro (Factory) presents Missions — a three-role multi-agent system (orchestrator, workers, validators) using validation contracts, structured handoffs, serial execution, and adversarial ve...
affinity: {}
promotion_status: misc
stub: false
provenance:
  extracted: 0.8
  inferred: 0.18
  ambiguous: 0.02
base_confidence: 0.45
lifecycle: draft
lifecycle_changed: 2026-07-01
tier: supporting
---

# The Multi-Agent Architecture That Actually Ships — Luke Alvoeiro, Factory

Luke Alvoeiro at AI Engineer (2026-05-06). 18m30s. 175K views. Luke built Goose at Block (now at AI Foundation), leads core agent harness at [[entities/luke-alvoeiro]].

## Overview

Proposes a taxonomy of five multi-agent strategies and shows how they compose into "Missions" — a three-role system (orchestrator, workers, validators) using validation contracts, structured agent handoffs, and adversarial verification. The core claim: the bottleneck in software engineering is not intelligence but human attention. Systems should let humans decide *what* to build while the agent system figures out *how*.

## Key Points

### Five-strategy multi-agent taxonomy

1. **Delegation** — One agent spawns another; parent gets a response back. Simplest form, most common first implementation (sub-agents in coding tools).
2. **Creator-Verifier** — One agent builds, another checks. Fresh context catches more issues (same reason we do human code review). Separation of concerns avoids confirmation bias.
3. **Direct Communication** — Agents DM each other without central coordinator. Hard to get right — state fragments across conversations, no single source of truth.
4. **Negotiation** — Agents communicate over a shared resource (same API, same code portion). Best when net-positive-sum trading (win-win interactions).
5. **Broadcast** — One agent sends info to many (status updates, constraints, new context). Less flashy but critical for long-running coherence.

### Missions: The three-role architecture

Missions combines #1, #2, #4, #5 into a single workflow:

- **Orchestrator** — Handles planning. Acts as sounding board, asks strategic questions, surfaces unclear requirements. Produces a plan with features, milestones, and a **validation contract** (hundreds of assertions defining "done" before any code is written).
- **Workers** — Handle implementation. Each worker gets clean context per feature (no accumulated baggage). Implements, then commits via git. Next worker inherits a clean slate and working codebase.
- **Validators** — Handle verification. Two types:
  - *Scrutiny validator*: runs test suite, type checking, lints, spawns dedicated code review agents per feature
  - *User testing validator*: acts like QA — spawns the app, interacts via computer use, fills forms, checks pages, clicks buttons. Most wall-clock time is spent here, not generating tokens.

### Validation contracts (key innovation)

Written during planning, before any code. Defines correctness independently of implementation. Each feature is assigned one or more assertions it must satisfy. Sum of all features means every assertion is covered. Prevents tests from being "shaped by the code" — tests written after implementation confirm decisions rather than catch bugs.

### Adversarial verification

Neither validator has seen the code before. They're not invested in the implementation. Validation is adversarial by design — fresh agents with no implementation bias.

### Structured handoffs

Workers don't just say "done." They fill out structured handoffs detailing: what was completed, what was left undone, commands run with exit codes, issues discovered, whether procedures were followed. Errors caught at milestone boundaries. Corrective work scoped. System self-heals by forcing agents to write down issues and address them.

### Serial execution (counterintuitive)

Features run serially — one worker or validator at a time. Parallelization only on read-only operations (codebase search, API research, code review). Serial execution drops error rate dramatically. For multi-day tasks, correctness compounds. Parallelism in the software domain causes agents to conflict, step on changes, duplicate work, make inconsistent decisions — coordination overhead eats speed gains while burning tokens.

### Model per role

Planning benefits from slow, careful reasoning. Implementation needs fast code fluency and creativity. Validation needs precise instruction following. No single model (or provider) is best at all three. Using different model providers per role is a structural advantage — prevents bias from the same training data. Structure can compensate for non-frontier models (validation contracts, milestone checkpoints allow success even with open-weight models).

### Architecture that improves with models

Almost all orchestration logic is in prompts and skills (~700 lines of text), not a hardcoded state machine. Four sentences of text can alter execution strategy dramatically. Worker behavior is driven by per-mission skills defined by the orchestrator. Only deterministic logic is thin bookkeeping (run validation, block on unaddressed handoff issues). System gets better with every model improvement instead of being made obsolete.

### Mission Control UI

Dedicated view for multi-day async runs: shows active worker, handoff summary, validator discoveries, budget burn. Lets operator act as project manager overseeing implementation rather than supervising every step.

### Production metrics

- 60% of time/tokens spent on implementation
- Validation never succeeds on first go — follow-up features always needed
- 50% of final code is tests; 90% test coverage
- Longest mission: 16 days (believe can run 30)
- Enterprise use cases: prototype ideas overnight, internal tools, huge refactors, ML research, legacy modernization

## Concepts

- [[concepts/agent-loop]] — This system extends the agent loop concept: Missions implements the full loop (goal → context → evaluation → agent) with multiple specialized agents per role rather than a single agent.
- [[concepts/ralph-coding-technique]] — Missions is the multi-agent alternative to Ralph's monolithic single-agent approach. Ralph uses one agent per loop iteration with one-item-per-loop discipline; Missions uses separate agents per role with serial feature execution. Both agree on small work units and validation, but disagree on single-vs-multi-agent. ^[ambiguous]

## Entities

- [[entities/luke-alvoeiro]] — Creator of Goose, leads core agent harness at Factory

## Related

- [[entities/luke-alvoeiro]] — Luke Alvoeiro entity page
- [[concepts/agent-loop]] — Agent loop concept that Missions extends into a multi-agent system
- [[concepts/ralph-coding-technique]] — Ralph's monolithic approach contrasted with Missions' multi-agent architecture

## Open Questions

- How does Missions' validation contract approach compare to PostHog's AI Evals LLM-as-judge? Are these complementary or competing evaluation strategies? ^[ambiguous]
- The "serial execution with targeted parallelization" claim — does it generalize beyond Factory's use cases, or is it specific to their project domain? ^[inferred]
