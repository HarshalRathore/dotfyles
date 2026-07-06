---
title: Context Gap
tags:
- ai-agents
- context
- onboarding
- aief2025
aliases:
- context gap
- knowledge gap
sources:
- AIEF2025 - Mentoring the Machine — Eric Hou, Augment Code - https://www.youtube.com/watch?v=Zniw5c9_jx8
provenance:
  extracted: 0.9
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.88
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target:
  - - concepts/agent-mentoring-model|Agent Mentoring Model
  type: addressed_by
- target:
  - - concepts/perpetually-junior-engineer|Perpetually Junior Engineer
  type: core_component_of
- target:
  - - concepts/agent-memory-knowledge|Agent Memory & Knowledge
  type: relates_to
- target:
  - - concepts/dynamic-context-ai|Dynamic Context AI
  type: relates_to
category: concepts
summary: Context Gap
---

# Context Gap

The **context gap** is the fundamental challenge that both AI agents and new engineers share: they start with no knowledge of your systems, your organizational context, and the years of experience working within your codebase. ^[extracted]

## Three Components

[[entities/eric-hou|Eric Hou]] of [[entities/augment-code|Augment Code]] identified three specific dimensions of the context gap: ^[extracted]

1. **System context** — Neither AI nor new engineers understand how your specific systems work
2. **Organizational context** — Neither knows your team structures, processes, and conventions
3. **Experience context** — Neither has years of accumulated knowledge from working with your specific systems

These three dimensions make it possible for both AI agents and new engineers to implement in isolation, but they require a structured environment to perform at their best. ^[extracted]

## Implications for Agent Design

The context gap explains why agents need:

- **Scaffolding and context provision** rather than micromanagement (see [[concepts/agent-mentoring-model|Agent Mentoring Model]])
- **Explicit outcome and constraint specification** since they cannot infer organizational norms
- **Persistent knowledge infrastructure** — codebases, documentation, context engines — that can be queried each session
- **Repeated context re-provisioning** — unlike humans who retain knowledge, agents must be given context each conversation

## Relationship to Perpetually Junior Engineer

The context gap is what makes AI agents "perpetually junior" — they lack the accumulated institutional knowledge that comes from years of working in a specific system. ^[inferred] This is distinct from the forgetting problem (forgetting between conversations) but related: both contribute to the agent never reaching "senior" status on your codebase. ^[inferred]

## Related

- [[concepts/agent-mentoring-model|Agent Mentoring Model]] — The framework for bridging the context gap
- [[concepts/perpetually-junior-engineer|Perpetually Junior Engineer]] — AI's status relative to the context gap
- [[concepts/agent-memory-knowledge|Agent Memory & Knowledge]] — Systems for persisting context
- [[concepts/dynamic-context-ai|Dynamic Context AI]] — Providing context dynamically
