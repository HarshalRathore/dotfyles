---
title: "Coding Is Going Away"
category: concepts
tags: [software-engineering, ai-impact, coding-agents, agent-driven-development, role-shift]
summary: The thesis that software engineers will spend significantly less time writing code due to AI coding agents, but software engineering as a discipline will not disappear — the human role shifts to critical thinking, empathy, and architecture.
sources:
  - "AIEF2025 - Software Development Agents: What Works and What Doesn't - Robert Brennan, OpenHands - https://www.youtube.com/watch?v=o_hhkJtlbSs"
provenance:
  extracted: 0.85
  inferred: 0.15
  ambiguous: 0.00
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/agent-driven-development|Agent-Driven Development]]"
    type: related_to
  - target: "[[concepts/orchestrating-vs-executing|Orchestrating vs. Executing]]"
    type: extends
  - target: "[[concepts/ai-intuition|AI Intuition]]"
    type: related_to
---

# Coding Is Going Away

The thesis that software engineers will spend significantly less time writing code due to AI coding agents, but software engineering as a discipline will not disappear. The human role shifts from keyboard work to critical thinking, user empathy, and architectural decisions. ^[extracted]

## Core Distinction

Engineers are paid not to type on keyboards but to think critically about problems. AI-driven development means less time "leaning forward and squinting into the IDE" and more time "sitting back in the chair and thinking" about:

- What does the user actually want?
- What problems are we trying to solve as an organization?
- How can we architect this for the future? ^[extracted]

## Division of Labor

| Human Engineers | AI Agents |
|---|---|
| Big-picture thinking | Inner loop (write → run → iterate) |
| User empathy | Code generation |
| Business objectives | Code execution |
| Architectural decisions | Repetitive tasks |
| Strategic decisions | Tactical implementation |

The AI is very good at the inner loop of development. It is not good at empathy, business-level objectives, or long-term architectural thinking. That is where humans come in. ^[extracted]

## Implications

- ~90% of code at OpenHands goes through the agent; only ~10% requires direct IDE work. ^[extracted]
- Engineers become more productive by delegating rote tasks to agents
- The skill set shifts toward communication, specification writing, and review
- Agents enable parallel work — send multiple agents at once

## Related

- [[concepts/agent-driven-development|Agent-Driven Development]] — The workflow where most code passes through agents
- [[concepts/orchestrating-vs-executing|Orchestrating vs. Executing]] — The human role in agent-native development
- [[concepts/ai-intuition|AI Intuition]] — Developing feel for working with agents effectively
- [[concepts/agent-best-practices|Agent Best Practices]] — Practical guidance for using coding agents
- [[entities/robert-brennan|Robert Brennan]] — Originator of this framing at AIEF2025
