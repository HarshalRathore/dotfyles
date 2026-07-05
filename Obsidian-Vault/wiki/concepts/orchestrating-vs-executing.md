---
title: "Orchestrating vs. Executing"
category: concepts
tags: [orchestration, execution, agent-native, software-development, paradigm-shift]
summary: "The evolution of software development from executing tasks personally to orchestrating systems of agents that work on behalf of teams."
sources:
  - "AIEF2025 - Ship Production Software in Minutes, Not Months — Eno Reyes, Factory - https://www.youtube.com/watch?v=iheWKg2Tkrk"
provenance: { extracted: 0.8, inferred: 0.2, ambiguous: 0.0 }
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04T00:00:00Z
updated: 2026-07-04T00:00:00Z
relationships:
  - target: "[[concepts/agent-driven-development|Agent-Driven Development]]"
    type: component-of
  - target: "[[concepts/agent-native-development|Agent-Native Development]]"
    type: enables
---

# Orchestrating vs. Executing

**Orchestrating vs. Executing** describes the evolution of software development from personally executing tasks to orchestrating systems of agents that work on behalf of teams.

## The Evolution

[[entities/eno-reyes|Eno Reyes]] of [[entities/factory|Factory]] frames this as the direction software development is heading:

> "We're going to move from executing to orchestrating systems that work on our behalf."^[extracted]

This represents a fundamental shift in the developer's role:

- **Executing:** The developer writes code, runs tests, creates PRs, manages tickets
- **Orchestrating:** The developer defines goals, reviews agent plans, clarifies requirements, and manages parallel agent work

## The Workflow

The new workflow looks like:

1. A PRD is produced (potentially with agent assistance)
2. The PRD is converted into a roadmap with tickets
3. Tickets are created with dependencies in project management tools
4. Work is parallelized among multiple code agents
5. The developer reviews agent output, clarifies ambiguities, and approves

The developer becomes a **manager of agent work** rather than the primary executor.^[inferred]

## Agent Questioning as Improvement

A key aspect of this model is that agents should not just execute commands blindly. They should:

- Produce plans and ask clarifying questions
- Question requirements and make developers better
- Ground themselves in the full context before acting

This transforms the human-agent relationship from command-execution to collaborative problem-solving.^[inferred]

## Related Pages

- [[concepts/agent-driven-development|Agent-Driven Development]] — The broader paradigm
- [[concepts/agent-native-development|Agent-Native Development]] — Platform enabling orchestration
- [[concepts/agent-autonomy|Agent Autonomy]] — Agents must be autonomous to be orchestrated
- [[concepts/context-over-models|Context Over Models]] — Context quality affects orchestration quality
