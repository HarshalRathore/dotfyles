---
title: Agent Mentoring Model
tags:
- ai-agents
- mentoring
- agent-strategy
- aief2025
- human-agent-collaboration
aliases:
- mentoring the machine
- agent mentoring
- mentoring AI agents
sources:
- AIEF2025 - Mentoring the Machine — Eric Hou, Augment Code - https://www.youtube.com/watch?v=Zniw5c9_jx8
provenance:
  extracted: 0.7
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target:
  - - concepts/agent-as-teammate|Agent as Teammate
  type: extends
- target:
  - - concepts/context-gap|Context Gap
  type: addresses
- target:
  - - concepts/perpetually-junior-engineer|Perpetually Junior Engineer
  type: operationalizes
- target:
  - - concepts/agent-evaluation-role|Agent Evaluation Role
  type: requires
category: concepts
summary: Agent Mentoring Model
---

# Agent Mentoring Model

The **agent mentoring model** is a framework for working with AI agents that treats them like junior engineers who need mentoring rather than tools to be commanded or tickets to be assigned. ^[extracted] Articulated by [[entities/eric-hou|Eric Hou]] of [[entities/augment-code|Augment Code]] in his AIEF2025 talk "Mentoring the Machine," this model reframes the human-AI working relationship around the dynamics of mentoring rather than tool usage. ^[extracted]

## Core Principles

### Scaffolding Over Micromanagement

Instead of giving agents step-by-step implementation instructions, the mentoring model provides:

- **Outcomes** — what needs to be achieved
- **Context** — the relevant background and environment
- **Constraints** — architectural patterns and boundaries to respect
- **Tasks** — the same work you'd expect of any other engineer

The agent then explores the codebase, builds RFCs, and implements solutions within those boundaries. ^[extracted]

### Boundary Drawing, Not Instruction Giving

The mentoring model emphasizes drawing boundaries for the agent rather than prescribing exact steps. ^[extracted] This means specifying the "what" and "why" while leaving the "how" to the agent's judgment — similar to how a senior engineer mentors a junior by setting expectations and constraints rather than dictating every line of code. ^[inferred]

### Evaluation Over Implementation

The human's role shifts from writing code to evaluating the agent's work. ^[extracted] This includes reviewing outputs, coordinating next steps, and providing the "final round of human polish" that agents cannot yet deliver. ^[extracted]

## Where the Analogy Holds and Breaks

The mentoring model draws on the comparison between AI agents and junior engineers, but Eric explicitly noted where this analogy breaks down:

| Dimension | Junior Engineer | AI Agent |
|-----------|----------------|----------|
| Learning speed | Slow | Minutes to seconds |
| Knowledge retention | Retains and synthesizes | Forgets between conversations |
| Parallel work | One task at a time | Multiple tasks simultaneously |
| Context | Acquired over time | Must be provided each session |

This means AI is effectively a **perpetually junior engineer** — fast but forgetful, parallel but context-dependent. ^[extracted]

## Relationship to Agent as Teammate

The mentoring model is a specific instantiation of the broader "agent as teammate" framework. ^[inferred] Where "agent as teammate" provides the philosophical framing (agents are teammates, not tools), the mentoring model provides the operational practices (scaffolding, boundary-drawing, evaluation). ^[inferred]

## Impact

Eric demonstrated that applying the mentoring model transformed what would have been a "terrible day" — three simultaneous engineering challenges blocking each other — into a "normal Tuesday" solvable in half a day of active keyboard time. ^[extracted] The key insight: the transformation is not just completing work in parallel, but **unlocking time that previously did not exist**. ^[extracted]

## Related

- [[concepts/perpetually-junior-engineer|Perpetually Junior Engineer]] — The underlying characterization of AI agents
- [[concepts/context-gap|Context Gap]] — The core challenge the mentoring model addresses
- [[concepts/agent-evaluation-role|Agent Evaluation Role]] — The human's shifted responsibility
- [[concepts/agent-as-teammate|Agent as Teammate]] — The broader philosophical framework
- [[concepts/parallel-ai-workstreams|Parallel AI Workstreams]] — How mentoring enables parallel work
