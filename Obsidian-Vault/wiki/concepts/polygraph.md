---
title: Polygraph
category: concepts
tags: [agent-architecture, context-management, multi-repo, agent-loop, polygraph]
aliases: [polygraph, polygraph agent tool]
relationships:
  - target: '[[concepts/agent-identity-log]]'
    type: implements
  - target: '[[concepts/agent-recipes]]'
    type: related_to
  - target: '[[concepts/episodic-memory-agents]]'
    type: related_to
sources:
  - https://www.youtube.com/watch?v=4sX_He5c4sI
summary: A tool that solves space (repo-bound context) and time (amnesia) constraints by treating complex multi-repo changes as a single repo change, capturing agent traces across the organization.
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

# Polygraph

**Polygraph** is a tool that solves two fundamental constraints in agent-assisted development: ^[extracted]

1. **Space constraint** — agents are repo-bound; they don't know about other repositories
2. **Time constraint** — agents suffer from amnesia between sessions

Polygraph treats complex multi-repo changes as if they were a single repo change. ^[extracted]

## How It Works

Polygraph captures: ^[extracted]

- Your work across multiple repositories
- The intent behind each change
- Which repositories are involved
- PRs and their context
- All agent traces

By capturing all of this, Polygraph can relate work across repos — showing how work in one repo connects to work in another. ^[extracted]

## Result

You get an agent with **identical photographic memory** of your entire organization. It understands: ^[extracted]

- How repos are written
- How they relate to each other
- How the codebase is structured

This lets you restore any session, any piece of work, on any machine, or reference it from anywhere. ^[extracted]

## Connection to Agent Identity as Log

Polygraph is the practical implementation of the **agent identity as log** concept. The agent's identity is its append-only event history, and Polygraph captures that history across the entire organization. ^[inferred]

## Related

- [[concepts/agent-identity-log|Agent Identity as Log]] — the theoretical foundation Polygraph implements
- [[concepts/agent-recipes|Agent Recipes]] — portable agent configurations
- [[concepts/episodic-memory-agents|Episodic Memory Agents]] — agents that remember past experiences
- [[concepts/agent-loop|Agent Loop]] — the execution cycle Polygraph observes
- [[entities/roland|Roland]] — ex-xAI, presenter of Polygraph

## Sources

- AI Engineer World's Fair 2026: https://www.youtube.com/watch?v=4sX_He5c4sI
