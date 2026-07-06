---
title: Irina
category: entities
tags: [person, Microsoft, Supercell, Project-Paradox, multi-agent]
aliases: [irina, irina microsoft, irina supercell, Project Paradox]
relationships:
  - target: '[[concepts/multi-agent-architecture]]'
    type: discussed
  - target: '[[concepts/agent-memory]]'
    type: discussed
  - target: '[[concepts/Karpathy-AutoResearch]]'
    type: discussed
sources:
  - https://www.youtube.com/watch?v=4sX_He5c4sI
summary: Former engineer at Microsoft and Supercell, developed Project Paradox -- a multi-agent framework for video games -- and presented on auto-research in multi-agent AI villages at WF2026.
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: 2026-07-06
tier: supporting
created: 2026-07-06T00:00:00Z
updated: 2026-07-06T00:00:00Z
---

# Irina

**Irina** is a former engineer at **Microsoft** and **Supercell**. At Supercell's AI innovation lab, she and her teammate developed **Project Paradox**, a modular AI framework for plugging intelligent, autonomous agents into video games. She presented on "Auto Research in a Multi-Agent AI Village" at the AI Engineer World's Fair 2026. ^[extracted]

## Overview

Irina brings software engineering experience from both Microsoft and Supercell. At Supercell's AI innovation lab, she built Project Paradox, a framework that allows any developer to plug in intelligent, autonomous agents within a video game that can interact, compete, or cooperate with other players or agents, creating dynamic game companions. ^[extracted]

## WF2026 Talk: Auto Research in a Multi-Agent AI Village

Irina used a video game AI village as a running example but framed the broader question many AI engineers face: how do you evaluate and improve agents that carry state over a long period of time? ^[extracted]

### Project Paradox architecture

The framework is intentionally stateful with four key components: ^[extracted]

1. **Per-agent memory**: Each agent has its own memory namespace backed by RAG, so memory does not bleed between agents.
2. **Emotion vectors**: After an event or conversation, the system updates values for joy, sadness, fear, anger, and disgust.
3. **Belief scores / trust matrix**: Agents maintain belief scores towards other agents and the player. After an interaction, the LLM decides whether the trust score should go up, down, or stay unchanged.
4. **Importance-scored memories**: Every memory receives an importance score. If it crosses a threshold, it is stored in a separate cache so important context can be retrieved better (analogous to how you remember a murder but not what you had for dinner days ago).

### Bringing auto-research to multi-agent systems

Irina described the challenges of long-running social behavior in multi-agent systems. Without proper architecture, the system may remember the rough topic but lose the source, a rumor may become stated as fact, or an agent may know a fact but fail to remember it while creating a plan. She discussed how Karpathy's auto-research paradigm could be applied to make the system run experiments on itself instead of manually tuning prompts. ^[extracted]

## Key Claims

- **Agents can move with intent, guided by their own memories, emotion, or curiosity.** They can go to any location or person, interact with the world, pick up and drop objects, and are aware of the context in their environment. ^[extracted]
- **Conversations between agents affect their own emotions and beliefs and goals** -- every interaction is stored in memory and shapes the agent's internal state. ^[extracted]
- **The core question is how to improve a multi-agent system over long-running social behavior, not just over one response.** This is where auto-research paradigms apply -- running experiments on the system itself instead of manual prompt tuning. ^[extracted]
- Per-agent isolation (separate RAG namespaces) prevents memory bleeding between agents, which is essential for maintaining distinct agent identities and behaviors. ^[extracted]

## Related

- [[concepts/multi-agent-architecture|Multi-Agent Architecture]] — the architectural pattern Project Paradox implements
- [[concepts/agent-memory|Agent Memory]] — the per-agent RAG memory approach
- [[concepts/project-paradox|Project Paradox]] — the multi-agent game framework Irina developed at Supercell
- [[concepts/Karpathy-AutoResearch|Karpathy AutoResearch]] — the self-improvement paradigm Irina discussed

## Sources

- AI Engineer World's Fair 2026: https://www.youtube.com/watch?v=4sX_He5c4sI
