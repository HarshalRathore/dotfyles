---
title: Revertible Effects
category: concepts
type: concept
tags:
  - effects
  - runtime
  - recovery
  - type-theory
  - theory
aliases:
  - revertible effect
  - revertible effect functions
summary: "Effects lifted to a runtime mechanism: every context transformation carries an explicit inverse the runtime tracks, so complete environment recovery on component removal is a structural guarantee."
sources:
  - "https://github.com/cordiverse/paper"
  - "https://raw.githubusercontent.com/cordiverse/paper/main/paper.pdf"
relationships:
  - target: "[[concepts/temporal-composability]]"
    type: implements
  - target: "[[concepts/reactive-coeffects]]"
    type: related_to
  - target: "[[references/cordis-spatiotemporal-composability]]"
    type: derived_from
provenance:
  extracted: 0.80
  inferred: 0.17
  ambiguous: 0.03
base_confidence: 0.77
lifecycle: draft
lifecycle_changed: 2026-08-15
tier: supporting
created: 2026-08-15
updated: 2026-08-15
---

# Revertible Effects

**Revertible effects** are effects lifted from a static type-system annotation to a runtime mechanism. An effect is modeled as a function of type Γ → Γ × (Γ → Γ): applied to the current context, it yields the modified context together with an explicit inverse. Supplying that inverse is what lets the effect be reverted; returning it to the runtime is what makes the effect trackable. ^[extracted] This is the Cordis paper's ([[references/cordis-spatiotemporal-composability|Shi, Zhang & Cui, 2026]]) mechanism for **[[concepts/temporal-composability|temporal composability]]**.

## Definition

Given a context Γ, its **effect context** is ∂Γ ≔ Γ × (Γ → Γ) — a pair (γ, φ) where γ is the current state and φ is the accumulator, the composite of the inverses of the effects performed so far. The initial effect context is (γ₀, idΓ). `track` transforms the state by f and composes the inverse g onto the accumulator; `recover` applies the accumulator and resets it to the identity. ^[extracted]

The soundness invariant is φ(γ) = γ₀: recovery reads a state through the quantity φ(γ), and tracking followed by recovery carries the initial effect context back to itself (Theorem 7). ^[extracted]

## Key Characteristics

- **Effect functions** 𝔈Γ ≔ Γ → Γ × (Γ → Γ) supply the inverse where the effect is applied (not a priori), and the **witnessed** refinement 𝔈Γ\* holds the inverse to reverting the effect where it was applied: g(δ) = γ where (δ,g) = e(γ). ^[extracted]
- **Composition preserves revertibility** — the `⋄` operation composes effect functions while the inverses accumulate in reverse order (twisted composition), so the inverse of any composite follows by composition rather than being written alongside it. ^[extracted]
- **Effect iterators** (𝔈Γ_iter) model multi-step activations with a `Maybe` continuation — a reified delimited continuation mapping directly onto generators (yield) in mainstream languages. ^[extracted]
- **Independence** (Definition 19): two effects are independent when their transformation monoids commute and neither disturbs the other's inverse. Under pairwise independence, inverses can be applied in any permutation (Corollary 21) — the basis for interleaved components. ^[extracted]
- **The witness is an obligation, not a check** — the runtime does not verify that the inverse recovers the effect; component authors must supply sound inverses. ^[extracted]

## Applications

- Plugin unload with complete, ordered cleanup without an uninstall path (locality of concern: teardown is derived from loading). ^[extracted]
- HMR in [[entities/cordis|Cordis]]: disposing a fiber recovers everything its component installed; a fresh fiber reinstalls it — no developer-annotated acceptance boundaries needed (unlike webpack/Vite HMR). ^[extracted]
- Every context mutation in Cordis flows through one primitive, `ctx.effect`; coeffect provision (`ctx.set`) is itself an effect function and inherits revertibility. ^[extracted]

## Related Concepts

- [[concepts/temporal-composability]] — the composability dimension it realizes
- [[concepts/reactive-coeffects]] — the dual mechanism (effects and coeffects synergize: coeffect operations are effects, and effects are revertible)
- [[concepts/functional-programming]] — explicit state threading as the contrasting pole
- [[concepts/context-paradigm]] — the unified context type
- [[concepts/ai-harness]] — harness teardown as revertible effects
- [[references/cordis-spatiotemporal-composability]] — paper deep-dive

## Related Entities

- [[entities/cordis]] — meta-framework implementation (ctx.effect)
- [[entities/koishi]] — production case study

## Mentions in Source

> "We formalize revertible effects, in which every context transformation carries an inverse that the runtime tracks." ^[extracted]

## Sources

- https://github.com/cordiverse/paper
- https://raw.githubusercontent.com/cordiverse/paper/main/paper.pdf
