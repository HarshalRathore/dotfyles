---
title: Dynamic Composition
category: concepts
type: concept
tags:
  - composition
  - software-architecture
  - plugins
  - runtime
  - theory
aliases:
  - dynamic composability
summary: "Loading, unloading, and reconfiguring components at runtime with formal guarantees — the umbrella problem the Cordis paper addresses via revertible effects and reactive coeffects."
sources:
  - "https://github.com/cordiverse/paper"
  - "https://raw.githubusercontent.com/cordiverse/paper/main/paper.pdf"
relationships:
  - target: "[[references/cordis-spatiotemporal-composability]]"
    type: derived_from
  - target: "[[concepts/temporal-composability]]"
    type: extends
  - target: "[[concepts/spatial-composability]]"
    type: extends
  - target: "[[entities/cordis]]"
    type: related_to
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.77
lifecycle: draft
lifecycle_changed: 2026-08-15
tier: supporting
created: 2026-08-15
updated: 2026-08-15
---

# Dynamic Composition

**Dynamic composition** is the ability to load, unload, and reconfigure components at runtime, in contrast to static composition (function calls, module imports, class inheritance) which is resolved at compile time and remains fixed during execution. ^[extracted]

## Definition

Dynamic composition assembles complex systems from simpler parts where components "arrive and depart at runtime." The Cordis paper ([[references/cordis-spatiotemporal-composability|Shi, Zhang & Cui, 2026]]) argues its theoretical foundations are underdeveloped compared to the rich formal frameworks available for static composition — despite its growing practical importance in plugin architectures and self-evolving agent harnesses. ^[extracted]

## Key Characteristics

- **Two orthogonal dimensions.** Temporal composability (reverting a component's side effects on removal) and spatial composability (declaring and reactively managing inter-component dependencies) are identified as independent requirements. ^[extracted]
- **Static reductions.** In the static setting, temporal composability reduces to lexical scoping (RAII, bracket patterns) and spatial composability to module import resolution. In the dynamic setting both become harder: effects are long-lived and not lexically bounded, and dependencies appear, disappear, or change identity. ^[extracted]
- **Coarse-grained workarounds are costly.** OS processes give temporal composability at process granularity; container orchestrators give spatial composability at service granularity. Each restart discards process-local state; container orchestration cannot express intra-address-space dependencies and adds network overhead. ^[extracted]
- **A compositional abstraction is required.** The paper concludes modern systems compose at a finer level than processes/containers, demanding an abstraction that manages effects and dependencies at the same level as the components themselves. ^[extracted]

## Applications

- **Plugin systems** — VSCode extensions cannot be unloaded individually without restarting the extension host (87/100 top extensions contain executable code; only 7 declare dependencies on non-built-ins). ^[extracted]
- **[[concepts/self-evolving-agent-harnesses|Self-evolving agent harnesses]]** — AI agents that generate and deploy modifications to their own components while continuously serving requests. ^[extracted]
- **[[entities/cordis|Cordis]]/[[entities/koishi|Koishi]]** — the paper's production implementation (4000+ Koishi plugins over four years). ^[extracted]

## Related Concepts

- [[concepts/temporal-composability]] — the time dimension
- [[concepts/spatial-composability]] — the space dimension
- [[concepts/revertible-effects]] — runtime mechanism for the temporal half
- [[concepts/reactive-coeffects]] — runtime mechanism for the spatial half
- [[concepts/context-paradigm]] — the unified paradigm
- [[concepts/ai-harness]] — harness engineering, where runtime composition of components is required
- [[concepts/functional-programming]] — the static-composition tradition this contrasts with
- [[references/cordis-spatiotemporal-composability]] — the paper deep-dive

## Related Entities

- [[entities/cordis]] — meta-framework implementation
- [[entities/koishi]] — production case study

## Mentions in Source

> "Composition—assembling complex systems from simpler parts—is a foundational principle of software engineering. Traditionally, composition is static... However, modern software increasingly demands dynamic composition, where components are loaded, unloaded, and reconfigured at runtime." ^[extracted]

## Sources

- https://github.com/cordiverse/paper
- https://raw.githubusercontent.com/cordiverse/paper/main/paper.pdf
