---
title: "Agent Isolation"
category: concepts
tags:
  - agents
  - isolation
  - containers
  - environments
  - parallel-agents
  - aief2025
aliases:
  - agent isolation
  - isolated-agent-environments
summary: "The principle that coding agents must work in isolated environments to enable background work, prevent interference, and contain failures. Containers provide the foundational technology."
sources:
  - "AIEF2025 - Containing Agent Chaos — Solomon Hykes, Dagger - https://www.youtube.com/watch?v=bUBF5V6oDKw"
provenance:
  extracted: 0.88
  inferred: 0.09
  ambiguous: 0.03
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: [[entities/solomon-hykes|Solomon Hykes]]
    type: emphasized_by
  - target: [[concepts/container-use|Container Use]]
    type: implements
  - target: [[concepts/agent-background-work|Agent Background Work]]
    type: enables
  - target: [[concepts/agent-environment|Agent Environment]]
    type: property_of
---

# Agent Isolation

**Agent isolation** is the principle that coding agents must operate in isolated environments to enable safe background work, prevent interference between agents, and contain failures. Introduced by [[entities/solomon-hykes|Solomon Hykes]] at AIEF2025, isolation is the first of four properties required for productive agent environments. ^[extracted]

## The Problem: Shared Environments

Solomon illustrates the problem with shared environments through the "YOLO mode" pattern: running multiple agents in the same environment where they "are all stepping on each other's toes." The methodology of watching agents closely "falls apart really quickly" in shared environments because agents interfere with each other's work. ^[extracted]

## Containers as the Foundation

Containers provide the foundational technology for agent isolation. Solomon notes that containers are "a foundational technology" that is "underutilized" for agents — we are "used to the first incarnation of the tools made for humans." The key insight is that agents can exercise container technology "really fully" if integrated natively rather than as an afterthought. ^[extracted]

## Isolation as a Property

Isolation is one of four environment properties Solomon identifies:

| Property | Enables |
|---|---|
| **Isolation** | Background work |
| **Customizability** | Rails |
| **Multiplayer** | Human stepping-in |
| **Openness** | Optionality |

[^extracted]

## Isolation vs. Sandboxing

Solomon distinguishes isolation from sandboxing: sandboxing executes the *output* of an agent securely (a security concern), while isolation provides the *environment* in which the agent develops (an productivity concern). Both are valuable but address different problems. ^[extracted]

## Related

- [[concepts/container-use|Container Use]] — Containers provide isolation natively
- [[concepts/agent-background-work|Agent Background Work]] — Isolation enables background work
- [[concepts/cloud-for-agents|Cloud for Agents]] — Cloud infrastructure provides isolation at scale
- [[concepts/agent-environment|Agent Environment]] — Isolation is a core property of agent environments
