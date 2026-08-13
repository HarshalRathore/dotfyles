---
title: Agent Memory
category: concepts
tags:
- agent-memory
- memory-management
- agents
- retrieval
- state-management
- ai-agents
sources:
- "Graph Engineering: build 1000+ agent loops in one window from one prompt — X post and captured Google Hands-on AI Multi-Agent Lab, 2026-08-02"
- "Google Hands-on AI Multi-Agent Lab - MCP, ADK, A2A, and Agent Memory"
- "https://nitter.tiekoetter.com/i/article/2083971749079581120"
summary: "Agent memory is the state and context an agent preserves across steps or executions; memory engineering adds its cost, retention, control, and hardware lenses — optimizing what the system forgets on purpose."
provenance:
  extracted: 0.79
  inferred: 0.16
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-08-02
tier: supporting
created: 2026-07-06
updated: 2026-08-03T00:00:00Z
relationships:
- target: '[[concepts/memory-management]]'
  type: related_to
- target: '[[concepts/stateful-environments]]'
  type: related_to
- target: '[[concepts/agent-workflows]]'
  type: enables
- target: '[[references/google-hands-on-ai-multi-agent-lab|Google Hands-on AI Multi-Agent Lab]]'
  type: derived_from
- target: '[[concepts/memory-engineering]]'
  type: related_to
- target: '[[references/how-to-be-a-memory-engineer]]'
  type: derived_from
---
# Agent Memory

**Agent memory** is the state an agent or agent system preserves and retrieves across workflow steps or executions. It is distinct from the model's immediate context window: context is what the current turn can see, while memory is what the system deliberately stores for later retrieval. ^[extracted]

## Memory in the Captured Lab

The Google lab treats memory as a first-class component alongside MCP tools, A2A communication, and graph orchestration. A workflow can write observations or artifacts to shared memory, then retrieve them in a later step instead of forcing every node to carry the entire history in its prompt. ^[extracted]

## Design Boundary

Memory should hold durable task state, useful observations, and reusable artifacts. The workflow graph should still make transitions explicit; memory is not a hidden substitute for orchestration. Separating state, memory, tools, and agent-to-agent messages keeps failures diagnosable. ^[inferred]

## Memory Engineering: the Cost and Lifecycle Layer

[[concepts/memory-engineering|Memory engineering]] adds the questions storage alone never asks: what does remembering cost (the write path — construction burns more energy than 300 queries afterward), what is worth keeping (facts and skills, not logs), who controls what it keeps (deletable, scoped, audited memory files), and where it hits hardware (memory is KV cache in HBM). The discipline's core claim: the agent's problem is not that it forgets — it is that it never forgets on purpose, so forgetting policy (dedup, consolidation, explicit deletion rules) belongs in the design before the store grows. ^[extracted] See [[references/how-to-be-a-memory-engineer]].

## Related

- [[concepts/memory-management]] — Retrieval, storage, integration, and forgetting
- [[concepts/agent-workflows]] — Orchestration layer that consumes and updates state
- [[concepts/agent-to-agent-communication|Agent-to-Agent Communication]] — A2A handoffs between agents
- [[concepts/model-context-protocol|Model Context Protocol]] — Tool and context boundary
- [[references/google-hands-on-ai-multi-agent-lab|Google Hands-on AI Multi-Agent Lab]] — Captured implementation context
