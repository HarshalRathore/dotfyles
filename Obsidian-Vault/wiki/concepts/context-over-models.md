---
title: "Context Over Models"
category: concepts
tags: [context, llm-failure-modes, prompt-engineering, ai-tooling, agent-reliability]
summary: "AI tools fail primarily because they lack crucial context, not because models are insufficient. The solution is better context provision, not just better models."
sources:
  - "AIEF2025 - Ship Production Software in Minutes, Not Months — Eno Reyes, Factory - https://www.youtube.com/watch?v=iheWKg2Tkrk"
  - "AIEF2025 - The Eyes Are The (Context) Window to The Soul: How Windsurf Gets to Know You — Sam Fertig, Windsurf - https://www.youtube.com/watch?v=jUv5WSPo9fk"
provenance: { extracted: 0.7, inferred: 0.3, ambiguous: 0.0 }
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04T00:00:00Z
updated: 2026-07-04T00:00:00Z
relationships:
  - target: "[[concepts/agent-native-development|Agent-Native Development]]"
    type: foundational-to
  - target: "[[concepts/context-management-for-agents|Context Management for Agents]]"
    type: relates-to
  - target: "[[concepts/agent-experience|Agent Experience]]"
    type: informs
  - target: "[[concepts/context-philosophy-what-vs-how-much|Context Philosophy: What vs How Much]]"
    type: relates-to
---

# Context Over Models

**Context Over Models** is the principle that AI tools fail primarily because they lack crucial context — not because the underlying models are insufficient. Better models reduce failure frequency, but the fundamental solution is better context provision.

## The Principle

[[entities/eno-reyes|Eno Reyes]] of [[entities/factory|Factory]] investigated thousands of droid-assisted development sessions and found a consistent pattern:

> "AI tools are only as good as the context that they receive."^[extracted]

When AI fails to solve a problem, it is most often because the model is missing crucial context required to truly solve it — not because the model's reasoning capability is inadequate.

## What Context Is Missing

LLMs don't naturally know about:

- Morning stand-up meetings
- Ad-hoc conversations
- Whiteboard sessions
- Recent decisions made outside of code
- Organizational knowledge stored in meetings and notes

This context lies "in the cracks between systems" — it exists but is not accessible to the AI.^[extracted]

## The Solution: Integration, Not Smarter Models

The real solution isn't just making AI smarter. It's getting better at providing these systems with missing context through:

- Transcribing meetings and interactions
- Photographing whiteboards and uploading them
- Integrating natively with all data sources
- Building platforms where agents can actually consume and use that context

Reyes recommends thinking of AI tools as "something in between a coworker and a platform" rather than as tools — a mental model that emphasizes providing them with the same context a human coworker would have.^[inferred]

## Relationship to Prompt Engineering

Much of what is called "prompt engineering" is really **mentally modeling this alien intelligence that has a slice of context of the real world**. Understanding this shifts the focus from crafting better prompts to providing better context.^[extracted]

## Related Pages

- [[concepts/agent-native-development|Agent-Native Development]] — Platform approach requiring centralized context
- [[concepts/context-management-for-agents|Context Management for Agents]] — Technical patterns for managing agent context
- [[concepts/agent-experience|Agent Experience]] — Designing for agents that consume context
- [[concepts/documentation-as-agent-knowledge-base|Documentation as Agent Knowledge Base]] — Documentation as context source
- [[concepts/context-philosophy-what-vs-how-much|Context Philosophy: What vs How Much]] — Windsurf's two-pillar framework for context
