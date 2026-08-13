---
title: "From Manual Prompting to Autonomous Loops — Lecture 13, Learn Harness Engineering (Walking Labs)"
category: references
type: reference
tags: [harness-engineering, agent-harness, loop-engineering, autonomous-agents, coding-agents]
sources:
  - "https://walkinglabs.github.io/learn-harness-engineering/en/lectures/lecture-13-loop-engineering/"
source_url: "https://walkinglabs.github.io/learn-harness-engineering/en/lectures/lecture-13-loop-engineering/"
created: "2026-08-13"
updated: "2026-08-13"
summary: "Lecture 13: loop engineering is designing the system that prompts your agent — /goal anatomy, six primitives, generator/evaluator separation, Karpathy's autoresearch, four silent costs."
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

# From Manual Prompting to Autonomous Loops — Lecture 13 (Learn Harness Engineering)

> [!tldr] Everything the first twelve lectures built (AGENTS.md, state management, feature lists, clean handoffs, observability) assumed you were sitting at the keyboard triggering every step. Loop engineering hands the "start button" to the system: define a goal, a verification method, and a stopping condition, and the agent loops until done — while the human moves from inside the loop to outside it, and leverage shifts from "writing the right prompt" to "designing the right loop."

**Course:** Learn Harness Engineering (Walking Labs), Lecture 13 — "From Manual Prompting to Autonomous Loops". No named author on the page. ^[ambiguous] Companion: Project 07 "Build Your First Automated Loop". Code examples: https://github.com/walkinglabs/learn-harness-engineering/blob/main/docs/en/lectures/lecture-13-loop-engineering/code/. Anchors: Addy Osmani's *Loop Engineering* essay (named the concept June 7, 2026), Boris Cherny (head of Claude Code), Peter Steinberger (OpenClaw), and Karpathy's autoresearch.

## Overview

Lecture 13 is the course's pivot from harness (reliable single runs) to loop (autonomous continuous runs). It argues the only difference between `/goal` and a traditional prompt is that the human no longer judges "done" — a verifiable stopping condition does. The lecture traces how `/goal` grew organically through four stages, classifies four loop types (turn-based, goal-based, time-based, event-driven), names the June 2026 moment when three practitioners independently converged on loop engineering, decomposes loops into six primitives, and elevates generator/evaluator separation to "the single most important reliability guarantee in loop design." Karpathy's autoresearch serves as the running exemplar, and the lecture closes with four silent costs that accumulate the longer a loop runs. ^[extracted]

## Key Points

### The /goal loop: goal + verification + stopping condition

- In early 2026, Claude Code and OpenAI Codex independently shipped `/goal` — type `/goal "All tests pass, zero lint warnings, merge to main"`, close the laptop, and the agent analyzes, codes, tests, fixes, and merges unattended. ^[extracted]
- A loop has exactly three parts: **a goal, a verification method, and a stopping condition.** Those three things move you from inside the loop to outside it. ^[extracted]
- Table contrast: traditional prompt = "what to do next", execute once, you judge done, you can't walk away; `/goal` = "what the end state looks like", loop until achieved, a verifiable stopping condition judges, you walk away the moment you type it. ^[extracted]

### How /goal grew organically: four stages

1. **Manual one-by-one prompting** — the agent stopped after every step; you were the scheduler. ^[extracted]
2. **Long multi-step prompts** — stacked steps ("analyze, implement, run tests, fix if they fail"), but you still had to watch for drift. ^[extracted]
3. **Self-reflection and self-direction** — the agent looked at results and decided next steps itself; the problem became *when does it stop* — practice answered that an agent's own "I'm done" does not count ("agents declare victory far too easily"). ^[extracted]
4. **Independent stopping judgment (/goal)** — judging "done" moves out of the working agent to an independent judge: a different model, a script, or a test command. "The person writing the code can't grade their own homework." ^[extracted]

The four stages were not a single company's roadmap — everyone coding with agents arrived at the same path independently, which is why Claude Code and Codex shipped `/goal` almost simultaneously in early 2026. ^[extracted]

### Loop taxonomy: four loop types; /goal vs /loop

| Type | Trigger | Stop condition |
|---|---|---|
| Turn-based | You type each prompt | Agent thinks it's done, or you interrupt |
| Goal-based | You give a goal | Independent evaluator confirms done, or max turns |
| Time-based | Scheduled interval | You stop it, or it exits after completing |
| Event-driven | External event (PR, CI fail, issue) | After handling the event, or retry limit |

- Mapping: Claude Code = normal chat / `/goal` / `/loop` / Routines (API + GitHub Webhook); Codex = normal chat / `/goal` (manual enable) / Thread automation / Standalone automation + plugins. ^[extracted]
- **One-sentence test:** does this thing have an end? Has an end → `/goal`; no end, just keep watching → `/loop`. Shoving a `/goal`-shaped task into `/loop` is a common mistake — `/loop` runs the same instruction independently each time and does not remember where it left off. ^[extracted]
- Loop Engineering is not any one command: "it's about being able to design systems that include all of these types — so your agent can keep working even when you're not there." ^[extracted]

### June 2026: three practitioners light the same fuse

- **Peter Steinberger** (OpenClaw creator; post reached 8M views): "You shouldn't be prompting coding agents anymore. You should be designing loops that prompt your agents." ^[extracted]
- **Boris Cherny** (head of Claude Code at Anthropic, on the Acquired podcast): "I don't prompt Claude anymore. I have loops running that prompt Claude... My job is to write loops." Disclosed: over 30 consecutive days all code contributions to Claude Code were autonomous — **259 merged PRs, 80%+ of production code authored by Claude, 76% success rate on open-ended software tasks**. ^[extracted]
- **Addy Osmani** (Google Chrome engineering lead) named the concept June 7, 2026: "Loop engineering is replacing yourself as the person who prompts the agent. You design the system that does it instead." ^[extracted]
- Why now: agents became reliable enough to finish non-trivial tasks unattended; scheduling primitives (`/loop`, `/goal`, cron) shipped inside the tools; single-run cost dropped low enough that timer-driven repetition stopped looking wasteful. "When all the parts are present, the move that combines them becomes obvious to everyone at once." ^[extracted]

### Inside the loop vs. outside the loop

- Scenario A (Lectures 1–12): full harness — AGENTS.md, feature_list.json, init.sh, claude-progress.md — but every step needs your manual initiation. You are the engine. ^[extracted]
- Scenario B (Loop Engineering): the system you designed discovers work, dispatches it, verifies results, records state, decides the next step. Your job shrinks to three things: **define the goal and stopping condition before it starts, review the output after it finishes, adjust the rules when it veers off course.** ^[extracted]

### The six primitives of a loop

Osmani's decomposition: five core building blocks plus one memory layer that threads through all of them — **External State is the spine, not a peer component** (drawn as a ring, but "the foundation the whole loop rests on"). ^[extracted]

1. **Automations — the heartbeat.** Without automation a loop is a one-off run. Claude Code layers: `/loop` (in-session, dies with session, auto-expires after 7 days), Desktop scheduled tasks (machine on, minute-level), Cloud Routines (Anthropic infra, 1-hour minimum interval, triggers: scheduled/API/GitHub webhook), GitHub Actions / self-hosted cron. Codex: Thread automation (heartbeat-style, preserves context) vs Standalone automation (fresh run each time, results to a Triage inbox; runs that find nothing auto-archive). OpenAI uses them internally for daily issue triage, CI failure summaries, commit briefings, bug hunting. ^[extracted]
2. **Worktrees — isolation at scale.** Two agents writing the same file is the inevitable failure mode past one agent; `git worktree` gives each agent its own branch/directory ("physically cannot touch each other's checkout"). Claude Code `--worktree` / Codex `isolation: worktree`. **Your review bandwidth is still the ceiling** — it bounds how many worktrees you can actually run. ^[extracted]
3. **Skills — stop re-explaining your project.** A folder with SKILL.md + optional scripts/references/assets; invoked via `/skill-name` or implicitly by description match. "Skills are fundamentally about paying your intent debt" — an agent starts every session cold and fills intent gaps with confident guesses; a skill is intent written down on the outside, written once, read every run. ^[extracted]
4. **Connectors — the loop touches real tools.** Built on MCP; read the issue tracker, query a database, hit a staging API, drop a Slack message. "The difference between 'here is the fix' and a loop that opens the PR, links the Linear ticket, and pings the channel once CI is green." ^[extracted]
5. **Sub-agents — keep the maker away from the checker.** Splitting writer from checker is "the most structurally valuable design choice in a loop"; the classic three-role split (implementer / reviewer / independent judge). ^[extracted]
6. **External State — the loop's memory.** "Models forget everything between runs. Memory must live on disk, not in the context window." A markdown file, a Linear board — anything outside a single conversation holding what is done / in progress / next. "The agent forgets. The repository doesn't." ^[extracted]

### Generator/evaluator separation: a model can't grade its own homework

- "A model is its own output's best defense attorney" — it gives itself a high score not from dishonesty but because generation convinced it the path was correct; "this is a property of all generative models," not a Claude or GPT problem. ^[extracted]
- **The fix: never let the same entity (same model, same prompt) do both work and review.** Claude Code's `/goal` uses an independent supervisor session; Codex sub-agents let you define a verifier with a different model and reasoning effort; community "adversarial verify" spawns N independent skeptics per finding, each prompted to refute, majority rejection kills the finding. ^[extracted]
- "Someone in your crew must not believe you." ^[extracted]

### Karpathy's autoresearch: the loop exemplar

- March 2026: a 630-line Python project; give it one GPU and a research direction and it runs all night completing hundreds of ML training experiments, keeping only those that improve; 66,000+ stars within days. ^[extracted]
- **Three files, three roles:** `prepare.py` (read-only — data prep, tokenizer, eval harness), `train.py` (~630 lines — model, optimizer, training loop; the agent's playground), `program.md` (you only edit — research methodology in natural language). "Humans don't touch code, they touch direction; agents don't touch direction, they touch code." ^[extracted]
- `program.md` is the brain: goal (optimize `val_bpb`), constraints (don't touch prepare.py, VRAM budget, fixed 5-minute training), exploration directions, evaluation rules, and an **iron rule: never stop**. Kickoff prompt can be one sentence: "Have a look at program.md and let's kick off a new experiment!" ^[extracted]
- A **nine-step ratchet** at the heart — only moves forward, never backward; ~12 experiments/hour, ~100 per overnight run; Karpathy ran it 2 days ≈ 700 experiments. The fixed 5-minute wall-clock budget makes all results comparable — "no argument about 'this one ran longer so it's better.'" ^[extracted]
- Outputs: git history as validated research log (only improving commits stay on main; failures rolled back), results.tsv as full experiment record (timestamp, commit_hash, val_bpb, vram_mb, description), and the agent's own research log. ^[extracted]
- Results: ~20 stackable real improvements out of ~700 attempts; nanochat's GPT-2-level training on 8×H100 reduced 2.02h → 1.80h (~11% faster); LR adjustments, optimizer tuning, activation swaps, attention patterns. ^[extracted]
- "The most telling detail: the loop is written in English, not code." **Don't give the agent a task — give it a methodology; let the methodology be the loop.** ^[extracted]

### Four silent costs

1. **Verification debt** — fast loops tempt you to skip verification; "Looks fine" ≠ "confirmed correct." Fix: stopping conditions must be machine-checkable, never "feels about right." ^[extracted]
2. **Comprehension rot** — the faster a loop ships code, the further your understanding of your own codebase drifts (Cherny's team: 80% of code authored by agents). "Fast loops require fast reading." ^[extracted]
3. **Cognitive surrender** — the comfortable posture of having no opinions about loop output; you'd be using the loop to avoid thinking rather than amplify it. Osmani: "Two people can build the exact same loop and get opposite results. One uses it to go faster on work they understand; the other uses it to avoid understanding the work. The loop doesn't know the difference. You do." ^[extracted]
4. **Token blowout** — every iteration accumulates context; without context management, prompt size grows roughly quadratically with the number of turns. Codex addresses this with automatic context compaction (a dedicated API compresses older turns into encrypted content summaries). Must be engineered from the first loop, not bolted on later. ^[extracted]

### Building your first loop and the maturity ladder

- Five steps: pick one recurring task (≥2×/week); write a goal and stopping condition; split maker and checker (implementer vs verifier with cited evidence); add memory (a markdown state file read at the start of each run — "beats any complex database"); set a timer (`/loop` or cron), start once a day, observe a week. ^[extracted]
- **Maturity ladder:** Level 1 Goal Runner (`/goal` with a stopping condition) → Level 2 Scheduled Single-Task (one automation on a timer) → Level 3 Multi-Agent Loop (maker/checker split; each finding forks an isolated worktree) → Level 4 Self-Feeding Loop (auto-discovers next task from external state) → Level 5 Fleet Orchestration (parallel loops sharing a memory layer). Most teams sit between Level 2 and 3; Level 1 is the fastest path to returns. ^[extracted]

## Concepts

- [[concepts/loop-engineering|Loop Engineering]] — this lecture is the course's dedicated loop-engineering unit; its claims are merged into that page
- [[concepts/ai-harness|AI Harness]] — "Loop Engineering does not replace Harness Engineering — it builds one floor above it": harness makes single runs reliable, loops make continuous runs autonomous
- [[concepts/agent-loop|Agent Loop]] — the four-type taxonomy classifies agent-loop trigger/stop combinations
- [[concepts/agent-exit-strategies|Agent Exit Strategies]] — independent stopping judgment is the exit strategy `/goal` operationalizes
- [[concepts/agent-evaluations|Agent Evaluations]] — generator/evaluator separation is the baseline reliability guarantee for loop evals
- [[concepts/reward-hacking|Reward Hacking]] — "a model is its own output's best defense attorney"; self-grading is the reward-hacking root
- [[concepts/context-rot|Context Rot]] — external state + Codex-style compaction are the token-blowout cure ^[inferred]
- [[concepts/test-time-compute-scaling|Test-Time Compute Scaling]] — unattended loops are test-time compute made continuous ^[inferred]

## Entities

- [[entities/walkinglabs|Walking Labs]] — course publisher; Project 07 "Build Your First Automated Loop" companion
- [[entities/boris-cherny|Boris Cherny]] — head of Claude Code at Anthropic; the 259-PRs-in-30-days disclosure
- [[entities/peter-steinberger|Peter Steinberger]] — OpenClaw creator; "design loops that prompt your agents"
- [[entities/karpathy|Karpathy]] — autoresearch as the loop exemplar (stub page)
- [[entities/claude-code|Claude Code]] — `/goal`, `/loop`, Desktop scheduled tasks, Cloud Routines, worktrees, skills
- [[entities/codex|Codex]] — `/goal` (manual enable), Thread/Standalone automation, Triage inbox, automatic context compaction
- [[entities/anthropic|Anthropic]] — Claude Code vendor; Cloud Routines infrastructure ^[inferred]
- [[entities/openai|OpenAI]] — Codex vendor; internal automations usage ^[inferred]
- Addy Osmani (Google Chrome engineering lead) — named the concept June 7, 2026; no entity page in the vault yet.

## Open Questions

- Cherny's 259 PRs / 80% production code / 76% success-rate numbers are disclosed without methodology (task mix, model versions, success definition). ^[ambiguous]
- The nine-step ratchet is named but its steps are not enumerated in the text (rendered as a diagram). ^[ambiguous]
- "Context grows roughly quadratically with turns" is asserted without mechanism; it conflicts with stateless-iteration designs that hold per-iteration cost constant — both positions are noted with dates on [[concepts/loop-engineering|Loop Engineering]].
- "Adversarial verify" (N skeptics, majority rejection) has no cost/benefit data — N× the eval spend per finding. ^[inferred]

## Related

- [[references/knowing-when-to-stop-loop-convergence|Knowing When to Stop — Loop Convergence]] — the verifier/stopping-rule lens this lecture operationalizes as generator/evaluator separation
- [[references/harness-lecture-09-declare-victory-too-early|Declaring Victory Too Early — Lecture 09]] — Stage 3's failure ("agents declare victory far too easily") is Lecture 09's entire subject
- [[references/harness-lecture-11-observability-in-harness|Observability in the Harness — Lecture 11]] — "the faster a loop runs, the more you need observability to catch problems"
- [[references/harness-lecture-08-feature-lists-primitives|Feature Lists as Harness Primitives — Lecture 08]] — feature lists are the natural task source for a self-feeding loop (Level 4)
- [[references/harness-lecture-05-long-running-tasks-continuity|Long-Running Tasks Continuity — Lecture 05]] — prerequisite knowledge for external state and memory
- [[misc/web-walkinglabs-github-io-learn-harness-engineering-en|Learn Harness Engineering (Course Landing)]] — course hub; Lecture 13 listed in the 14-lecture index
- Lecture 12 (clean handoff) and Lecture 14 (graph engineering) are the adjacent promised siblings of this series; not yet on disk at write time.
