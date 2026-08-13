---
title: Asynchronous Coding Agents
category: concepts
tags:
- async-agents
- coding-agents
- background-agents
- parallel-agents
- aief2025
sources:
  - AIEF2025 - Your Coding Agent Just Got Cloned And Your Brain Isn't Ready — Rustin Banks, Google Jules - https://www.youtube.com/watch?v=X4BwOu0GWb8
  - https://x.com/i/status/2083430232405733819
relationships:
- target:
  - - concepts/parallel-agent-workflows|Parallel Agent Workflows
  type: enables
- target:
  - - concepts/remote-agents-as-a-service|Remote Agents as a Service
  type: requires
- target:
  - - concepts/agent-vs-workflow|Agent vs. Workflow Debate
  type: related_to
- target:
  - - concepts/agent-as-laundry|Agent as Laundry
  type: exemplifies
provenance:
  extracted: 0.82
  inferred: 0.13
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-08-02T01:17:21Z
summary: Asynchronous coding agents work in the background while developers focus elsewhere; Antigravity adds sub-agents, hooks, and task management to this pattern.
---

# Asynchronous Coding Agents

Asynchronous coding agents are AI agents designed to work on tasks in the background while developers focus on other work. Unlike synchronous agents that require active developer supervision, async agents take tasks from a queue, complete them independently, and present results for review. ^[extracted]

## Core Characteristics

### Background Execution

Async agents are meant to "run in the background and do all those tasks that you don't want to do." They operate independently, taking tasks from a queue and completing them without requiring the developer to wait or supervise. ^[extracted]

### Queue-Based Task Management

Tasks are submitted to the agent asynchronously. The agent processes them in order (or by priority), and the developer reviews results when convenient. This decouples task submission from task completion. ^[inferred]

### The "Laundry" Metaphor

Rustin Banks described async agents as tools that "do the laundry, so to say, so that you can focus on the art of coding." ^[extracted] The metaphor captures the essence: handle the mundane, repetitive tasks so the developer can focus on creative, high-value work.

## What Async Agents Handle Well

- **SDK updates** — Firebase SDK updates, dependency upgrades ^[extracted]
- **Accessibility audits** — WCAG compliance checks and fixes ^[extracted]
- **Security audits** — Vulnerability scanning and patching ^[extracted]
- **Lighthouse improvements** — Performance optimization tasks ^[extracted]
- **Test generation** — Creating and running test suites ^[extracted]
- **Documentation updates** — README maintenance, API docs ^[extracted]

## Relationship to Parallel Agents

Async agents are the foundation of parallel agent workflows. When multiple async agents run simultaneously, each handling different tasks from the backlog, the result is a parallel development model that can dramatically increase throughput. ^[inferred]

## Google Antigravity's Async Extension

The Antigravity source describes asynchronous task management as a core harness primitive alongside sub-agents and hooks. Its operating-system experiment reports agents working in parallel for more than 12 hours, generating tests and iterating while the product surface remained available for artifact inspection. ^[extracted]

This extends the queue-and-review model beyond isolated backlog chores: the unit of work can be a long-running, decomposed project with intermediate artifacts and repair loops. The scale figures are self-reported product-demo claims. ^[inferred] See [[entities/google-antigravity|Google Antigravity]].

## Comparison with Synchronous Agents

| Dimension | Async Agent | Synchronous Agent |
|-----------|------------|-------------------|
| Developer involvement | Low (submit, review) | High (supervise, guide) |
| Response time | Delayed (minutes/hours) | Immediate |
| Best for | "Laundry" tasks | Interactive coding |
| Parallelism | Natural (multiple agents) | Limited (one agent per session) |
| Context loss | Minimal (persistent state) | Higher (session-bound) |

## Related Pages

- [[concepts/parallel-agent-workflows|Parallel Agent Workflows]] — Multi-agent extension
- [[concepts/remote-agents-as-a-service|Remote Agents as a Service]] — Infrastructure model
- [[concepts/agent-as-laundry|Agent as Laundry]] — The core metaphor
- [[entities/google-jules|Google Jules]] — Real-world implementation
