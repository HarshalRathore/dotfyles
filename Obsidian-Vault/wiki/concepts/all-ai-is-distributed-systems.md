---
title: All AI is Distributed Systems
category: concepts
tags: [ai, distributed-systems, reliability, ai-agents, architecture]
aliases: [ai is distributed systems, all ai is distributed, ai systems are distributed]
relationships:
  - target: "[[concepts/events-wrong-abstraction-thesis|Events are the Wrong Abstraction Thesis]]"
    type: related_to
  - target: "[[concepts/durable-execution|Durable Execution]]"
    type: related_to
sources:
  - "[[sources/watchv=kj9ezytws1y]]"
summary: "Any code that crosses a network boundary is a distributed system. AI systems inherently cross network boundaries — calling LLM APIs, communicating between agent services — making them distributed systems that require reliability infrastructure."
provenance:
  extracted: 0.85
  inferred: 0.15
  ambiguous: 0.00
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# All AI is Distributed Systems

The principle that any code which crosses a network boundary is a distributed system. AI systems inherently cross network boundaries — calling LLM APIs, communicating between agent services, accessing external tools — making them distributed systems by definition. ^[extracted]

## Implications

Since all AI is distributed systems, all the problems of distributed systems apply to AI:

- **Network failures** — APIs go down, return errors, or time out
- **Partial failures** — Some components work while others fail
- **Concurrency** — Multiple agents or tool calls happening simultaneously
- **State management** — State must be preserved across network boundaries
- **Reliability** — The system must survive failures gracefully

The key insight is that AI doesn't introduce new problems — it's the same problems we've been solving for the last 20 years. We just added a different label to it. ^[extracted]

## Application to AI Agent Architecture

This principle supports the argument that durable execution is the proper abstraction for AI agents. Since AI agents are distributed systems, they need distributed systems reliability infrastructure — retries, state persistence, crash recovery. The question is whether to expose this infrastructure as the primary developer-facing construct (events) or abstract it away (durable execution). ^[extracted]

## Relationship to Existing Concepts

- **[[concepts/events-wrong-abstraction-thesis|Events are the Wrong Abstraction Thesis]]** — This principle is the foundation for the thesis: since AI is distributed systems, the distributed systems infrastructure should be abstracted away, not exposed as the primary construct. ^[inferred]
- **[[concepts/durable-execution|Durable Execution]]** — This principle explains why durable execution is needed: AI agents are distributed systems, and durable execution provides the reliability infrastructure they need. ^[inferred]
- **[[concepts/agent-reliability-challenge|Agent Reliability Challenge]]** — The reliability challenge is fundamentally a distributed systems problem. ^[inferred]
