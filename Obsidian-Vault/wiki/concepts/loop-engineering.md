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
  - "https://x.com/h100envy/status/2068987470960623783"
summary: A seven-step technical roadmap for building autonomous loops that converge to truth without blowing up — from deterministic checks through isolation, brakes, and cost accounting.
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.60
lifecycle: draft
tier: supporting
created: 2026-07-13T00:00:00Z
updated: 2026-07-13T00:00:00Z
relationships:
  - target: "[[concepts/agent-loop|Agent Loop]]"
    type: extends
  - target: "[[concepts/reward-hacking|Reward Hacking]]"
    type: related_to
  - target: "[[concepts/context-rot|Context Rot]]"
    type: related_to
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

## Open Questions

- How does this roadmap scale to multi-agent loops where agents coordinate across sub-loops?
- The "dumb" relevance heuristic (stack-trace + diff files) may miss deeper dependencies — what signal quality threshold justifies the complexity of embedding-based file selection? ^[inferred]
- The judge-on-a-different-model defense doubles cost per turn — is there a lighter-weight verification pattern for low-budget loops? ^[inferred]

## Related

- [[concepts/agent-loop|Agent Loop]] — the broader agent iteration pattern
- [[concepts/reward-hacking|Reward Hacking]] — the RL-origin concept this work adapts to autonomous loops
- [[concepts/context-rot|Context Rot]] — the degradation phenomenon stateless iteration cures
- [[concepts/auto-research-loop|Auto Research Loop]] — a parallel autonomous iteration pattern
- [[concepts/12-factor-agents|12-Factor Agents]] — codified patterns for reliable LLM applications
