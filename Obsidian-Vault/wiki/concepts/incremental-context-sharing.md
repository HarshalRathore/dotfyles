---
title: "Incremental Context Sharing"
tags:
  - incremental-context
  - agent-communication
  - conversation-pattern
  - copilot
  - aief2025
  - github
summary: "The pattern of sharing context with AI agents incrementally through natural conversation — starting broad, adding detail as it becomes relevant, and letting the agent adapt its responses over time."
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.70
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/ai-pair-programmer-analogy|AI Pair Programmer Analogy]]"
    type: implements
  - target: "[[concepts/context-management-for-agents|Context Management for Agents]]"
    type: relates-to
  - target: "[[concepts/explicit-intent-communication|Explicit Intent Communication]]"
    type: complements
---

# Incremental Context Sharing

**Incremental context sharing** is the pattern of sharing context with AI agents through natural, iterative conversation — starting broad, adding detail as it becomes relevant, and letting the agent adapt its responses over time. ^[extracted]

## The Brunch Conversation Pattern

[[entities/christopher-harrison|Christopher Harrison]] illustrates this with a brunch planning conversation: ^[extracted]

1. "I want to go to brunch" → recommendation
2. "Been there lately. Somewhere new." → new context added, new recommendation
3. "Actually, I'm craving waffles." → context emerged during conversation, final recommendation

Each turn adds or refines context, and the response adapts. This is the natural way humans collaborate — and it's how Copilot should be treated. ^[extracted]

## Key Characteristics

- **Not all context is known upfront** — Some requirements emerge during the conversation, just as they do with human collaborators.
- **Iterative refinement is expected** — The first suggestion won't be right. Iteration is the normal mode, not an exception.
- **Natural language over command syntax** — The pattern works because Copilot processes natural language with growing context, not because it parses structured commands.
- **Bidirectional** — The agent's responses can also surface new context that changes the human's understanding of what they want.

## Contrast with Older Chatbot Paradigms

Older chatbot tools required users to provide all context upfront in terse, structured prompts because they couldn't process natural language or maintain conversation state. Copilot's incremental model eliminates this constraint. ^[extracted]

## Relationship to Other Concepts

Incremental context sharing is the conversational implementation of the [[concepts/ai-pair-programmer-analogy|AI pair programmer analogy]]. ^[inferred] It relates to [[concepts/context-management-for-agents|context management]] by showing that context isn't just about what you feed the agent in a single prompt, but about how you build context over a conversation. ^[inferred] It complements [[concepts/explicit-intent-communication|explicit intent communication]] — the former is the pattern of sharing, the latter is the principle of being clear. ^[inferred]

## Sources

- AIEF2025 — The Agent Awakens: Collaborative Development with Copilot, Christopher Harrison, GitHub. https://www.youtube.com/watch?v=tHJSZ1-ZqcA
