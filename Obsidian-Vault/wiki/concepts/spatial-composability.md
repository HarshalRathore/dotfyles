---
title: Spatial Composability
category: concepts
type: concept
tags:
  - composition
  - coeffects
  - dependencies
  - reactivity
  - theory
aliases:
  - spatial composability
summary: "The space dimension of dynamic composition: components declare, discover, and resolve dependencies on one another in a structured, verifiable way — formalized as reactive coeffects."
sources:
  - "https://github.com/cordiverse/paper"
  - "https://raw.githubusercontent.com/cordiverse/paper/main/paper.pdf"
relationships:
  - target: "[[concepts/reactive-coeffects]]"
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

# Spatial Composability

**Spatial composability** addresses the space dimension of dynamic composition: components must be able to declare, discover, and resolve their dependencies on one another in a structured and verifiable manner. This requires managing dependency topology and coordinating component lifecycles in response to dependency changes. ^[extracted]

## Definition

In the static setting, spatial composability reduces to module import resolution. In the dynamic setting it must handle dependencies that appear, disappear, or change identity during execution. ^[extracted] The Cordis paper ([[references/cordis-spatiotemporal-composability|Shi, Zhang & Cui, 2026]]) formalizes it via **[[concepts/reactive-coeffects|reactive coeffects]]**: a component declares the coeffects it requires as a specification, and each change of the context notifies the component against that specification as activating, deactivating, or neutral. ^[extracted]

## Key Characteristics

- **Local form** — a component activates only at a state satisfying its specification (so it never reads an absent binding), and every context change is classified against that specification so loss of satisfaction is detected where it happens and drives deactivation. ^[extracted]
- **Global form** — a provider withdraws a binding only after every dependent that resolved it has deactivated (Theorem 63, Ordering), and the resolution a transition installs its effects against does not shift under it (Theorem 64, Resolution coherence). ^[extracted]
- **The satisfaction predicate is decidable** — σ ⊨ d ≔ ∀k∈d. k∈dom(σ) — and all table mutations pass through effect functions, so every coeffect change is observed. ^[extracted]
- **Isolation and interception** extend the flat dependency table: isolation realms let the same key bind differently in different contexts (runtime ad-hoc polymorphism); interception attaches cross-cutting metadata to dependency access. ^[extracted]

## Applications

- Declarative inter-plugin dependencies (contrast: VSCode `extensionDependencies` used by only 7/100 top extensions; untyped `exports`). ^[extracted]
- [[entities/koishi|Koishi]]'s ecosystem: IM adapters provide messaging-platform access, database drivers provide storage, and functional plugins declare these as coeffects — providers and consumers are typically written by different authors coordinating on nothing beyond the coeffect. ^[extracted]
- Provider replacement: switching the storage backend reactivates only the dependents whose resolved dependency changed; a plugin whose dependency is unavailable stays inactive until it appears, without erroring. ^[extracted]

## Related Concepts

- [[concepts/reactive-coeffects]] — the runtime mechanism realizing spatial composability
- [[concepts/temporal-composability]] — the orthogonal time dimension
- [[concepts/dynamic-composition]] — the umbrella problem
- [[concepts/context-paradigm]] — unification of both dimensions
- [[concepts/functional-programming]] — module-resolution baseline this generalizes
- [[references/cordis-spatiotemporal-composability]] — paper deep-dive

## Related Entities

- [[entities/cordis]] — meta-framework implementation
- [[entities/koishi]] — production case study

## Mentions in Source

> "Spatial composability addresses the space dimension: components must be able to declare, discover, and resolve their dependencies on one another in a structured and verifiable manner." ^[extracted]

## Sources

- https://github.com/cordiverse/paper
- https://raw.githubusercontent.com/cordiverse/paper/main/paper.pdf
