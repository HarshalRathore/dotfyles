---
title: Kyle Penfound
tags:
- entity
- person
- dagger
- devops
- platform-engineering
- aief2025
aliases:
- kpenfound
- Kyle Penfound Dagger
summary: Member of the Dagger ecosystem team, co-presenter of the 'Ship Agents that Ship' workshop at AI Engineer World's Fair 2025. Background in DevOps and platform engineering.
sources:
- 'https://www.youtube.com/watch?v=fzb1a24hf-o'
provenance:
  extracted: 0.75
  inferred: 0.2
  ambiguous: 0.05
base_confidence: 0.4
lifecycle: draft
tier: peripheral
created: 2026-07-03
updated: 2026-07-03
category: entities
---

# Kyle Penfound

Kyle Penfound is a member of the ecosystem team at [[entities/dagger|Dagger]]. He co-presented the hands-on workshop "Ship Agents that Ship" at the AI Engineer World's Fair 2025 (AIEF2025), demonstrating how to build container-sandboxed software engineering agents using Dagger's LLM primitives. ^[extracted]

## Background

Penfound comes from a background in DevOps and platform engineering, bringing an infrastructure-oriented perspective to agent development. He emphasizes that agents must eventually be deployed somewhere — they cannot "live on your machine all the time." ^[extracted]

## Key Contributions

Penfound demonstrated the full pipeline for a code-generating agent at AIEF2025:

- Building a **workspace module** with file system tools (read, write, list) and test functions that the agent can use as a sandboxed development environment ^[extracted]
- Creating a **typed agent environment** that declaratively defines what tools and inputs the agent has access to ^[extracted]
- Using **Dagger's LLM primitive** to connect a prompt with a scoped environment as a single function call ^[extracted]
- Building a **GitHub label-triggered agent pipeline** where labeling an issue causes the agent to read the issue, write code, run tests, and create a PR automatically ^[extracted]
- Demonstrating **multi-agent composition** — agents as tools within other agents, including agents that write Dagger code themselves ^[extracted]

## Related

- [[entities/jeremy-adams]] — Co-presenter from Dagger
- [[entities/dagger]] — Dagger platform
- [[concepts/dagger-agent-platform]] — The agent platform approach demonstrated in the workshop
- [[references/aief2025-ship-agents-that-ship]] — Full talk reference

## Sources

- AIEF2025 — Ship Agents that Ship: A Hands-On Workshop, Kyle Penfound, Jeremy Adams, Dagger. https://www.youtube.com/watch?v=Fzb1a24hF-o
