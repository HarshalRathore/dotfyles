---
title: Temporal Composability
category: concepts
type: concept
tags:
  - composition
  - effects
  - lifecycle
  - runtime
  - theory
aliases:
  - temporal composability
summary: "The time dimension of dynamic composition: upon component removal its modifications to the shared environment must be completely and safely reversed — formalized as revertible effects."
sources:
  - "https://github.com/cordiverse/paper"
  - "https://raw.githubusercontent.com/cordiverse/paper/main/paper.pdf"
relationships:
  - target: "[[concepts/revertible-effects]]"
    type: implements
  - target: "[[concepts/dynamic-composition]]"
    type: derived_from
  - target: "[[references/cordis-spatiotemporal-composability]]"
    type: related_to
provenance:
  extracted: 0.78
  inferred: 0.18
  ambiguous: 0.04
base_confidence: 0.77
lifecycle: draft
lifecycle_changed: 2026-08-15
tier: supporting
created: 2026-08-15
updated: 2026-08-15
---

# Temporal Composability

**Temporal composability** addresses the time dimension of dynamic composition: upon removal of a component, the modifications the component made to the shared environment must be completely and safely reversed. This requires tracking every resource allocation, event registration, and state mutation the component performs, and guaranteeing their orderly reclamation upon removal. ^[extracted]

## Definition

In the static setting, temporal composability reduces to lexical scoping (RAII, bracket patterns). In the dynamic setting — where components arrive and depart at runtime — it must handle long-lived, stateful effects whose scope is not lexically bounded. ^[extracted] The Cordis paper ([[references/cordis-spatiotemporal-composability|Shi, Zhang & Cui, 2026]]) formalizes it via **[[concepts/revertible-effects|revertible effects]]**: every context transformation carries an explicit inverse that the runtime tracks, and both tracking and recovery preserve composition. ^[extracted]

## Key Characteristics

- **Local form** — one component's effects recover its own contributions; guaranteed by the accumulator recovering the context it began at (Theorem 7) and reverting in an order that hands each inverse the state its own application ran against (Theorem 16). ^[extracted]
- **Global form** — a component's guarantee holds whatever other fibers do in between; recovery exactness (Theorem 61) says running a fiber's accumulator withdraws its contribution and nothing else, up to control fields, under pairwise independence. ^[extracted]
- **Recovery up to ≃.** Physical state is recovered only up to an observational equivalence — heap layouts and generative names need not be literally restored. ^[extracted]
- **Emissions outside the boundary are not recovered** — data pushed across the system boundary acts as identity and requires withholding or compensation instead. ^[extracted]

## Applications

- Plugin unload without host restart (contrast: VSCode extension host requires restart; 87/100 top extensions contain executable code). ^[extracted]
- [[concepts/self-evolving-agent-harnesses|Self-evolving agent harnesses]]: without temporal composability each self-modification forces a full restart that discards process-local state; a faulty self-modification can disable the process needed to recover. ^[extracted]
- HMR (hot module replacement) in [[entities/cordis|Cordis]]: disposing the old fiber recovers everything the component installed; a new fiber reinstalls it. ^[extracted]

## Related Concepts

- [[concepts/revertible-effects]] — the runtime mechanism realizing temporal composability
- [[concepts/spatial-composability]] — the orthogonal space dimension
- [[concepts/dynamic-composition]] — the umbrella problem
- [[concepts/context-paradigm]] — unification of both dimensions
- [[concepts/functional-programming]] — RAII/lexical-scope baseline this generalizes
- [[references/cordis-spatiotemporal-composability]] — paper deep-dive

## Related Entities

- [[entities/cordis]] — meta-framework implementation
- [[entities/koishi]] — production case study

## Mentions in Source

> "Temporal composability addresses the time dimension: upon removal of a component, the modifications the component made to the shared environment must be completely and safely reversed." ^[extracted]

## Sources

- https://github.com/cordiverse/paper
- https://raw.githubusercontent.com/cordiverse/paper/main/paper.pdf
