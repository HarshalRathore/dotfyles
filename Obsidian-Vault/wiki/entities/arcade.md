---
title: Arcade
category: entities
tags:
- company
- authentication
- agent-experience
- ai-agents
- aief2025
aliases:
- Arcade
sources:
- AIEF2025 - AX is the only Experience that Matters - Ivan Burazin, Daytona - https://www.youtube.com/watch?v=e9sLVMN76qU
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/seamless-authentication-for-agents]]'
  type: implements
- target: '[[concepts/agent-experience]]'
  type: applies
summary: Arcade
---

# Arcade

[[entities/ivan-burazin|Ivan Burazin]] cited [[entities/arcade|Arcade]] as a company implementing seamless authentication for AI agents — solving the critical problem of agents needing to log in to services to complete tasks.

## What They Do

Arcade provides a fallback authentication layer for agents:

- When an agent tries to authenticate into a service (Delta, Booking.com, etc.), it can fall back to the user
- The user logs in, then the agent can go off and do its job
- Alternatively, credentials can be stored inside Arcade — authenticate once, then the agent operates autonomously ^[extracted]

## Why It Matters

Authentication is one of the most common failure points for agents. Most agents break when they need to log in. Moreover, giving agents raw passwords is unsafe. Arcade's approach of fallback-to-human-authentication-with-post-agent-autonomy is a practical pattern for bridging the gap until fully autonomous agent authentication matures. ^[inferred]

## Note

Burazin met Arcade's founder at AIEF2025 and was impressed by their readiness to talk — "randomly, he was ready to talk." ^[extracted]
