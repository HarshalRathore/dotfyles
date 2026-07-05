---
title: "Agent Rails"
category: concepts
tags:
  - agents
  - coding-agents
  - constraints
  - guardrails
  - context
  - aief2025
aliases:
  - agent rails
  - rails
  - agent-constraints
summary: "Solomon Hykes concept of constraining coding agents to project context, coding style, build/test instructions — enabling productive background work."
sources:
  - "AIEF2025 - Containing Agent Chaos — Solomon Hykes, Dagger - https://www.youtube.com/watch?v=bUBF5V6oDKw"
provenance:
  extracted: 0.92
  inferred: 0.06
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
  - target: [[concepts/container-use|Container Use]]
    type: implements
  - target: [[concepts/agent-isolation|Agent Isolation]]
    type: related_to
  - target: [[concepts/agent-environment|Agent Environment]]
    type: component_of
---

# Agent Rails

**Agent rails** are the constraints and contextual guidance that allow coding agents to work productively in the background without constant human oversight. Introduced by [[entities/solomon-hykes|Solomon Hykes]] at AIEF2025, rails answer the question: "how do we constrain the agent to not just do things that we already know are not necessary?" ^[extracted]

## What Rails Include

Rails encompass the contextual knowledge an agent needs to work autonomously:

- **Project context** — understanding the codebase structure and conventions
- **Coding style** — following the team's established patterns
- **Build instructions** — knowing how to build and run the project
- **Test instructions** — knowing how to run tests and what they mean
- **Infrastructure defaults** — the base image used, which secrets are accessible, which tools to use

Without rails, agents waste "so many tokens just correcting as I go." ^[extracted]

## Rails as Customizability

Solomon maps rails to the **customizability** property of agent environments. An environment that can be customized with project-specific context, build instructions, and infrastructure defaults is one that provides rails. This is distinct from isolation (which enables background work) and multiplayer (which enables human stepping-in). ^[extracted]

## Rails vs. Guardrails

Rails are proactive contextual guidance; guardrails are reactive constraints. Rails tell the agent *what to do* (this is how we build, this is our style); guardrails tell the agent *what not to do* (don't touch this file, don't use that library). Both are needed for productive agent work. ^[inferred]

## Related

- [[concepts/container-use|Container Use]] — Container environments are the vehicle for rails
- [[concepts/agent-reliability-challenge|Agent Reliability Challenge]] — Rails reduce agent errors by providing context
- [[concepts/agent-as-teammate|Agent as Teammate]] — Rails are how teammates know each other's conventions
- [[concepts/flow-awareness|Flow Awareness]] — Windsurf's flow awareness is a form of rails
