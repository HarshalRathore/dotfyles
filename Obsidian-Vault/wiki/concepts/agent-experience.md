---
title: "Agent Experience (AX)"
category: concepts
tags:
  - agent-experience
  - ax
  - agent-first
  - developer-experience
  - ai-agents
  - aief2025
aliases: [agent experience, AX, agent experience design]
sources:
  - "AIEF2025 - AX is the only Experience that Matters - Ivan Burazin, Daytona - https://www.youtube.com/watch?v=e9sLVMN76qU"
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: core
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/agent-autonomy]]"
    type: requires
  - target: "[[concepts/api-first-design-for-agents]]"
    type: encompasses
  - target: "[[concepts/agent-readable-docs]]"
    type: encompasses
  - target: "[[concepts/seamless-authentication-for-agents]]"
    type: encompasses
---

# Agent Experience (AX)

**Agent Experience (AX)** is the discipline of building tools, interfaces, and infrastructure specifically for AI agents — the evolution of user experience (UX), customer experience (CX), and developer experience (DX) into the agent-first era.

## Origin

The term was coined by [[entities/ivan-burazin|Matt Coates]] (co-founder of Netlify, friend of [[entities/ivan-burazin|Ivan Burazin]]). The definition that works best comes from Sean at Netlify:

> How easily can agents access, how easily can they understand, and how easily can they operate within digital environments to achieve the goal that the user defined? ^[extracted]

## The Core Thesis

Most tools built today break the moment you remove a human from the loop. As AI agents become the primary users of software (they will be the developers, not co-pilots), building dev tools for humans is building for the past. AX is the term for building tools for the future — for agents. ^[extracted]

## The Missing Word: Autonomy

The critical addition to AX is the word **autonomously**. The full definition should read: "How easily can agents *autonomously* access, understand, and operate within digital environments?" If an agent can do a lot but always has to fall back to a human to achieve its task, that is not the future. ^[extracted]

## Current AX Practices

Burazin identified three categories of companies implementing AX principles:

1. **Seamless authentication** (e.g., [[entities/arcade|Arcade]]) — agents authenticate once, then operate without human intervention
2. **Agent-readable docs** (e.g., [[entities/stripe|Stripe]]) — clean markdown, `llms.txt` standards
3. **API-first design** (e.g., [[entities/neon|Neon]], [[entities/etlify|Etlify]], [[entities/supabase|Supabase]]) — every agent-accessible function exposed via API

^[inferred]

## Related Pages

- [[concepts/agent-autonomy]] — The autonomy gap in agent tooling
- [[concepts/agent-native-runtime]] — Agent-native computing environments
- [[concepts/api-first-design-for-agents]] — API-first as the critical AX principle
- [[concepts/agent-readable-docs]] — Agent-readable documentation patterns
- [[concepts/seamless-authentication-for-agents]] — Seamless authentication for agents
