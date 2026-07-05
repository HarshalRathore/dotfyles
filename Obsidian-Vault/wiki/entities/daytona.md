---
title: "Daytona"
category: entities
tags:
  - company
  - infrastructure
  - agent-native
  - sandboxes
  - ai-agents
  - aief2025
aliases: [Daytona]
sources:
  - "AIEF2025 - AX is the only Experience that Matters - Ivan Burazin, Daytona - https://www.youtube.com/watch?v=e9sLVMN76qU"
provenance:
  extracted: 0.90
  inferred: 0.07
  ambiguous: 0.03
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/agent-native-runtime]]"
    type: implements
  - target: "[[concepts/agent-experience]]"
    type: applies
  - target: "[[entities/ivan-burazin]]"
    type: founded_by
---

# Daytona

[[entities/ivan-burazin|Ivan Burazin]]'s company: a secure and elastic infrastructure purposely built for running AI-generated code. Daytona creates an **agent-native runtime** — sandboxes that give agents computing environments to run code, do data analysis, reinforcement learning, and computer use.

## What It Does

Daytona is described as "what a laptop is to a human." Agents use Daytona runtimes to:

- Run code in isolated environments
- Do data analysis
- Run reinforcement learning
- Perform computer use tasks
- Play video games (Counter-Strike, etc.) ^[extracted]

## Design Principles

Daytona was built applying Agent Experience principles:

1. **Speed:** Spins up in ~27 milliseconds for interactive mode (like Claude or ChatGPT) — agents don't waste time waiting for tools to turn on ^[extracted]
2. **API-first:** Every operation (spin up, spin down, clone, delete) is accessible via API ^[extracted]
3. **Headless tooling preloaded:** File explorers, git clients, LSPs, terminals — preloaded so agents don't have to parse terminal output ^[extracted]

## The Autonomy Problem

During development, Daytona discovered that agents could do a lot but still required human intervention for certain tasks. This reinforced Burazin's thesis: the critical missing piece in agent tooling is **autonomy** — the ability for agents to operate without human fallback. ^[extracted]

## Team

Daytona was founded by people Ivan has worked with historically (from Infobip and his earlier browser-IDE company), which he notes makes founding "so much more fun." ^[extracted]
