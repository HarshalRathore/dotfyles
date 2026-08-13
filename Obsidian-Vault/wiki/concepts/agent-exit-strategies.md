---
title: "Agent Exit Strategies"
category: concepts
tags:
  - agent-loop
  - agent-termination
  - control-flow
  - agent-design
summary: "Patterns for determining when an agent loop should terminate: plain text output, final result tools, structured output types, iteration limits, and harness-enforced scope controls (WIP=1, completion evidence, VCR)."
sources:
  - "AIEF2025 - Human seeded Evals — Samuel Colvin, Pydantic - https://www.youtube.com/watch?v=o_LRtAomJCs"
  - "https://x.com/i/status/2085392969558089980"
  - "https://walkinglabs.github.io/learn-harness-engineering/en/lectures/lecture-07-why-agents-overreach-and-under-finish/"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-08-13T05:00:00Z
relationships:
  - target: "[[concepts/agent-loop]]"
    type: implements
  - target: "[[concepts/structured-output]]"
    type: relates_to
  - target: "[[concepts/open-loop-planning]]"
    type: contrasts_with
---

# Agent Exit Strategies

**Agent exit strategies** are patterns for determining when an agent loop should terminate. The exit problem is one of the hardest in agent design — even a simple pseudocode agent definition often lacks an exit condition, leading to infinite loops. ^[extracted]

## The Exit Problem

[[entities/samuel-colvin|Samuel Colvin]] noted that the widely-cited definition of an agent (from [[entities/barry-zhang|Barry Zhang]]'s talk at AI Engineer NYC, adopted by Anthropic, OpenAI, and Google's ADK) describes an agent as a while loop with tools, system prompt, and environment — but "there is no exit from that loop." ^[extracted]

## Common Exit Strategies

### 1. Plain Text Output

When the LLM returns plain text instead of calling a tool, the run ends. This is the simplest strategy but requires the model to distinguish between "I need to call a tool" and "I'm done." ^[extracted]

### 2. Final Result Tools

Specific tools are designated as "final result tools" — when called, they trigger the end of the run. This gives the developer explicit control over when the agent stops. ^[extracted]

### 3. Structured Output Types

When models support structured output (OpenAI, Google), the LLM's structured response can serve as the termination signal. The model either produces structured output (done) or calls a tool (continue). ^[extracted]

### 4. Iteration Limits

A maximum iteration count prevents infinite loops. This is a safety net rather than a primary strategy — the agent should normally exit before hitting the limit. ^[inferred]

### 5. External Verifier Stop Conditions

[[entities/yoko-li|Yoko Li]]'s loop-convergence essay ([[references/knowing-when-to-stop-loop-convergence|Knowing When to Stop]]) adds the verifier lens: *"done" is rarely a property of the work itself — it is a judgment produced by the system around the work*, and models have no internal detector for done. ^[extracted]

- The stop condition should come from **outside the generator**: tests passing, constraints satisfied, a score crossing a threshold, or a reviewer approving the result. ^[extracted]
- The stopping rule must account for **cost** — a loop that reaches the right answer after 500 attempts may converge technically but not economically; returns on test-time compute are logarithmic and can go negative past the plateau (reasoning models with larger budgets start abandoning answers that were already correct). ^[extracted]
- Escape hatches are unreliable: in her Lighthouse stress-test, Claude correctly diagnosed an impossible goal around try 5, but the evaluator model bounced the result back **14 times** anyway. Stopping well is infrastructure (metered spend, progress-per-dollar, a cut-off mechanism), not something you can prompt into existence. ^[extracted]

## Harness-Enforced Scope Controls

### 2026-08 — Learn Harness Engineering (Walking Labs)

Lecture 7 ("Draw Clear Task Boundaries for Agents") reframes the exit problem as the overreach/under-finish pair and locates the fix in the harness, not the model: agents overreach (activate more tasks than optimal) and under-finish (stop before end-to-end verification passes); broad prompts make agents "start multiple things at once" rather than "finish one thing first" (Anthropic's harnesses blog), and tasks without explicit scope controls see completion rates plummet (OpenAI Codex engineering practices). ^[extracted]

- **Completion evidence as the exit condition** — a task may leave "in progress" only when a verifiable condition passes; done is "behavior verification passes," never "the code looks fine." Every feature-list entry carries an executable verification command (e.g. `curl -X POST /api/register ... | jq .status == 201`) and a state. ^[extracted]
- **WIP=1 as a termination-enabling constraint** — only one task may be "active" at a time; the next task starts only after the current one passes end-to-end verification. The harness exerts this as **completion pressure** (WIP limits + completion-evidence requirements), enforced via work rules in CLAUDE.md/AGENTS.md. ^[extracted]
- **VCR gate** — the harness tracks Verified Completion Rate = verified tasks / activated tasks and blocks new task activations when VCR < 1.0, making premature exit structurally impossible. ^[extracted]
- **Externalized scope surface** — a machine-readable file (JSON/Markdown) in the repo records all task states (`not_started`, `active`, `blocked`, `passing`), so any new session knows what done means and what has already been verified — the exit rule survives across sessions. ^[extracted]
- **Evidence** — Anthropic's "small next step" strategy (WIP=1 equivalent) showed a 37% higher task completion rate than broad prompts; lines of code are weakly negatively correlated with feature completion. In the lecture's 8-feature REST API case, WIP=1 finished 7/8 features (87.5%) with 800 total lines vs 3/8 (37.5%) with 1200 lines unconstrained. ^[extracted]
- Consistent with the verifier lens above: done comes from outside the generator (completion evidence, VCR), and the stopping rule is engineered infrastructure, not promptable behavior. ^[inferred] Both sources date 2026-08; no contradiction found.

## Choosing a Strategy

The choice depends on:

- **Model capabilities** — does the model support structured output?
- **Task complexity** — simple tasks may exit on plain text; complex tasks need final result tools
- **Developer control** — final result tools give the most explicit control
- **Error handling** — structured output enables [[concepts/validation-error-feedback|validation error feedback]] ^[inferred]

## Related

- [[concepts/agent-loop]] — Agent loop architecture
- [[concepts/structured-output]] — Structured output for agent termination
- [[concepts/validation-error-feedback]] — Validation error feedback loop
- [[concepts/open-loop-planning]] — Open-loop vs. closed-loop agent design
- [[references/harness-lecture-07-overreach-under-finish|Overreach and Under-Finish (Lecture 7)]] — the harness-enforced scope controls (WIP=1, completion evidence, VCR) as exit strategies
