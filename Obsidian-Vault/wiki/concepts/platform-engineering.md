---
title: "Platform Engineering"
category: concepts
tags:
  - platform-engineering
  - infrastructure
  - developer-experience
  - agents
  - aief2025
aliases:
  - platform engineering
  - platform-eng
summary: "The discipline of enabling others to build software productively. Solomon Hykes reframed it for the agent era: platform engineers now enable robots to ship software."
sources:
  - "AIEF2025 - Containing Agent Chaos — Solomon Hykes, Dagger - https://www.youtube.com/watch?v=bUBF5V6oDKw"
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: [[entities/solomon-hykes|Solomon Hykes]]
    type: discussed_by
  - target: [[concepts/container-use|Container Use]]
    type: enables
  - target: [[concepts/agent-as-teammate|Agent as Teammate]]
    type: related_to
---

# Platform Engineering

Platform engineering is the discipline of enabling other engineers to build and ship software in the most productive way possible. Platform engineers "don't get to build and ship cool software" — they build the tools, processes, and infrastructure that make everyone else's work better. ^[extracted]

## The Agent-Era Reframe

[[entities/solomon-hykes|Solomon Hykes]] reframed platform engineering for the coding agent era at AIEF2025: the platform engineer's job is now to "enable robots to ship awesome software while you spend more and more of your time enabling them to do that productively." ^[extracted]

This shifts the platform engineer from enabling human developers to enabling *coding agents* — building the environments, rails, and tooling that let agents work autonomously and effectively.

## Platform Engineering as the Agent Enabler

The talk positions platform engineering as the natural home for solving agent chaos:

- Platform engineers already build the infrastructure that agents need (environments, tools, secrets, compute)
- Their skill set — enabling others productively — maps directly to enabling agents productively
- The "tough job" of platform engineering becomes even more critical as agents scale

[^extracted]

## Related

- [[concepts/container-use|Container Use]] — The container-native environment primitive for agents
- [[entities/solomon-hykes|Solomon Hykes]] — Platform engineer who reframed the discipline for agents
- [[concepts/agent-rails|Agent Rails]] — Platform engineering for agents: constraining and guiding them
- [[concepts/agent-as-teammate|Agent as Teammate]] — How agents fit into the team structure platform engineers enable
