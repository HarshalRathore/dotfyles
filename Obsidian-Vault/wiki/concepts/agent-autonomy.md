---
title: Agent Autonomy
category: concepts
tags:
- agent-autonomy
- agent-experience
- ax
- ai-agents
- aief2025
aliases:
- agent autonomy
- autonomous agents
- agent independence
sources:
- AIEF2025 - AX is the only Experience that Matters - Ivan Burazin, Daytona - https://www.youtube.com/watch?v=e9sLVMN76qU
- AIEF2025 - Building Agents (the hard parts!) - Rita Kozlov, Cloudflare - https://www.youtube.com/watch?v=j_TKDweOsYE
provenance:
  extracted: 0.8
  inferred: 0.17
  ambiguous: 0.03
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: core
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/agent-experience]]'
  type: core_component_of
- target: '[[concepts/seamless-authentication-for-agents]]'
  type: requires
- target: '[[concepts/api-first-design-for-agents]]'
  type: requires
summary: Agent Autonomy
---

# Agent Autonomy

**Agent autonomy** is the degree to which an AI agent can access, understand, and operate within digital environments without human intervention. It is the critical differentiator between tools built for the past (human-assisted) and tools built for the future (agent-native).

## The Autonomy Test

[[entities/ivan-burazin|Ivan Burazin]]'s framing: if you give an agent a task and it can do a lot but always has to fall back to you to achieve its task, that is not the future. The autonomy test asks: **what happens if there are no humans around to click the buttons, to debug errors, to whatever it may be?** ^[extracted]

## Why Current Tools Fail the Autonomy Test

Most tools built today for agents still require human intervention at critical points:

- **Authentication:** Agents cannot log in without human-provided credentials or human fallback
- **Error handling:** Agents cannot debug errors without human intervention
- **Decision points:** Agents hit walls where only a human can make a judgment call

These are not edge cases — they are the norm. Burazin estimates that most agent-facing tools "break the moment you remove a human from the loop." ^[extracted]

## Autonomy as the AX Differentiator

The word "autonomously" in the definition of Agent Experience is the key addition that separates true AX from DX with an agent as the user. Tools that enable autonomy are building for the future; tools that merely port human workflows to agents are "porting for the past." ^[extracted]

 ## Related Pages

 - [[concepts/agent-experience]] — Agent Experience (AX) as the discipline
 - [[concepts/seamless-authentication-for-agents]] — Authentication as an autonomy blocker
 - [[concepts/api-first-design-for-agents]] — API-first as an autonomy enabler
 - [[concepts/agent-native-runtime]] — Environments designed for autonomous agents

 ## Practical Autonomy: Starting Small

 [[entities/robert-brennan|Robert Brennan]] (OpenHands) recommends starting with small, autonomous tasks that have a clear definition of done — single-commit chores like fixing a failing test, resolving merge conflicts, or fixing lint errors. These are ideal because they are easy for both humans and agents to verify as "completely and correctly" done. ^[extracted]

 As autonomy intuition grows, engineers can delegate progressively larger tasks. At OpenHands, ~90% of code goes through the agent, with only ~10% requiring direct IDE work — demonstrating that high autonomy is achievable for the majority of development work. ^[extracted]
