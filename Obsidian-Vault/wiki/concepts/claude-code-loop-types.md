---
title: Claude Code Loop Types
category: concepts
tags:
  - claude-code
  - coding-agents
  - loop-types
  - agentic-workflows
  - agent-design
aliases:
  - claude loops
  - claude-code-loop-classification
sources:
  - "https://x.com/ClaudeDevs/status/2074208949205881033"
summary: Claude Code's classification of four loop types — turn-based, goal-based, time-based, proactive — each defined by trigger, stop criteria, and the primitive used to orchestrate agentic work.
provenance:
  extracted: 0.82
  inferred: 0.13
  ambiguous: 0.05
base_confidence: 0.78
lifecycle: draft
tier: supporting
created: 2026-07-13
updated: 2026-07-13
relationships:
  - target: '[[concepts/agent-loop]]'
    type: related_to
  - target: '[[concepts/tool-use-loop]]'
    type: related_to
  - target: '[[concepts/agent-exit-strategies]]'
    type: related_to
  - target: '[[concepts/agent-workflows]]'
    type: extends
---

# Claude Code Loop Types

Claude Code classifies agentic loops into four types along two axes: how they are triggered (manual, time-based, event-driven) and how they stop (human judgment, goal achievement, cancellation). Each type maps to a specific Claude Code primitive, and each is optimized for a different class of tasks.^[extracted]

## The Four Loop Types

### 1. Turn-based Loops

**Triggered by:** A user prompt.
**Stop criteria:** Claude judges it has completed the task or needs additional context.
**Best used for:** Shorter tasks that are not part of a regular process or schedule.

Every prompt you send starts a manual loop — you direct each turn. Claude gathers context, takes action, checks its work, repeats if needed, and responds.^[extracted]

To reduce the number of turns, encode manual verification steps as [[concepts/skills-checklist-framework|skills]] (SKILL.md files) so Claude can check more of its own work end-to-end. The more quantitative the checks are, the easier it is for Claude to self-verify.^[extracted]

### 2. Goal-based Loops (`/goal`)

**Triggered by:** A manual prompt in real-time.
**Stop criteria:** Goal achieved OR maximum number of turns reached.
**Best used for:** Tasks with verifiable exit criteria.

When a single turn is insufficient for complex tasks, define what done looks like using `/goal`. Claude doesn't have to determine what is "good enough" and end early — an evaluator model checks the success criteria each time it tries to stop.^[extracted]

Deterministic criteria (number of tests passed, Lighthouse score threshold) are most effective.^[extracted]

```bash
/goal get the homepage Lighthouse score to 90 or above, stop after 5 tries.
```

### 3. Time-based Loops (`/loop`, `/schedule`)

**Triggered by:** A specified time interval.
**Stop criteria:** Cancellation, or work completes (PR merges, queue is empty).
**Best used for:** Recurring work or interfacing with external systems.

Some agentic work is recurring — the task stays the same and only inputs change (e.g., summarizing Slack messages every morning). Other work depends on external systems where checking on an interval and reacting to changes is useful (e.g., a PR receiving code reviews or failing CI).^[extracted]

- `/loop` — runs on your computer; stops if you turn it off.
- `/schedule` — moves the loop to the cloud for uninterrupted execution.^[extracted]

```bash
/loop 5m check my PR, address review comments, and fix failing CI
```

### 4. Proactive Loops

**Triggered by:** An event or schedule, with no human in real time.
**Stop criteria:** Each task exits when its goal is met. The routine runs until turned off.
**Best used for:** Recurring streams of well-defined work — bug reports, issue triage, migrations, dependency upgrades.

Proactive loops compose multiple primitives into long-running workflows: `/schedule` for recurring checks, `/goal` for exit criteria, dynamic workflows for orchestration, and auto mode for unattended execution.^[extracted]

Routing routines to smaller, faster models for execution and the most capable model for judgment calls is a key cost-management pattern.^[inferred]

## Loop Summary Table

| Loop | You hand off | Use it when | Reach for |
|------|------------|-------------|----------|
| Turn-based | The check | You're exploring or deciding | Custom verification skills |
| Goal-based | The stop condition | You know what done looks like | `/goal` |
| Time-based | The trigger | The work happens on a schedule | `/loop`, `/schedule` |
| Proactive | The prompt | The work is recurring and well-defined | All of the above + dynamic workflows |

## Designing Systems Around Loops

The quality of a loop's output depends on the system around it. Four principles:^[extracted]

1. **Keep the codebase clean** — Claude follows patterns and conventions that already exist in your codebase.
2. **Give Claude verification** — encode what good looks like with skills.
3. **Make docs easy to reach** — frameworks and libraries have up-to-date best practices.
4. **Use a second agent for reviews** — a reviewer with fresh context is less biased and not influenced by the main agent's reasoning.^[extracted]

When an individual result doesn't meet the standard, don't just fix the issue — encode the fix to improve the system for all future iterations.^[extracted]

## Token Management

Loops should have clear boundaries to control token usage:^[extracted]

- **Choose the right primitive and model** — smaller tasks don't need multiple agents; some tasks can use cheaper and faster models.
- **Define clear success and stop criteria** — be specific about what done looks like so Claude arrives sooner.
- **Pilot before a large run** — gauge usage on a smaller slice first.
- **Use scripts for deterministic work** — running a script is cheaper than reasoning through steps.^[inferred]
- **Don't run routines more often than needed** — match intervals to how often the watched thing changes.
- **Review usage** — `/usage` breaks down usage by skills, subagents, and MCPs; `/goal` without arguments shows turn count and token usage; `/workflows` shows each agent's token usage.^[extracted]

## Getting Started

The recommended approach is observational: look at existing work, pick one task where you're the bottleneck, and identify which piece you could hand off. Can you write the verification check? Is the goal clear enough? Does the work arrive on a schedule?^[extracted]

Then run the loop, observe where it stalls or over-reaches, and iterate on the design.^[extracted]

## Open Questions

- How does this loop classification map to [[concepts/12-factor-agents|12-Factor Agents]] principles?^[inferred]
- What are the cost implications of each loop type at scale? — not addressed by the source.^[ambiguous]
- Can proactive loops be composed with external triggers (webhooks, message events) for event-driven agentic workflows?^[inferred]

## Sources

- ClaudeDevs (Claude Code team) — "Getting started with loops" — https://x.com/ClaudeDevs/status/2074208949205881033
- Written by @delba_oliveira
