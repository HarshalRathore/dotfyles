---
title: Ishan
category: entities
tags: [person, Amnara, agent-architecture, agent-identity]
aliases: [ishan, amnara ceo]
relationships:
  - target: '[[concepts/agent-identity-log]]'
    type: presented
  - target: '[[entities/amnara]]'
    type: ceo_of
sources:
  - https://www.youtube.com/watch?v=4sX_He5c4sI
summary: CEO of Amnara, presented on the concept that "the log is the agent" at WF2026.
provenance:
  extracted: 0.90
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: 2026-07-06
tier: supporting
created: 2026-07-06T00:00:00Z
updated: 2026-07-06T00:00:00Z
---

# Ishan

**Ishan** is the CEO of **Amnara**. He presented a talk titled "The Log is the Agent" at the AI Engineer World's Fair 2026, arguing that the dominant abstraction for agents -- the model or the runtime -- is wrong, and that an agent's true identity lives in its append-only event history. ^[extracted]

## Overview

Ishan leads Amnara, a company focused on agent infrastructure. His perspective reframes how engineers should think about building and deploying AI agents, emphasizing data and state as the core identity of an agent system rather than the specific model or execution environment. ^[extracted]

## WF2026 Talk: The Log is the Agent

Ishan's talk presented the core argument that most people think of an agent as the model or the execution environment, but the wrong abstraction. Instead, the thing that gives an agent its identity is its **log** -- the append-only event history containing every user input, model output, tool call, tool result, and permission failure. ^[extracted]

He used a powerful analogy: a character in a video game (e.g., Skyrim) that you've spent a hundred hours playing is not the game engine, the PlayStation, or the controller. It's the save file -- data. If the PlayStation bursts into flames, the character isn't gone; you buy another PlayStation, download the save file from the cloud, and resume exactly where you were. The agent and its identity, history, and state are all captured in its data. ^[extracted]

## Key Claims

- **The agent is not the model or the runtime -- it's the log.** The model and runtime are just interpreting and appending to the log. They read the log, act on it, and write the next event back. ^[extracted]
- **The identity of the agent isn't tied to the runtime, the model, or the tools.** Those things are all interchangeable interpreters of the log. This decoupling means you can swap models, change runtimes, or migrate tools without losing the agent's identity. ^[extracted]
- **Using the log on its own is enough to resume the agent.** Once you define "agent is the log," the log alone captures everything needed to reconstruct and continue the agent's state. ^[extracted]
- Every state transition that the agent takes is written to the log, making it the source of truth for the agent's entire history. ^[extracted]

## Related

- [[concepts/agent-identity-log|Agent Identity as Log]] — the concept Ishan presented
- [[entities/amnara|Amnara]] — the company Ishan leads

## Sources

- AI Engineer World's Fair 2026: https://www.youtube.com/watch?v=4sX_He5c4sI
