---
title: "Cloud for Agents"
tags:
  - ai
  - infrastructure
  - cloud
  - agents
sources:
  - "AI Engineer World's Fair 2025 talk - Infrastructure for the Singularity — Jesse Han, Morph - https://www.youtube.com/watch?v=2goSS66XRBk"
summary: "Cloud infrastructure purpose-built for AI agents, featuring declarative workspaces, fast snapshotting and branching of environments, and frictionless handoff between humans and agents."
provenance:
  extracted: 0.68
  inferred: 0.22
  ambiguous: 0.10
base_confidence: 0.42
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---
# Cloud for Agents

The "cloud for agents" is a vision for cloud infrastructure redesigned from the ground up for AI agents rather than human-operated workloads. The concept was articulated by [[entities/jesse-han|Jesse Han]] of [[entities/morph|Morph]] at AI Engineer World's Fair 2025, alongside the InfiniBranch platform. ^[extracted]

## Key Characteristics

- **Declarative workspaces** — Agents operate in declaratively specified environments that can be spun up and torn down on demand. ^[extracted]
- **Instant snapshotting and branching** — Environments can be snapshotted, branched, and replicated in milliseconds, not seconds. ^[extracted]
- **Frictionless handoff** — Workspaces pass seamlessly between humans, agents, and other agents without reconfiguration. ^[extracted]
- **Test-time scaling** — Infrastructure natively supports scaling test-time compute against verifiers: many agents race in parallel, and the best solution wins. ^[extracted]
- **Reversible actions** — All environment mutations are reversible via snapshot branching, giving agents the ability to explore freely without permanence of mistakes. ^[extracted]

## "Git for Compute" Pattern

The talk analogizes InfiniBranch's snapshot semantics to Docker layer caching and git: side effects on the environment create layers that can be stacked, branched, and merged. Workflows become idempotent chains of operations on snapshots. ^[extracted] This enables agent workflows where a declaratively specified snapshot can be handed to multiple parallel agents, each trying different approaches, with the successful result passed to the next workflow stage. ^[extracted]

## Relationship to [[concepts/reasoning-time-branching|Reasoning Time Branching]]

The cloud for agents provides the substrate for reasoning time branching: without sub-second environment branching, parallel agent exploration at scale is infeasible on traditional cloud infrastructure. ^[inferred]

## Open Questions

- The vision is primarily defined by a single vendor (Morph) — whether the architecture generalizes to multi-cloud or open standards is unclear. ^[inferred]
- Cost characteristics at scale: snapshot storage, branching, and environment replication at agentic scale have unknown cost curves.
- How the "cloud for agents" relates to existing [[concepts/model-context-protocol|Model Context Protocol]] and agent interoperability standards is not addressed.

## Sources

- [[references/infrastructure-for-the-singularity-jesse-han-morph|Infrastructure for the Singularity — Jesse Han, Morph]]
