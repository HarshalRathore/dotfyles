---
title: Reactive Coeffects
category: concepts
type: concept
tags:
  - coeffects
  - dependencies
  - reactivity
  - runtime
  - theory
aliases:
  - reactive coeffect
summary: "Coeffects lifted to a runtime mechanism: a component declares its dependencies as a specification, and each context change notifies it as activating, deactivating, or neutral."
sources:
  - "https://github.com/cordiverse/paper"
  - "https://raw.githubusercontent.com/cordiverse/paper/main/paper.pdf"
relationships:
  - target: "[[concepts/spatial-composability]]"
    type: implements
  - target: "[[concepts/revertible-effects]]"
    type: related_to
  - target: "[[concepts/context-paradigm]]"
    type: related_to
  - target: "[[references/cordis-spatiotemporal-composability]]"
    type: derived_from
provenance:
  extracted: 0.80
  inferred: 0.16
  ambiguous: 0.04
base_confidence: 0.77
lifecycle: draft
lifecycle_changed: 2026-08-15
tier: supporting
created: 2026-08-15
updated: 2026-08-15
---

# Reactive Coeffects

**Reactive coeffects** are coeffects lifted from a static analysis to a runtime mechanism. A component declares the dependencies it requires as a **specification**, and each change of the context notifies the component against that specification as **activating**, **deactivating**, or **neutral**. Classifying against the specification is what detects a change in satisfaction; responding to that classification is what drives activation and deactivation. ^[extracted] This is the Cordis paper's ([[references/cordis-spatiotemporal-composability|Shi, Zhang & Cui, 2026]]) mechanism for **[[concepts/spatial-composability|spatial composability]]**.

## Definition

The **coeffect context** is the dependent partial function type Σ ≔ (k : K) ⇀ 𝒱ₖ — a finite partial function assigning each key in its domain a typed value. Operations include `get`, `set` (with preconditions: no double provision, no removal of an absent key), extension and restriction. A **coeffect specification** is 𝔇Σ ≔ Set(K), the set of dependencies a component declares; **satisfaction** is σ ⊨ d ≔ ∀k∈d. k∈dom(σ). ^[extracted]

Because all mutations to σ pass through effect functions (whose inverses recover the previous domain), changes to satisfaction are detectable at each effect boundary — "the algebraic basis of reactivity." ^[extracted]

## Key Characteristics

- **Classification** — for a specification d and states σ, σ′: `notify_d(σ, σ′) = activating` if σ ⊭ d ∧ σ′ ⊨ d, `deactivating` if σ ⊨ d ∧ σ′ ⊭ d, `neutral` otherwise. Activating transitions trigger the component's effects (with full tracking); deactivating transitions trigger recovery by applying the accumulator. ^[extracted]
- **Coeffect operations are effects** — `set(k,v)` has type 𝔈Σ\*, precisely an effect function on the coeffect context, so the effect machinery (tracking/recovery) applies directly: the synergy between reactive coeffects and revertible effects. ^[extracted]
- **Isolation** (Σ_iso) — a realm table ρ : K ⇀ R lets the same key resolve to different values in different contexts: runtime ad-hoc polymorphism, finer-grained than dependency injection. ^[extracted]
- **Interception** (Σ_inter) — metadata is merged into each dependency access (component-declared ⊕ context-carried, right-biased so the context can constrain a component without modifying it). ^[extracted]
- **Provider withdrawal ordering** — a provider stops providing before its dependents begin teardown, and its bindings are removed only after dependents deactivate (the `relied` guard). ^[extracted]

## Applications

- Declarative inter-plugin dependencies in [[entities/koishi|Koishi]]: IM adapters, database drivers, functional plugins — providers and consumers from different authors coordinate on nothing beyond the coeffect. ^[extracted]
- Provider replacement at runtime: switching the storage backend reactivates only the dependents whose resolved dependency changed; a plugin whose dependency is unavailable stays inactive without erroring. ^[extracted]
- Access control: the `inject` declaration acts as a capability request and the context proxy as a capability mediator — capability-based security; interception generalizes to fine-grained policy (e.g., filesystem path permissions). ^[extracted]

## Related Concepts

- [[concepts/spatial-composability]] — the composability dimension it realizes
- [[concepts/revertible-effects]] — the dual mechanism (coeffect operations are effects)
- [[concepts/context-paradigm]] — the unified context type
- [[concepts/dynamic-composition]] — the umbrella problem
- [[concepts/ai-harness]] — dependency wiring in agent harnesses
- [[references/cordis-spatiotemporal-composability]] — paper deep-dive

## Related Entities

- [[entities/cordis]] — meta-framework implementation (ctx.set/get, isolation, interception)
- [[entities/koishi]] — production case study

## Mentions in Source

> "We formalize reactive coeffects, in which each change of the context notifies a component against its coeffect specification." ^[extracted]

## Sources

- https://github.com/cordiverse/paper
- https://raw.githubusercontent.com/cordiverse/paper/main/paper.pdf
