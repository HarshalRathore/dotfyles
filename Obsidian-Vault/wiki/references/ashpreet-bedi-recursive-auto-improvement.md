---
title: "How to Recursively Improve Your Agents — Ashpreet Bedi"
category: references
tags: [agent-evaluation, recursive-improvement, coding-agents, agno, production-agents]
sources:
  - "https://x.com/ashpreetbedi/status/2084301728363462919"
  - "https://x.com/ashpreetbedi/article/2084301728363462919"
source_url: "https://x.com/ashpreetbedi/status/2084301728363462919"
created: "2026-08-15T20:08:52Z"
updated: "2026-08-15T20:08:52Z"
summary: "A coding-agent workflow for convergent agent improvement: derive probes from sessions, test the live system, inspect traces, change one lever, and regress failures."
stub: false
provenance:
  extracted: 0.93
  inferred: 0.05
  ambiguous: 0.02
base_confidence: 0.37
lifecycle: draft
lifecycle_changed: "2026-08-15"
tier: supporting
relationships:
  - target: "[[concepts/recursive-auto-improvement]]"
    type: implements
  - target: "[[concepts/agent-evaluations]]"
    type: uses
  - target: "[[concepts/agent-observability]]"
    type: uses
---

# How to Recursively Improve Your Agents — Ashpreet Bedi

> [!tldr] Recursive auto-improvement is a convergent outer loop in which a coding agent mines real sessions into probes, tests a live target agent, inspects trajectory evidence, changes one lever, and reruns failures until the target approaches its spec.

## Overview

Bedi presents an agent development lifecycle in which coding agents manage not only scaffolding and deployment but also systematic improvement. The target system is treated as a live, observable object with an API, persisted sessions, logs, tools, and editable code. ^[extracted]

## Recursive Auto-Improvement Versus RSI

The article reserves **recursive self-improvement (RSI)** for a system that improves itself, targets its own ability to improve, and compounds gains. Bedi's **recursive auto-improvement (RAI)** is instead a convergent process where one AI edits another agent's instructions, tools, and parameters toward a fixed point defined by the agent's specification. ^[extracted]

## Preconditions

The coding agent needs:

- A live API for testing the target system.
- Full trajectory visibility into tool calls, errors, and debug messages.
- The ability to edit code and test updates.
- Access to usage data from real sessions.
- Framework documentation for reliable parameter tuning. ^[extracted]

## Probe Mining

Usage data is stored as Postgres sessions. The improvement loop mines recurring shapes, visible fumbles, and out-of-scope requests to derive probes. Bedi names four useful categories: golden path, edge cases, tool selection, and adversarial probes. ^[extracted]

For each probe, the coding agent writes a one-line expected behavior from the target spec, runs the probe against the live agent, inspects the result and trajectory, and judges pass or fail. ^[extracted]

## One-Lever Repair

For each failure, the coding agent chooses one repair lever:

- Tighten an existing rule.
- Add a missing rule.
- Swap a tool.

It edits the target agent, restarts it, and reruns only failed probes. Most fixes in the example are one sentence or one parameter change. ^[extracted]

This one-lever discipline makes causal attribution easier and limits the surface area of each iteration. ^[inferred]

## Overnight Runs

Bedi recommends overnight runs with 300–500 probes. The loop can work through rare edge cases, unusual phrasings, and failures that appear only once in many runs while the developer is away. ^[extracted]

## Agent Lifecycle

```text
/create-agent → /improve-agent → /extend-agent → /deploy-platform
                      ↑              │
                      └──────────────┘
```

An extension is followed by another improvement pass, making improvement a recurring phase rather than a one-time pre-deployment checklist. ^[extracted]

## Concepts

- [[concepts/recursive-auto-improvement]]
- [[concepts/agent-evaluations]]
- [[concepts/agent-observability]]
- [[concepts/continuous-eval-loops]]
- [[concepts/auto-research-loop]] — related but more research-oriented
- [[concepts/reward-hacking]] — probe design must resist optimizing the metric rather than the goal

## Entities

- [[entities/ashpreet-bedi]]
- [[entities/agno]]
- [[entities/claude-code]]

## Open Questions

- How are probes held out to test generalization beyond mined usage patterns?
- What prevents repeated overnight runs from overfitting the target to its current spec?
- How should changes be rolled back when a local improvement harms an unobserved behavior?

## Sources

- https://x.com/ashpreetbedi/status/2084301728363462919
- https://x.com/ashpreetbedi/article/2084301728363462919
