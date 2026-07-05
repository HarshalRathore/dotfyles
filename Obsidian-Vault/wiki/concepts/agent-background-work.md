---
title: "Agent Background Work"
category: concepts
tags:
  - agents
  - coding-agents
  - async-agents
  - background-tasks
  - aief2025
aliases:
  - agent background work
  - background-agents
  - async-agent-work
summary: "Solomon Hykes' concept of agents working autonomously in the background without constant human monitoring — enabled by isolated, customizable environments with rails."
sources:
  - "AIEF2025 - Containing Agent Chaos — Solomon Hykes, Dagger - https://www.youtube.com/watch?v=bUBF5V6oDKw"
provenance:
  extracted: 0.93
  inferred: 0.05
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: [[entities/solomon-hykes|Solomon Hykes]]
    type: proposed_by
  - target: [[concepts/agent-isolation|Agent Isolation]]
    type: requires
  - target: [[concepts/agent-rails|Agent Rails]]
    type: requires
  - target: [[concepts/parallel-agent-workflows|Parallel Agent Workflows]]
    type: related_to
---

# Agent Background Work

**Agent background work** is the capability for coding agents to operate autonomously without constant human monitoring. Introduced by [[entities/solomon-hykes|Solomon Hykes]] at AIEF2025, it is the first of four requirements for productive agent environments. ^[extracted]

## The Problem with Current Agent Workflows

Solomon describes the current status quo: watching every action the agent takes, approving or rejecting each one. This "approve, approve, no, no, don't do that, crazy, yes, that's good" pattern is unsustainable at scale. The methodology of watching agents closely "falls apart really quickly" when you try to run multiple agents. ^[extracted]

## Requirements for Background Work

Background work requires two things:

1. **Isolation** — agents must work in isolated environments so they don't step on each other's toes and so failures are contained
2. **Rails** — agents must have enough context (project knowledge, coding style, build/test instructions) to work productively without constant correction

Without these, background work is just "YOLO mode" — running agents blindly and hoping for the best, where they "are all stepping on each other's toes" in shared environments. ^[extracted]

## The Agent Team Vision

Background work is the foundation for Solomon's vision of "a team" of agents working together: "I just got a team, and they're working, and I can step in or leave them alone, and we're just kind of getting stuff done together." ^[extracted]

This vision positions agents as background workers rather than foreground tools requiring constant supervision.

## Related

- [[concepts/agent-isolation|Agent Isolation]] — Isolation enables background work
- [[concepts/agent-rails|Agent Rails]] — Rails make background work productive
- [[concepts/parallel-agent-workflows|Parallel Agent Workflows]] — Multiple agents doing background work
- [[concepts/agent-coordination|Agent Coordination]] — Coordinating background work across agents
