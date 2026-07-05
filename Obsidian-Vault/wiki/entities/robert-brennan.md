---
title: "Robert Brennan"
category: entities
tags: [person, openhands, opensource, software-engineering]
summary: Co-founder of OpenHands (formerly OpenDevon), open source development tools builder for over a decade. Advocate for AI-driven software development and the shift from coding to thinking.
sources:
  - "AIEF2025 - Software Development Agents: What Works and What Doesn't - Robert Brennan, OpenHands - https://www.youtube.com/watch?v=o_hhkJtlbSs"
provenance:
  extracted: 0.95
  inferred: 0.05
  ambiguous: 0.00
base_confidence: 0.90
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[entities/openhands|OpenHands]]"
    type: related_to
  - target: "[[concepts/agent-driven-development|Agent-Driven Development]]"
    type: related_to
---

# Robert Brennan

**Robert Brennan** is a co-founder of [[entities/openhands|OpenHands]] (formerly OpenDevon) and has been building open source software development tools for over a decade.

At AI Engineer World's Fair 2025, he delivered a talk on "Software Development Agents: What Works and What Doesn't," sharing practical lessons from building and using OpenHands as an autonomous coding agent.

## Key Views

- **Coding is going away** — Software engineers will spend significantly less time writing code, but software engineering as a discipline will not disappear. The human role shifts toward critical thinking, user empathy, and architectural decisions. ^[extracted]
- **The AI handles the inner loop** — Writing code, running code, iterating. Humans handle the big picture: user needs, business objectives, and future-proof architecture. ^[extracted]
- **Start small with agents** — Best tasks are single-commit chores with clear definitions of done (fixing a failing test, resolving merge conflicts, lint errors). ^[extracted]
- **Be specific in instructions** — Tell agents not just what to do, but how: mention frameworks, development strategies (TDD), and specific files or functions. This improves both accuracy and speed. ^[extracted]
- **Agent-driven workflow** — At his company, ~90% of code goes through the agent; only ~10% requires direct IDE work. ^[extracted]

## Related

- [[entities/openhands|OpenHands]] — The open source coding agent he co-founded
- [[concepts/agent-loop|Agent Loop]] — The core loop between LLM and external world
- [[concepts/assistive-vs-automation-agents|Assistive vs Automation Agents]] — His talk contrasts tactical code gen with autonomous agents
- [[concepts/agent-tools|Agent Tools]] — Code editor, terminal, and browser as agent tooling
