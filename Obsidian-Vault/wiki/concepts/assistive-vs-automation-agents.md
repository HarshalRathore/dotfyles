---
title: "Assistive vs Automation Agents"
category: concepts
tags:
  - agent
  - agent-types
  - automation
  - knowledge-work
  - llamaindex
summary: Two categories of AI agents for knowledge work automation: assistive agents (chat interfaces helping humans get information faster) and automation agents (background agents automating routine tasks).
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.70
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/agent-autonomy]]"
    type: related_to
  - target: "[[concepts/document-toolbox]]"
    type: uses
  - target: "[[concepts/open-loop-planning]]"
    type: related_to
---

# Assistive vs Automation Agents

A taxonomy of AI agents for knowledge work automation, introduced by [[entities/jerry-liu|Jerry Liu]] at AI Engineer World's Fair 2025. Agents fall into two categories based on their level of human involvement and autonomy. ^[extracted]

## Assistive Agents

Assistive agents operate as chat interfaces that help humans get information faster. They:

- Require significant human-in-the-loop interaction
- Surface information and insights for human decision-making
- Act as augmented search and analysis tools
- Follow a human-initiated workflow

These are the most common form of AI agent today — chatbots, RAG-powered Q&A systems, and AI research assistants.

## Automation Agents

Automation agents operate in the background to automate routine tasks. They:

- Require less human oversight
- Can take actions autonomously (not just surface information)
- Run on schedules or triggers
- Handle repetitive operational work end-to-end

These represent the next frontier: agents that don't just help humans work, but replace the work entirely for well-defined tasks.

## The Spectrum

The distinction is not binary but a spectrum of autonomy. An assistive agent becomes an automation agent when:

1. The task is well-defined and repeatable
2. The decision boundaries are clear enough for agent execution
3. The consequences of errors are manageable
4. The [[concepts/document-toolbox|document toolbox]] provides sufficient tool interfaces for the task

## Relation to Agent Design Patterns

Both agent types use the same [[concepts/agent-design-patterns|agent design patterns]] (chaining, routing, parallelization, orchestrator-workers, evaluator-optimizer). The difference is in the workflow composition and human-in-the-loop placement, not the underlying patterns. ^[inferred]

## Related

- [[concepts/document-toolbox]] — Tool interfaces both agent types consume
- [[concepts/agent-autonomy]] — The degree of autonomous execution
 - [[concepts/open-loop-planning]] — Automation agents often operate in open-loop mode
 - [[entities/jerry-liu]] — Originator of the taxonomy
 - [[entities/robert-brennan]] — Contrasts tactical code gen (Copilot autocomplete) with autonomous agents (OpenHands)
