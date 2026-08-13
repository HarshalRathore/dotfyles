---
title: Loop Engineering
category: concepts
tags:
  - loop-engineering
  - agent-architecture
  - autonomous-agents
  - engineering-patterns
  - reliability
sources:
  - "https://commandcode.ai/docs/harness-engineering/read-tool"
  - "https://x.com/MrAhmadAwais/status/2086521445694517404"
  - "https://x.com/h100envy/status/2068987470960623783"
  - "https://posthog.com/self-driving"
  - "https://x.com/posthog/status/2075645235724767739"
  - "https://x.com/zhengyaojiang/status/2077079778793042425"
  - "https://spectrum.ieee.org/ai-science-research-flattens-discovery"
  - "https://x.com/i/status/2083231950744244360"
  - "https://posthog.com/blog/10k-prs-a-month"
  - "https://video.twimg.com/amplify_video/2083930623962406912/vid/avc1/1922x1080/Z6F8963hpN2se-3A.mp4"
  - "https://x.com/i/status/2085392969558089980"
  - "https://x.com/i/status/2084613319558635940"
  - "https://walkinglabs.github.io/learn-harness-engineering/en/lectures/lecture-13-loop-engineering/"
summary: "Loop roadmap: deterministic checks, stateless iteration, reward-hacking defense, brakes, cost accounting; sub-pages: product-vs-research loops, verifier lens, failure modes, Hermes walkthrough."
provenance:
  extracted: 0.78
  inferred: 0.18
  ambiguous: 0.04
base_confidence: 0.78
lifecycle: draft
tier: supporting
created: 2026-07-13T00:00:00Z
updated: 2026-08-13
relationships:
  - target: "[[concepts/agent-loop|Agent Loop]]"
    type: extends
  - target: "[[concepts/reward-hacking|Reward Hacking]]"
    type: related_to
  - target: "[[concepts/context-rot|Context Rot]]"
    type: related_to
  - target: "[[concepts/continuous-eval-loops|Continuous Eval Loops]]"
    type: related_to
  - target: "[[references/google-agents-to-autonomous-systems-course]]"
    type: derived_from
---

# Loop Engineering

A technical roadmap for building autonomous loops that converge reliably without blowing up — distilled from [[entities/h100envy|H100Envoy]]'s step-by-step guide to engineering production-grade self-running loops. The core thesis: the ceiling skill is not writing a prompt but building a loop that converges to truth instead of becoming an expensive random walk.[^[inferred]]

## Core Distinction: Loop vs Prompt

A prompt requires you to turn it yourself. A loop turns itself: set the goal once, then the system finds work, does it, checks it, fixes it, and repeats until done.[^[extracted]]

## Step 0: The Deterministic Check Filter

A loop only makes sense if there is a check that delivers a verdict independent of the agent.[^[extracted]]

The model that generates a solution and also grades it faces a conflict of interest at the statistical level: its own output is a high-probability continuation, so it systematically overrates correctness. Self-assessment is an echo, not a check.[^[extracted]]

**Requirements for a valid check:**
- Must be an external deterministic oracle (test exit code, type-checker, linter, build)
- Must be deterministic and idempotent — a flaky test is worse than no test, because it breaks the stop condition
- Run the check 10 times on one state before building the loop; if not stable, fix the check first[^[extracted]]

**Rule:** If a deterministic oracle is not possible, do not build the loop.[^[extracted]]

## Step 1: Reliable Manual Run With Measurement

Do not automate what does not work by hand. Complete one manual run to a green check, and additionally measure: model call count, token usage, and the most frequent error type.[^[extracted]]

This baseline is critical for detecting when the loop burns three times as much — you need something to compare against. If the manual run is unstable, the loop multiplies that instability by the iteration count.[^[extracted]]

## Step 2: Minimal Stateless Loop

The simplest working loop is a while-loop feeding the agent a prompt until the check is green.[^[extracted]]

The key engineering decision is **stateless iteration**: each iteration launches the agent from clean context. This cures context rot radically — progress is held on the filesystem and git, not in the agent's memory. Each run sees the changed files and the red test, reads them anew, and works with a short fresh context where instructions are in plain view.[^[extracted]]

- **MAX_ITER** is the first fuse. Without it the loop spins until money runs out.[^[extracted]]
- State lives on disk, not in the context window.[^[extracted]]

## Step 2.5: Narrow Context Assembly

The right iteration context is three things and nothing extra: current state (what is done and what is blocked), the specific open failure being worked on, and only the files relevant to that failure.[^[extracted]]

**The relevance heuristic (deliberately simple):**
- Files mentioned in the failing test's stack trace
- Files changed in the last diff
- The test's own imports

**Token budget** is an explicit ceiling on context size, ensuring every iteration stays equally light and cost-linear.[^[extracted]]

## Step 3: Reward-Hacking Defense

The agent will try to fool the check through optimization — not malice, but finding the cheapest path to green, which is often breaking the test rather than fixing the code. This is reward hacking in the agentic context.[^[extracted]]

**Defense layers:**
1. Prompt prohibition ("do not weaken the tests") — weakest layer[^[extracted]]
2. A second check the agent does not control (e.g., tests in a read-only directory, or a git-diff gate verifying test files did not change)[^[extracted]]
3. An independent judge on a different model — a model catches its own self-deception patterns poorly but catches others' well[^[extracted]]

## Step 4: State on Disk

The model forgets when the run ends. Memory lives in a file the loop reads first and writes last, at two levels:[^[extracted]]

- **STATUS.md** — human-readable summary of progress for the morning glance
- **.loop_state.json** — machine-parsable state for the loop's logic, must not depend on how the model rephrased its plan

The split exists because human-readable and machine-parsable serve different requirements. Free text the model may reread differently from run to run, so critical fields go into structured JSON.[^[extracted]]

## Step 5: Isolation and Blast Radius

**Physical isolation via git worktree** gives the loop a separate working copy on its own branch, detached from the main tree. For real isolation, a container with stripped permissions:[^[extracted]]

- `--network none` — necessary against prompt injection from untrusted input
- `--read-only` — writable only the working folder
- Blast radius is about security, not only errors: define the loop by what it can destroy, not what you want it to do[^[extracted]]

## Step 6: Brakes With Observability

Structured logging with each event as a JSON line (timestamp, iteration, event type, detail) enables diagnosis after the loop dies: was it a runaway, stuck on the same failure, silent death, or reward hacking?[^[extracted]]

**Minimal brakes:** iteration limit, budget cap per turn, repeat detector (same failure 3 times = stuck), liveness marker (heartbeat file), and the reward-hacking gate.[^[extracted]]

## Step 7: Cost Accounting

A loop costs not "N model calls" but the sum of growing contexts. Stateless iteration keeps per-iteration cost roughly constant.[^[extracted]]

**Rough estimate:** cost ≈ iteration count × (state tokens + work tokens per iteration) × price. The real spread: braked loops close work for hundreds of dollars, unbraked ones burn tens of thousands. The difference is not the model but whether there was a real check and limits.[^[extracted]]

## How Loops Die (by the Log)

Four failure modes identified from the structured log:[^[extracted]]

1. **Runaway** — bill and iterations climb, no green. Cure: step and budget limits.
2. **Silent death** — the heartbeat stopped updating. Cause: full context. Cure: fresh context per phase.
3. **Random walk** — failure changes every time, no progress to green. Cause: no hard stop condition. Cure: deterministic fixpoint check.
4. **Understanding debt** — the repo grows, you understand less. Not visible in the log. This is the most dangerous. Cure: mandatory human review that cannot be skipped — no code fixes it.[^[extracted]]

The first three are engineering bugs (the log catches them). The fourth is degradation as an engineer, and no code fixes it.[^[inferred]]

## Framework Loops

The raw while-loop is not the only valid form: ADK's **runner** is the loop as a framework object — an event loop where every LM decision and tool call is an event, with state externalized to a session service and a live request queue decoupling upstream input from downstream consumption for real-time agents. It implements the same discipline as Step 2 (stateless iteration, state outside the model) inside managed infrastructure. ^[extracted] See [[references/google-agents-to-autonomous-systems-course]].

## 2026-08-13 — Course Lens: Walking Labs Lecture 13 (From Manual Prompting to Autonomous Loops)

Distilled from [[references/harness-lecture-13-loop-engineering|Lecture 13 of the Learn Harness Engineering course]] — the course's dedicated loop-engineering unit, anchored on Addy Osmani's *Loop Engineering* essay (which named the concept June 7, 2026: "Loop engineering is replacing yourself as the person who prompts the agent"). It frames this roadmap as the harness→loop floor transition: "Loop Engineering does not replace Harness Engineering — it builds one floor above it. The harness makes single runs reliable. The loop makes continuous runs autonomous." ^[extracted]

- **/goal as the minimal loop.** `/goal` (shipped independently by Claude Code and OpenAI Codex in early 2026) has exactly three parts — a goal, a verification method, and a stopping condition — and those three move the human from inside the loop to outside it. ^[extracted] This is the same skeleton as this roadmap's Step 0 (deterministic check) + Step 2 (while-loop) + stopping rule. ^[inferred]
- **Four-stage evolution of /goal:** manual one-by-one prompting → long multi-step prompts → agent self-reflection/self-direction → independent stopping judgment. Stage 3's failure ("agents declare victory far too easily") is Lecture 09's subject; Stage 4 externalizes "done" to an independent judge — "the person writing the code can't grade their own homework." ^[extracted]
- **Loop taxonomy:** turn-based / goal-based / time-based / event-driven loops, each with its own trigger and stop condition; the decision rule is "does this thing have an end?" (has an end → goal-based; no end → keep watching). ^[extracted] Extends the Framework Loops section: raw while-loops, framework runners (ADK), and product-command loops are all goal-based-loop instances. ^[inferred]
- **Six primitives:** Automations (the heartbeat; `/loop`, Desktop scheduled tasks, Cloud Routines, event triggers, cron), Worktrees (git-worktree isolation; "your review bandwidth is still the ceiling"), Skills (paying intent debt), Connectors (MCP), Sub-agents (generator/evaluator separation), External State (memory on disk — "the agent forgets. The repository doesn't."). ^[extracted] Primitives 2, 5, 6 map directly to this roadmap's Steps 4–6 (state on disk, isolation, brakes-with-observability). ^[inferred]
- **Generator/evaluator separation as "the single most important reliability guarantee in loop design":** "A model is its own output's best defense attorney" — self-grading fails not from dishonesty but from generation bias; the fix is never letting the same entity (same model, same prompt) do both work and review. Claude Code's `/goal` uses an independent supervisor session; Codex sub-agents allow a verifier on a different model with different reasoning effort; the community "adversarial verify" pattern spawns N independent skeptics per finding with majority-rejection voting. ^[extracted] This is the strongest statement yet of Step 3's judge-on-a-different-model defense. ^[inferred]
- **Karpathy's autoresearch as the loop exemplar:** three files with a razor-sharp role split — `prepare.py` read-only, `train.py` the agent's playground, `program.md` (English methodology, iron rule "never stop") the only human-edited file; a nine-step ratchet that only moves forward; a fixed 5-minute wall-clock experiment budget so all results are comparable; git history as a validated research log and results.tsv as the full experiment record; ~20 stackable improvements from ~700 experiments (nanochat GPT-2 training 2.02h → 1.80h on 8×H100). ^[extracted] "Don't give the agent a task. Give it a methodology. Let the methodology be the loop." ^[extracted]
- **Four silent costs:** verification debt (stopping conditions must be machine-checkable, never "feels about right"), comprehension rot, cognitive surrender (the human-side failure — "Two people can build the exact same loop and get opposite results... The loop doesn't know the difference. You do."), and token blowout (context grows roughly quadratically without management; Codex automatic context compaction compresses older turns into encrypted content summaries). ^[extracted]
- **Maturity ladder:** Goal Runner → Scheduled Single-Task → Multi-Agent Loop → Self-Feeding Loop → Fleet Orchestration; most teams sit between Levels 2 and 3. ^[extracted]

**Naming and contradiction notes:** "comprehension rot" (2026-08-13) is this page's "Understanding debt" (2026-07-13) under a second name — same phenomenon, both recorded. Token blowout is the mechanism behind Step 7's growing-context cost and the silent-death failure mode (full context). The lecture's "context grows roughly quadratically with turns" (stateful accumulation) sits against Step 2's claim that stateless iteration keeps per-iteration cost constant — the two describe different architectures rather than disagreeing; both positions recorded with dates. ^[inferred]


## Sub-Pages

Detailed analyses extracted to keep this page scannable:
- [[references/loop-engineering-product-vs-research-loops|Product vs Research Loops]]
- [[references/loop-engineering-convergence-and-verifier|Convergence & the Verifier (Yoko Li)]]
- [[references/loop-engineering-failure-modes|Failure Modes: Relational Deadlock]]
- [[references/loop-engineering-hermes-walkthrough|Hermes Walkthrough (Sean)]]

## Open Questions

- How does this roadmap scale to multi-agent loops where agents coordinate across sub-loops?
- The "dumb" relevance heuristic (stack-trace + diff files) may miss deeper dependencies — what signal quality threshold justifies the complexity of embedding-based file selection? ^[inferred]
- The judge-on-a-different-model defense doubles cost per turn — is there a lighter-weight verification pattern for low-budget loops? ^[inferred]
- Does the roadmap apply symmetrically to RSI systems like AIDE², where the "loop" includes a meta-optimizer (outer loop) over the inner agent? The inner loop's statelessness requirement may conflict with the outer loop's need to accumulate state across iterations. ^[inferred]
- PostHog's bounded model (human merge gate, sandboxed execution) is the safest known deployment of autonomous loops — does it generalize to domains beyond product engineering (e.g., scientific research, content moderation)? ^[inferred]

## Related

- [[concepts/agent-loop|Agent Loop]] — the broader agent iteration pattern
- [[concepts/reward-hacking|Reward Hacking]] — the RL-origin concept this work adapts to autonomous loops
- [[concepts/context-rot|Context Rot]] — the degradation phenomenon stateless iteration cures
- [[concepts/auto-research-loop|Auto Research Loop]] — a parallel autonomous iteration pattern
- [[concepts/12-factor-agents|12-Factor Agents]] — codified patterns for reliable LLM applications
- [[concepts/continuous-eval-loops|Continuous Eval Loops]] — The operational cycle for eval-driven improvement; AIDE²'s nested loop architecture is a concrete case study for this roadmap
- [[misc/web-posthog-com-blog-what-if-your-product-built-itself]] — PostHog's self-driving product improvement pipeline as a product-loop application of the roadmap
