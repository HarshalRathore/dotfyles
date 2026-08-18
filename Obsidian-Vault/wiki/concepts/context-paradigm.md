---
title: Context Paradigm
category: concepts
type: concept
tags:
  - programming-paradigm
  - context
  - effects
  - coeffects
  - theory
aliases:
  - context programming paradigm
summary: "A programming paradigm unifying revertible effects and reactive coeffects in a single recursive context type — functional traceability with imperative ergonomics."
sources:
  - "https://github.com/cordiverse/paper"
  - "https://raw.githubusercontent.com/cordiverse/paper/main/paper.pdf"
relationships:
  - target: "[[concepts/revertible-effects]]"
    type: extends
  - target: "[[concepts/reactive-coeffects]]"
    type: extends
  - target: "[[concepts/dynamic-composition]]"
    type: related_to
  - target: "[[references/cordis-spatiotemporal-composability]]"
    type: derived_from
provenance:
  extracted: 0.78
  inferred: 0.19
  ambiguous: 0.03
base_confidence: 0.77
lifecycle: draft
lifecycle_changed: 2026-08-15
tier: supporting
created: 2026-08-15
updated: 2026-08-15
---

# Context Paradigm

The **context paradigm** is a programming paradigm in which the effect context and the coeffect context are unified into a single recursive **context type**, and every interaction between a component and its environment passes through that entity. ^[extracted] It is the central constructive contribution of the Cordis paper ([[references/cordis-spatiotemporal-composability|Shi, Zhang & Cui, 2026]]).

## Definition

The context type is:

$$ \Gamma_\infty \coloneqq \mu\Gamma.\; \Gamma \times (\Gamma \to \Gamma) \times \Sigma $$

with three projections: the current context state (recursive), the accumulator that recovers this level's effects, and the coeffect context carrying dependency information. Because the type family 𝒱 underlying Σ is unconstrained, any state the system needs to share across components can be encoded as a dependency — Σ subsumes all shared mutable state, not just inter-component dependencies. ^[extracted]

## Key Characteristics

- **Unifies the two dimensions** — effect maps 𝔈_Γ∞ map the context to itself, unifying the ∂-tower into a single self-similar type; dependency operations act on Σ and the accumulator tracks their reversal. ^[extracted]
- **Hierarchical composition** — the recursive structure supports a tree-shaped control structure: loading a component = executing its effects (plugging in); unloading = recovering them (unplugging) without affecting other running components; components at different levels are independently loadable. ^[extracted]
- **Combines two established poles.** Explicit state threading (functional) yields strong compositional guarantees but imposes ergonomic costs (state threading, monadic stacking); implicit mutation (imperative/OOP, e.g., React's `useEffect`, Java service locators) is ergonomic but hides what f() modifies or depends on. The context paradigm mediates both effects and coeffects through an explicit context parameter, attributing each operation to the component that owns its context. ^[extracted]
- **Correctness becomes structural** — teardown is derived from loading (inverse composition), and dependency rewiring is resolved automatically as providers are added, removed, or replaced. ^[extracted]
- **Observational equivalence** — recovery equality is read up to ≃, assembled from the coeffects' own equivalences; quotienting by ≃ supplies the effect independence that global temporal composability requires. ^[extracted]

## Applications

- [[entities/cordis|Cordis]] as a meta-framework: prescribes no concrete scenario, only universal dynamic-composition semantics; the core library realizes the formal model, the component loader adds declarative configuration and HMR. ^[extracted]
- [[entities/koishi|Koishi]]: a full production system (4000+ plugins) as an expressiveness-and-generality validation — the same model reappears in a wholly different runtime (Koishi's web console is a second independent Cordis application). ^[extracted]
- Language/OS co-design (Section 6.7): making the context implicit in the language, admitting the coeffect specification into the type system, and having an OS supply its own resources as coeffects. ^[extracted]

## Related Concepts

- [[concepts/revertible-effects]] — the effect half
- [[concepts/reactive-coeffects]] — the coeffect half
- [[concepts/temporal-composability]] / [[concepts/spatial-composability]] — the two dimensions
- [[concepts/dynamic-composition]] — the umbrella problem
- [[concepts/functional-programming]] — the contrasting functional pole
- [[concepts/ai-harness]] — agent-harness application of the paradigm
- [[references/cordis-spatiotemporal-composability]] — paper deep-dive

## Related Entities

- [[entities/cordis]] — meta-framework implementation
- [[entities/koishi]] — production case study

## Mentions in Source

> "We unify the effect context and the coeffect context into a single context type, in which an observational equivalence on the coeffects supplies the effects with independence, constituting a programming paradigm for spatiotemporal composability." ^[extracted]

## Sources

- https://github.com/cordiverse/paper
- https://raw.githubusercontent.com/cordiverse/paper/main/paper.pdf
