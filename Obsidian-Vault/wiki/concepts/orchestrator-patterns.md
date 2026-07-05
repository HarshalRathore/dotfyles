---
title: "Orchestration Patterns for AI Agents"
tags:
  - ai-agents
  - orchestration
  - workflow
  - architecture
  - chains
  - trees
  - agentic
category: concepts
sources:
  - "[[sources/watchv=r30col3upug]]"
summary: "Three levels of agent orchestration: chains (linear, simplest), trees (branching via LLM), and agentic (autonomous tool selection). Increasing complexity trades measurability for maintainability."
provenance:
  extracted: 0.88
  inferred: 0.10
  ambiguous: 0.02
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/agent-vs-workflow]]"
    type: related_to
  - target: "[[concepts/agent-loop]]"
    type: related_to
  - target: "[[concepts/bitter-lesson-agentic]]"
    type: related_to
---

# Orchestration Patterns for AI Agents

Orchestration patterns define how an LLM-driven agent coordinates tool calls, decision points, and state transitions. Three patterns form a complexity spectrum, each with different trade-offs in measurability, cost, and maintainability. ^[extracted]

## Pattern 1: Chains

A single linear flow from input to output. The simplest pattern, executed as a predetermined sequence of steps.

**Pros:** Easiest to measure, lowest cost, highest reliability, simplest debugging.
**Cons:** Cannot handle branching logic or unexpected scenarios.
**Default choice:** If the problem fits a chain, use a chain. ^[extracted]

## Pattern 2: Trees

Branching logic where the LLM chooses which path through a decision tree to follow. The structure is predefined, but the LLM selects the route.

**Use case:** Multi-hop reasoning where different branches require different information. Example: cybersecurity incident classification — the LLM determines severity level, then follows the enrichment path appropriate for that severity. ^[extracted]

**Pros:** More flexible than chains while remaining structured and measurable.
**Cons:** More complex than chains; requires careful tree design.

## Pattern 3: Agentic

The model autonomously chooses which actions to invoke and repeats them iteratively to solve a task. No predefined structure constrains the sequence of actions.

**Pros:** Most flexible; can handle truly open-ended problems.
**Cons:** Hardest to measure, hardest to get full performance from, most expensive. ^[extracted]

## The Bitter Lesson of Orchestration

When chains and trees become too complex and convoluted to maintain, that is a signal to move to a more agentic pattern. The agentic approach may be easier to maintain long-term despite being harder to measure. This may also be a signal to consider fine-tuning the model for the specific domain. ^[extracted]

## Deterministic Logic Guardrail

A critical pattern that applies across all orchestration levels: keep deterministic business logic outside the model. ^[extracted]

Instead of asking the LLM to evaluate conditions (A AND B AND C), expose tools that update state variables. Validate each state change with deterministic code. Only execute the action when all conditions are met. This ensures:

- Logic is in maintainable, version-controlled code
- State is external to the model (no context-window drift)
- Actions are only taken when conditions are truly satisfied

## Relationship to Other Concepts

- Chains and trees are workflow patterns; agentic is the agent pattern. Relates to [[concepts/agent-vs-workflow|agent vs. workflow]].
- The agentic pattern is an extension of the [[concepts/agent-loop|agent loop]] with autonomous action selection.
- The bitter lesson principle connects to [[concepts/bitter-lesson-agentic|when to move to agentic]].
- Tool design for orchestration connects to [[concepts/semantic-collision-tools|semantic collision]] — fewer tools per prompt = better performance.

## Sources

- AI Engineer World's Fair 2025 — Building Applications with AI Agents, Michael Albada, Microsoft. https://www.youtube.com/watch?v=R30col3UPUg
