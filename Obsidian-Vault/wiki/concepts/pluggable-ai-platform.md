---
title: Pluggable AI Platform
tags: [ai-platform, extensibility, plugin-architecture, agent-integration, developer-tools]
aliases: [pluggable ai, extensible ai platform, agent platform]
summary: "A product platform designed to be extensible with custom AI agents — recognizing that every team has unique workflows that can't be served by pre-baked AI features alone."
sources: ["[[sources/aief2025-building-the-platform-for-agent-coordination-—-tom-moor]]", "[[sources/watchv=ug9iadmi2dg]]"]
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
tier: supporting
created: 2026-07-04T00:00:00Z
updated: 2026-07-04T00:00:00Z
relationships:
  - target: [[concepts/agent-coordination|Agent Coordination Platform]]
    type: extends
  - target: [[concepts/agent-vs-workflow|Agent vs Workflow]]
    type: related_to
---

# Pluggable AI Platform

A pluggable AI platform is a product architecture where AI capabilities are exposed as integrable components rather than pre-baked features — enabling teams to add the agents and tools that match their specific workflows. ^[inferred]

## The Problem with Pre-baked AI

Linear recognized that "there's a limit" to what they can bake into their product. Every team is shaped differently, and a one-size-fits-all approach to AI features cannot serve all teams effectively. ^[extracted]

## The Pluggable Approach

Instead of trying to anticipate every team's needs, Linear built a platform where:

1. **Agents are first-class integrable components** — like CodeGen, a coding agent that can be assigned to issues ^[extracted]
2. **Teams choose their own agents** — rather than being forced into a predefined set of AI features ^[inferred]
3. **The platform provides the coordination layer** — the same space where humans communicate, agents can also operate ^[extracted]

## Why This Matters

The pluggable approach acknowledges a fundamental truth: AI adoption is team-specific. What works for OpenAI's workflow may not work for a small startup. By making the platform pluggable, Linear enables each team to compose their own AI toolkit rather than accepting a one-size-fits-all solution. ^[inferred]

## Related

- [[concepts/agent-coordination|Agent Coordination Platform]]
- [[concepts/agent-vs-workflow|Agent vs Workflow]]
- [[concepts/agent-as-teammate|Agent as Teammate]]
- [[entities/linear|Linear]]
