---
title: Recursive Auto-Improvement
category: concepts
tags: [agent-evaluation, recursive-improvement, coding-agents, continuous-evals, production-ai]
aliases: [RAI, convergent agent improvement]
relationships:
  - target: "[[concepts/agent-evaluations]]"
    type: uses
  - target: "[[concepts/agent-observability]]"
    type: uses
  - target: "[[concepts/continuous-eval-loops]]"
    type: extends
  - target: "[[concepts/auto-research-loop]]"
    type: related_to
sources:
  - "https://x.com/ashpreetbedi/status/2084301728363462919"
  - "https://x.com/ashpreetbedi/article/2084301728363462919"
summary: "A convergent outer loop that mines real sessions into probes, tests a live agent, changes one lever, and reruns failures until behavior approaches its specification."
provenance:
  extracted: 0.88
  inferred: 0.10
  ambiguous: 0.02
base_confidence: 0.37
lifecycle: draft
lifecycle_changed: "2026-08-15"
tier: supporting
created: "2026-08-15T20:08:52Z"
updated: "2026-08-15T20:08:52Z"
---

# Recursive Auto-Improvement

**Recursive auto-improvement (RAI)** is a convergent agent-engineering loop in which a coding agent improves a separate target agent against that agent's explicit specification. The outer agent mines usage data into probes, tests the live target, reads trajectory evidence, changes one lever, and reruns failed probes. ^[extracted]

## Loop

1. **Mine** — derive probe candidates from real sessions, including recurring requests, fumbles, edge cases, tool mistakes, and adversarial inputs.
2. **Specify** — write the expected behavior for each probe from the target agent's rules.
3. **Run** — call the live agent API.
4. **Observe** — inspect the response, tool calls, errors, and debug logs.
5. **Repair** — tighten or add a rule, or swap a tool.
6. **Restart and regress** — rerun failed probes and preserve durable failures as evals. ^[extracted]

## Why It Is Recursive but Convergent

RAI is recursive because an agent edits the agent that performs the task. It is **not** recursive self-improvement in the stronger RSI sense described by the source: RAI does not claim that the system improves its own ability to improve or that gains compound without bound. Instead it pulls behavior toward a fixed point defined by a spec. ^[extracted]

## Evidence Surfaces

RAI requires an observable target. Sessions, APIs, tool traces, debug messages, and container logs become evidence for both probe generation and repair. ^[extracted] This makes [[concepts/agent-observability]] part of the improvement mechanism rather than a post-hoc dashboard. ^[inferred]

## Guardrails

- Keep one repair lever per iteration to make cause and effect legible. ^[inferred]
- Hold out probes so usage mining does not become overfitting. ^[inferred]
- Convert recurring failures into regression evals.
- Keep the spec mechanically checkable where possible.
- Review whether a local pass harms unobserved behavior. ^[inferred]

## Relation to Auto-Research

RAI resembles the [[concepts/auto-research-loop]] pattern of define → run → trace → score → propose → rerun, but its target is a production agent and its objective is convergence to a product specification rather than open-ended research improvement. ^[inferred]

## Related

- [[concepts/agent-evaluations]]
- [[concepts/agent-observability]]
- [[concepts/continuous-eval-loops]]
- [[concepts/auto-research-loop]]
- [[concepts/reward-hacking]]
- [[references/ashpreet-bedi-recursive-auto-improvement]]
- [[entities/agno]]

## Sources

- https://x.com/ashpreetbedi/status/2084301728363462919
- https://x.com/ashpreetbedi/article/2084301728363462919
