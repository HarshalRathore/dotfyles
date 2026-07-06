---
title: Agent-Native Runtime
category: concepts
tags:
- agent-native
- runtime
- sandboxes
- agent-environment
- aief2025
aliases:
- agent-native runtime
- agent computing environment
- agent sandbox
sources:
- AIEF2025 - AX is the only Experience that Matters - Ivan Burazin, Daytona - https://www.youtube.com/watch?v=e9sLVMN76qU
- AIEF2025 - Ship Production Software in Minutes, Not Months — Eno Reyes, Factory - https://www.youtube.com/watch?v=iheWKg2Tkrk
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
- target: '[[concepts/agent-experience]]'
  type: implements
- target: '[[concepts/agent-autonomy]]'
  type: enables
summary: Agent-Native Runtime
---

# Agent-Native Runtime

An **agent-native runtime** is a computing environment purpose-built for AI agents to execute tasks autonomously — the agent equivalent of a laptop for a human.

## Definition

[[entities/ivan-burazin|Ivan Burazin]] describes Daytona's product as an "agent-native runtime" — sandboxes that give agents a computing environment to:

- Run code
- Do data analysis
- Run reinforcement learning
- Perform computer use tasks
- (Recently) play video games like Counter-Strike ^[extracted]

> "Daytona is basically what a laptop is to a human. That is what a Daytona runtime is for an agent." ^[extracted]

## Design Principles

Agent-native runtimes are built on three principles:

1. **Speed:** Spins up in ~27 milliseconds — agents in interactive mode don't waste time waiting
2. **API-first:** Every operation (spin up, spin down, clone, delete) is accessible via API
3. **Preloaded tooling:** Headless tools preloaded — file explorers, git clients, LSPs, terminals — so agents don't have to parse terminal output to discover what's available ^[extracted]

## The Insight

The key insight behind agent-native runtimes: it's not enough for an agent to be able to spin up an environment. The question is "what happens when it gets inside?" Preloading tools that agents can actually use (rather than expecting them to navigate a human-oriented terminal) is what separates agent-native from human-oriented environments with an agent as the user. ^[inferred]

## Factory's Platform

[[entities/factory|Factory]] builds an agent-native platform where "droids" operate across the full software lifecycle — not just code generation. Their platform requires centralized context from all engineering tools, reliable agents producing high-quality outputs, and infrastructure supporting thousands of parallel agents. This aligns with the agent-native runtime philosophy: environments purpose-built for agents, not human-oriented tools with an agent as the user.^[inferred]

## Related Pages

- [[concepts/agent-experience]] — Agent Experience (AX) framework
- [[concepts/agent-autonomy]] — Agent autonomy as the critical differentiator
- [[entities/daytona]] — Daytona's implementation
