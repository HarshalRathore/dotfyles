---
title: "AX is the only Experience that Matters — Ivan Burazin, Daytona"
category: references
tags:
  - aief2025
  - talk
  - agent-experience
  - ax
  - agent-autonomy
  - api-first
  - agent-native
  - daytona
  - ivan-burazin
aliases: [ax is the only experience that matters, agent experience, ivan burazin daytona]
sources:
  - "AIEF2025 - AX is the only Experience that Matters - Ivan Burazin, Daytona - https://www.youtube.com/watch?v=e9sLVMN76qU"
provenance:
  extracted: 0.80
  inferred: 0.17
  ambiguous: 0.03
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/ivan-burazin]]"
    type: presented_by
  - target: "[[entities/daytona]]"
    type: presented_at_company
  - target: "[[concepts/agent-experience]]"
    type: primary_topic
---

# AX is the only Experience that Matters — Ivan Burazin, Daytona

**Speaker:** Ivan Burazin, Founder of Daytona
**Event:** AI Engineer World's Fair 2025
**Video:** https://www.youtube.com/watch?v=e9sLVMN76qU

## Summary

Ivan Burazin argues that AI agents will become the primary users of software — not co-pilots, but the developers themselves. Building dev tools for humans is building for the past. The discipline of building tools for agents is **Agent Experience (AX)**, and the critical differentiator is **autonomy**: agents must access, understand, and operate within digital environments without human fallback.

## Key Arguments

### Agents Are the Developers

25% of YC startups say AI writes 95% of their code. 37% of the latest YC batch are building agents as their products — not co-pilots, not autocomplete, not legacy SaaS. Agents are the new product. The number of agents will be humans to the power of n. ^[extracted]

### Most Tools Break Without Humans

The "most uncomfortable truth for people building tools for agents" is that most tools break the moment you remove a human from the loop. If an agent can do a lot but always has to fall back to you, that is not the future. ^[extracted]

### AX Definition

Matt Coates (Netlify co-founder) coined "Agent Experience." Sean at Netlify defined it: "How easily can agents access, understand, and operate within digital environments to achieve the goal that the user defined?" The critical missing word is **autonomously**. ^[extracted]

### Three AX Patterns

1. **Seamless authentication** (Arcade) — agents authenticate once, then operate
2. **Agent-readable docs** (Stripe) — clean markdown, llms.txt
3. **API-first design** (Neon, Etlify, Supabase) — every agent-accessible function via API

API-first is "the most critical." ^[extracted]

### Daytona: What a Laptop Is to a Human

Daytona creates agent-native runtimes — sandboxes for agents to run code, do data analysis, reinforcement learning, and computer use. Built on three principles: speed (27ms spin-up), API-first, and preloaded headless tooling. ^[extracted]

## Companies Cited

- **Arcade** — seamless authentication for agents
- **Stripe** — agent-readable docs (`.md` URLs, llms.txt)
- **Neon** — API-first database infrastructure
- **Etlify** — API-first data pipeline tooling
- **Supabase** — API-first backend-as-a-service
- **Swix** — claimed AX is "just a wrap around developer experience" (Burazin disagrees)

## Related Pages

- [[concepts/agent-experience]] — Agent Experience (AX) framework
- [[concepts/agent-autonomy]] — Agent autonomy as the critical differentiator
- [[concepts/api-first-design-for-agents]] — API-first as the critical AX principle
- [[concepts/agent-readable-docs]] — Agent-readable documentation patterns
- [[concepts/seamless-authentication-for-agents]] — Seamless authentication for agents
- [[concepts/agent-native-runtime]] — Agent-native computing environments
- [[entities/ivan-burazin]] — Ivan Burazin
- [[entities/daytona]] — Daytona
