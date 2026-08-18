---
title: "How to Recursively Improve Your Agents — Ashpreet Bedi's X Article"
category: misc
tags: [agent-evaluation, recursive-improvement, coding-agents, agno]
sources:
  - "https://x.com/ashpreetbedi/status/2084301728363462919"
  - "https://x.com/ashpreetbedi/article/2084301728363462919"
source_url: "https://x.com/ashpreetbedi/status/2084301728363462919"
created: "2026-08-15T20:08:52Z"
updated: "2026-08-15T20:08:52Z"
summary: "Ashpreet Bedi presents recursive auto-improvement: mine sessions into probes, test a live agent, change one lever, and rerun failures toward a fixed point."
affinity: {}
promotion_status: misc
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
  - target: "[[entities/agno]]"
    type: related_to
---

# How to Recursively Improve Your Agents — Ashpreet Bedi's X Article

**Author:** Ashpreet Bedi (@ashpreetbedi). ^[extracted]
**Date:** August 3, 2026. ^[extracted]

## Article Content

Ashpreet Bedi describes a coding-agent-driven loop that improves a target agent against its own specification. The coding agent mines real usage sessions into probes, tests the live agent, reads logs and tool calls, changes the agent, restarts it, and reruns failed probes. ^[extracted]

The article distinguishes this convergent **recursive auto-improvement** from recursive self-improvement: one AI edits another system toward a fixed point rather than improving the system's ability to improve in a divergent, compounding process. ^[extracted]

## Distilled Workflow

- Mine Postgres session data for golden-path, edge-case, tool-selection, and adversarial probes.
- Write one-line expected behavior for each probe from the target agent's spec.
- Run probes against the live API and inspect tool calls, errors, and debug messages.
- Change one lever at a time: tighten a rule, add a rule, or swap a tool.
- Restart the agent and rerun only failed probes.
- Turn durable failures into regression evals. ^[extracted]

The worked example, Radar, has mechanical constraints including at most five one-line items, a source link per item, no hype adjectives, and a ledger preventing repeated brief items. ^[extracted]

## Concepts

- [[concepts/recursive-auto-improvement]]
- [[concepts/agent-evaluations]]
- [[concepts/continuous-eval-loops]]
- [[concepts/agent-observability]]
- [[concepts/auto-research-loop]]

## Entities

- [[entities/ashpreet-bedi]]
- [[entities/agno]]
- [[entities/claude-code]]

## Open Questions

- What stopping rule prevents an improvement loop from overfitting to mined probes?
- How are probe quality and blind spots measured?

## Related

- [[references/ashpreet-bedi-recursive-auto-improvement]]
- [[concepts/reward-hacking]]
