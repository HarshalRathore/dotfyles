---
title: API-First Design for Agents
category: concepts
tags:
- agent-experience
- api-first
- machine-native
- agent-experience
- aief2025
aliases:
- api-first design
- API-first for agents
- machine-native interface
sources:
- AIEF2025 - AX is the only Experience that Matters - Ivan Burazin, Daytona - https://www.youtube.com/watch?v=e9sLVMN76qU
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
- target: '[[concepts/agent-experience]]'
  type: core_component_of
- target: '[[concepts/agent-autonomy]]'
  type: enables
summary: API-First Design for Agents
---

# API-First Design for Agents

**API-first design** is the principle that the best way for an agent to interact with any tool is through a machine-native interface — an API that exposes all the functionality the agent needs to operate autonomously.

## The Critical Principle

[[entities/ivan-burazin|Ivan Burazin]] argues this is "actually the most critical" AX principle: "if an agent can't see the functionality, it's really hard for it to do." An API is the underlying technology that must be exposed so agents can access what they want "the most efficiently." ^[extracted]

## The Machine-Native Interface Thesis

Burazin's strong belief: "the best way for an agent to interact with any tool is through a machine native interface." He puts "API" here as the canonical form, noting that other protocols (like MCP) may or may not persist, but the underlying principle — a machine-native interface — is non-negotiable. ^[extracted]

## Companies Doing It Right

Burazin cites several companies that expose all key agent-accessible functionality via API:

- [[entities/neon|Neon]] — database infrastructure
- [[entities/etlify|Etlify]] — data pipeline tooling
- [[entities/supabase|Supabase]] — backend-as-a-service

"All the key things that an agent needs to use their services can be accessed via an API." ^[extracted]

## Relation to Autonomy

API-first design is the foundation of agent autonomy. Without an API, agents must rely on UI automation (screen scraping, browser automation), which is fragile and slow. An API gives agents direct, efficient, reliable access to functionality. ^[inferred]

## Related Pages

- [[concepts/agent-experience]] — Agent Experience (AX) framework
- [[concepts/agent-autonomy]] — Agent autonomy as the critical differentiator
- [[concepts/agent-native-runtime]] — Agent-native computing environments
