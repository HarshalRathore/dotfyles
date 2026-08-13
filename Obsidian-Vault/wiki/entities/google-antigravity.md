---
title: Google Antigravity
category: entities
tags:
  - google
  - coding-agent
  - ai-agents
  - orchestration
  - developer-experience
aliases:
  - Antigravity
  - Google Anti-Gravity
sources:
  - "https://x.com/i/status/2083430232405733819"
  - "https://x.com/i/article/2075822391708758205"
summary: "Google's announced agent-first development surface: Antigravity 2.0, a CLI, SDK, voice support, integrations, artifacts, sub-agents, hooks, and asynchronous task management."
provenance:
  extracted: 0.84
  inferred: 0.12
  ambiguous: 0.04
base_confidence: 0.58
lifecycle: draft
lifecycle_changed: "2026-08-02"
tier: supporting
created: "2026-08-02T01:17:21Z"
updated: "2026-08-02T01:17:21Z"
relationships:
  - target: "[[entities/google|Google]]"
    type: related_to
  - target: "[[entities/gemini|Gemini]]"
    type: uses
  - target: "[[concepts/ai-harness|AI Agentic Harness]]"
    type: implements
  - target: "[[concepts/parallel-agents|Parallel Agents]]"
    type: enables
  - target: "[[concepts/agentic-architecture|Agentic Architecture]]"
    type: implements
---

# Google Antigravity

**Google Antigravity** is Google's announced agent-first development surface. The source describes a full CLI, an SDK, native voice support, integrations with Android, Firebase, and Google AI Studio, and Antigravity 2.0 as a standalone desktop application. ^[extracted]

## Agent-First Surface

Antigravity 2.0 centers the interaction around:

- agent conversations;
- generated artifacts such as plots, infographics, and code-derived graphs; and
- multi-agent orchestration. ^[extracted]

The product is therefore presented as a workspace for delegating and inspecting work, not merely an editor with an assistant panel. ^[inferred]

## Harness Primitives

The Antigravity harness adds **sub-agents**, **hooks**, and **asynchronous task management** around Gemini models. Gemini 3.5 Flash is presented as co-optimized with this runtime, making the harness part of the advertised capability boundary. ^[extracted]

## Operating-System Experiment

The keynote reports an asynchronous operating-system build using 93 parallel sub-agents, more than 15,000 model requests, and 2.6 billion tokens over more than 12 hours. The agents generated, executed, and iterated over tests and produced a functioning core OS for less than $1,000 in stated API credits. ^[extracted]

The live follow-up is informative: the shell can run `sl`, but Doom initially fails because video and keyboard drivers are missing. The presenter then asks Antigravity to fix the drivers while touring the desktop's conversation and artifact views. This demonstrates iterative repair and review; it does not independently validate the full OS claim. ^[inferred]

## Relationship to Google Jules

[[entities/google-jules|Google Jules]] is Google's cloud-based asynchronous coding agent, while this source presents Antigravity as a broader agent-first desktop, CLI, SDK, and orchestration surface. They are related Google coding-agent products, but the source does not establish whether Antigravity replaces, embeds, or shares implementation with Jules. ^[inferred] ^[ambiguous]

## Related

- [[entities/google|Google]] — parent company
- [[entities/gemini|Gemini]] — model family used in the product story
- [[concepts/gemini-35-flash|Gemini 3.5 Flash]] — model presented as co-optimized with the harness
- [[concepts/ai-harness|AI Agentic Harness]] — runtime layer around model calls
- [[concepts/parallel-agents|Parallel Agents]] — parallel sub-agent execution
- [[concepts/agentic-architecture|Agentic Architecture]] — orchestration pattern the product embodies
- [[entities/google-jules|Google Jules]] — related Google coding-agent product
- [[misc/web-x-com-i-status-2083430232405733819|Source: Google I/O keynote excerpt]]
