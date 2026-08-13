---
title: "Why Capable Agents Still Fail — Learn Harness Engineering Lecture 1"
created: 2026-08-13
updated: 2026-08-13
type: reference
category: references
tags: [harness-engineering, agent-harness, agent-reliability, verification, failure-modes]
sources:
  - "https://walkinglabs.github.io/learn-harness-engineering/en/lectures/lecture-01-why-capable-agents-still-fail/"
base_confidence: 0.85
lifecycle: draft
tier: supporting
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
summary: "Lecture 1 of Learn Harness Engineering: strong models fail on real tasks due to harness gaps — five failure layers, the diagnostic loop, and Anthropic's/OpenAI's controlled experiments."
---

# Why Capable Agents Still Fail — Learn Harness Engineering, Lecture 1

> [!tldr] A strong model is not enough for reliable execution. Bare, the best coding agents fail everyday tasks; wrapped in a harness — instructions, tools, environment, verification, state — the *same* model flips from unreliable to reliable. Fix the harness before you swap the model.

**Source:** Learn Harness Engineering (Walking Labs), Lecture 1 — "Strong Models Don't Mean Reliable Execution" (Why Capable Agents Still Fail). Course repo: walkinglabs/learn-harness-engineering. ^[extracted]

## Overview

As of late 2025 the strongest coding agents score roughly 50–60% on SWE-bench Verified — and those are curated tasks with clear issue descriptions and ready-made tests. Hand an agent everyday requirements (vague specs, no tests, implicit business rules scattered across the codebase) and the pass rate drops further. The archetypal failure: the agent runs for 20 minutes, reports "all done," and has added a feature while breaking tests, fixed a bug while introducing new ones, and built something other than what was asked. The lecture's central argument is that the reflexive diagnosis — "the model isn't good enough, buy a more expensive one" — is usually wrong: the bottleneck is the **harness**, the engineering infrastructure around the model. ^[extracted]

## Key Points

### The thesis: capability ≠ reliable execution

- SWE-bench Verified ~50–60% pass rates mean nearly half of real issues go unresolved; real-world tasks do worse. ^[extracted]
- Default reaction to failure — "the model isn't good enough — let me try a more expensive one" — misses that the problem may not be the model at all. ^[extracted]

### Same horse, different fates: the controlled evidence

- **Anthropic controlled experiment:** same prompt ("build a 2D retro game editor"), same model (Opus 4.5), two runs. Bare run: 20 minutes, $9, core features didn't work. Full harness run (planner + generator + evaluator, a three-agent architecture): 6 hours, $200, game fully playable. The model was unchanged — "what changed was the tack." ^[extracted]
- **OpenAI's 2025 harness-engineering article:** Codex in a well-harnessed repository goes "from unreliable straight to reliable" — the lecture stresses the wording: a qualitative leap, not "a bit better." ^[extracted]
- **Harness definition:** "everything outside the model — instructions, tools, environment, state management, verification feedback. If it's not model weights, it's harness." ^[extracted]

### Where agents actually get stuck: five failure modes

- **Vague requirements** — the agent can only guess. "Add a search feature" says nothing about search type, pagination, or highlighting; a correct guess is luck, a wrong one costs several times more than being specific upfront. ^[extracted]
- **Implicit conventions not written down** — the team uses SQLAlchemy 2.0 syntax but the agent writes 1.x by default; the "all endpoints through OAuth 2.0" rule lives only in someone's head and a Slack message from three months ago. The agent literally never saw the rule. ^[extracted]
- **Incomplete environment setup** — missing dependencies, wrong tool versions; the agent burns precious context window on `pip install` errors and Node version conflicts instead of the actual task. ^[extracted]
- **No verification methods** — the agent calls it done when it feels done. Anthropic also observed **"context anxiety":** agents sensing low context rush to finish, skip verification steps, and pick a simple solution over the optimal one. ^[extracted]
- **Cross-session state loss** — every session starts from scratch, re-exploring the project and re-understanding the codebase; failure rates spike sharply on tasks exceeding 30 minutes. ^[extracted]
- Together these map onto the existing [[concepts/agent-failure-modes|Agent Failure Modes]] taxonomy — the lecture's list is the practitioner-side formulation. ^[inferred]

### Key terminology

- **Capability Gap** — the gulf between model performance on benchmarks and on real tasks. ^[extracted]
- **Harness** — everything outside the model weights. ^[extracted]
- **Harness-Induced Failure** — the model has sufficient capability but the execution environment has structural defects; Anthropic's experiment is the proof. ^[extracted]
- **Verification Gap** — the gap between the agent's confidence in its output and actual correctness; "I'm done" when it's not — the most common failure mode. ^[extracted]
- **Diagnostic Loop** — execute, observe failure, attribute it to a specific harness layer, fix that layer, re-execute; the core methodology of harness engineering. ^[extracted]
- **Definition of Done** — a set of conditions verifiable by command (tests pass, lint clean, type checks pass); without an explicit one, the agent invents its own. ^[extracted]

### When things fail, fix the harness first

- Core principle: don't swap the model first — check the harness. If the same model succeeds on similar well-structured tasks, assume it's a harness problem. ^[extracted]
- **Five defense layers** for failure attribution: task specification, context provision, execution environment, verification feedback, state management. These are failure-diagnosis layers, not additional core concepts. ^[extracted]
- Write an explicit Definition of Done per task — e.g. new `GET /api/search?q=xxx` endpoint, pagination defaulting to 20 items, highlighted snippets, all new code passes `pytest`, type checking passes (`mypy --strict`). ^[extracted]
- Place an `AGENTS.md` at the repo root covering tech stack, architectural conventions, and verification commands — "the first step in harness engineering, and the one with the highest return on investment." One AGENTS.md "might be more effective than upgrading to a more expensive model — and that's not a joke." ^[extracted]
- Build the diagnostic loop with a simple log (per task: succeed/fail, and which layer caused the failure); after a few rounds the bottleneck layer emerges. ^[extracted]

### The Million-Line Experiment (OpenAI, 2025)

- Three OpenAI engineers, rule: only Codex writes code. Empty git repo → roughly one million lines in five months — application logic, infrastructure, tooling, documentation; 1,500 PRs opened (~3.5 per person per day). ^[extracted]
- Early progress was slow — Codex "wasn't bad, it just lacked tools and structures complete enough to drive toward high-level objectives." The winning pattern: break large goals into small building blocks (design, code, review, test), assemble them, then compose more complex tasks. ^[extracted]
- Failure attribution rule: the problem was almost never "not trying hard enough," but "what is the agent still missing, and can that missing capability be supplied in a way that is both understandable and executable?" ^[extracted]
- The experiment directly proves the lecture's thesis: the same model produces fundamentally different output bare versus fully harnessed — "the model didn't change. The environment did." ^[extracted]

### Down-to-earth example: adding API endpoints with Claude Sonnet

- A team added user-preference endpoints to a FastAPI + PostgreSQL + Redis app (~15,000 LOC) with Claude Sonnet. One-sentence prompt → 40% of the context window spent exploring the repo, code that ignored the project's error-handling patterns, old SQLAlchemy syntax, runtime errors at the endpoint — and a declared completion. The next session had to redo all discovery. ^[extracted]
- After adding `AGENTS.md` (architecture, tech stack versions), explicit verification commands (`pytest tests/api/v2/ && python -m mypy src/`), and architecture decision records: the same model succeeded in all three independent runs, with ~60% better context efficiency. ^[extracted]
- "They didn't change the model. They changed the harness." ^[extracted]

### Key takeaways

- Model capability and execution reliability are two different things — "even a thoroughbred needs good tack." ^[extracted]
- When things fail, check the harness first, then the model; swapping models is the most expensive option — and usually not even a model problem. ^[extracted]
- Every failure is a signal: your harness has a structural defect. Find it and fix it. ^[extracted]
- Work the five layers systematically (task, context, environment, verification, state) — "nine times out of ten the problem lives in one of those layers." ^[extracted]
- One `AGENTS.md` file might be more effective than upgrading to a more expensive model. ^[extracted]

## Concepts

- [[concepts/ai-harness|AI Agentic Harness]] — the lecture's central object; harness = everything outside the model weights
- [[concepts/agent-failure-modes|Agent Failure Modes]] — the lecture's five failure modes as a classification lens
- [[concepts/context-engineering|Context Engineering]] — implicit conventions and context provision are harness layers; getting the right tokens in
- [[concepts/loop-engineering|Loop Engineering]] — the diagnostic loop is harness engineering's operational loop; verification feedback closes it
- [[concepts/agents-md|AGENTS.md]] — the lecture's highest-ROI harness artifact
- [[concepts/instruction-budget|Instruction Budget]] — why AGENTS.md/Definition-of-Done guidance must stay lean to remain effective ^[inferred]
- [[concepts/swe-bench|SWE Bench]] and [[concepts/swingbench-verified|SWE-bench Verified]] — the benchmark basis for the capability gap
- [[references/knowing-when-to-stop-loop-convergence|Knowing When to Stop: Loop Convergence]] — the stopping-rule counterpart to the verification gap

## Entities

- [[entities/anthropic|Anthropic]] — the Opus 4.5 controlled experiment; the "context anxiety" observation
- [[entities/openai|OpenAI]] — the 2025 harness-engineering article; the Million-Line Experiment
- [[entities/claude-code|Claude Code]] — the course's reference coding agent ^[inferred]
- [[entities/codex|Codex CLI]] — subject of OpenAI's harness article and the Million-Line Experiment
- [[entities/humanlayer|HumanLayer]] — publisher of the "Skill Issue — Harness Engineering for Coding Agents" further-reading piece

## Open Questions

- How robust is the 30-minute state-loss threshold? The lecture states it flatly without citing an experiment. ^[ambiguous]
- Is "nine times out of ten" (five-layer attribution) a measured rate or a rule of thumb? ^[ambiguous]
- What is the minimal viable harness? The Anthropic experiment contrasts bare vs full three-agent harness, but nothing in between is characterized. ^[inferred]
- The lecture's Definition of Done overlaps the verifier/stopping-rule lens of loop convergence, yet the course doesn't cross-reference that literature — the two treatments are complementary but unconnected. ^[inferred]

## Related

- [[references/knowing-when-to-stop-loop-convergence|Knowing When to Stop: The Art of Making a Loop Converge]] — the verifier defines progress; the lecture's Verification Gap is the failure half of that mechanism
- [[references/h100envy-loop-engineering|Loop Engineering: A Technical Roadmap (h100envy)]] — deterministic checks and brakes operationalize the lecture's diagnostic loop ^[inferred]
- [[references/command-code-read-tool-harness-engineering|How Command Code's Read Tool Saves Tokens vs Claude Code]] — read-tool design as a context-provision harness layer
