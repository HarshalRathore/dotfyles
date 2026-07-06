---
title: Agent Identity as Log
category: concepts
tags: [agent-architecture, agent-identity, append-only, agent-loop, polygraph]
aliases: [agent is log, agent-log, agent-identity, agent-as-log]
relationships:
  - target: '[[concepts/polygraph]]'
    type: related_to
  - target: '[[concepts/agent-loop]]'
    type: extends
  - target: '[[concepts/episodic-memory-agents]]'
    type: related_to
sources:
  - https://www.youtube.com/watch?v=4sX_He5c4sI
summary: The concept that an agent's identity is its append-only event history — every user input, model output, tool call, and result — decoupling identity from runtime, model, and tools.
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: 2026-07-06
tier: supporting
created: 2026-07-06T00:00:00Z
updated: 2026-07-06T00:00:00Z
---

# Agent Identity as Log

The **agent identity as log** concept posits that an agent's identity is not tied to its runtime, model, or tools — but to its **append-only event history**. This decouples who the agent is from what it runs on, making agents portable and resumable. ^[extracted]

Presented by Roland (ex-xAI, agent infrastructure) at the AI Engineer World's Fair 2026. ^[extracted]

## The Log

The log is the append-only event history of the agent, capturing: ^[extracted]

- Every user input
- Every model output
- Every tool call
- Every tool result
- Every permission failure
- Every state transition

## Key Insight

Because every state transition is written to the log, the agent's identity becomes the log itself. The runtime, model, and tools are merely **interpreters** that read the log, act on it, and write the next event back. ^[extracted]

This means: ^[inferred]

1. **Resume anywhere** — using the log alone is enough to resume the agent
2. **Model portability** — swap the underlying model without losing identity
3. **Tool portability** — swap tools without losing identity
4. **Cross-repo continuity** — the log captures work across multiple repositories

## Connection to Polygraph

This concept is the theoretical foundation for **Polygraph**, a tool that solves two constraints: ^[extracted]

- **Space constraint** — repo-bound context (agents don't know about other repos)
- **Time constraint** — amnesia between sessions

Polygraph captures agent traces across repos and workspaces, creating an identical photographic memory of the organization's work. The agent identity as log is the data structure that makes this possible. ^[inferred]

## Related

- [[concepts/polygraph|Polygraph]] — solves space and time constraints using the agent log
- [[concepts/agent-loop|Agent Loop]] — the fundamental agent execution cycle
- [[concepts/episodic-memory-agents|Episodic Memory Agents]] — agents that remember past experiences
- [[concepts/agent-iteration-loop|Agent Iteration Loop]] — the feedback loop in agent workflows
- [[entities/roland|Roland]] — ex-xAI, presenter of agent identity as log concept

## Sources

- AI Engineer World's Fair 2026: https://www.youtube.com/watch?v=4sX_He5c4sI
