---
title: Cordis
category: entities
type: entity
tags: [project, framework, typescript, open-source, dynamic-composition]
aliases: [Cordis framework, Cordis v4]
relationships:
  - target: "[[references/cordis-spatiotemporal-composability]]"
    type: derived_from
  - target: "[[concepts/context-paradigm]]"
    type: implements
  - target: "[[entities/koishi]]"
    type: related_to
  - target: "[[entities/cordiverse]]"
    type: related_to
sources:
  - "https://github.com/cordiverse/paper"
  - "https://raw.githubusercontent.com/cordiverse/paper/main/paper.pdf"
summary: "Cordis — a meta-framework of spatiotemporal composability: core library with effect tracking and coeffect resolution, plus a declarative loader with config reconciliation and HMR."
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

# Cordis

**Cordis** is a meta-framework of spatiotemporal composability, realized in TypeScript. Unlike application frameworks that target a specific domain (web routing, ORM, UI rendering), it prescribes no concrete scenario — its sole responsibility is to supply universal dynamic composition semantics. ^[extracted] It implements the formal model of the [[references/cordis-spatiotemporal-composability|Cordis paper]] (Shi, Zhang & Cui, 2026).

## Basic Information

- **Type:** software framework (meta-framework)
- **Language:** TypeScript
- **Org:** [[entities/cordiverse|Cordiverse]]
- **Versioning:** the paper describes **Cordis v4**; [[entities/koishi|Koishi]] currently uses Cordis v3 — the core compositional model is shared across both versions. ^[extracted]
- **Source:** <https://github.com/cordiverse/paper> (repo hosts the paper; the framework itself is the paper's contribution)

## Description

Cordis is layered into three tiers: (1) the **core library** implements the effect and coeffect systems directly — every context mutation flows through a single primitive `ctx.effect` (realizing the effect-iterator transformation), `ctx.set`/`ctx.get` realize coeffect provision (as revertible effect functions), a `Proxy`-mediated context (`ctx[key]`) enforces the coeffect specification at the point of use, and `ctx.use` instantiates a component as a fiber with an inertial lifecycle state machine; (2) the **component loader** extends the core with declarative configuration (entries with id/url/isolate/intercept/config/disabled), incremental reconciliation, managed isolation realms, and hot module replacement via `@cordisjs/hmr` (classify → stale-entry detection → transactional reload with cache rollback); (3) application frameworks such as **Koishi** build domain-specific functionality on top. ^[extracted]

## Key Mechanisms

- **[[concepts/revertible-effects]]** — `ctx.effect` accepts an effect callback that returns/yields inverses; recovery is LIFO and the witness (that the inverse recovers its effect) is an obligation on the component author, not a runtime check. ^[extracted]
- **[[concepts/reactive-coeffects]]** — three symbol-keyed slots on each context: `@@store` (value store), `@@isolate` (realm table), `@@intercept` (interception metadata); two-layer resolution k → ρ(k) → σ(ρ(k)). ^[extracted]
- **[[concepts/context-paradigm]]** — `fiber.ctx` is the child context realizing the derived realization; `fiber.committed` holds the committed view (the resolution the fiber activated against); `fiber.target` is recomputed by `refresh`. ^[extracted]
- **Component lifecycle** — `refresh`/`reload`/`unload` realize the inertial state machine: reload commits the view, executes `apply`, then either enters ACTIVE or chains into unload; unload drains dependents (the `relied` guard), recovers all tracked effects in LIFO order, then enters INACTIVE or chains into reload. ^[extracted]

## Related Entities

- [[entities/koishi]] — the production framework built on Cordis
- [[entities/cordiverse]] — the organization
- [[entities/tianyi-cui]] — co-author of the paper presenting Cordis v4
- [[entities/yifan-shi]], [[entities/wei-zhang]] — co-authors
- [[entities/deepseek]] — author affiliation (DeepSeek-AI)

## Related Concepts

- [[concepts/dynamic-composition]] — the problem domain
- [[concepts/revertible-effects]] / [[concepts/reactive-coeffects]] — core mechanisms
- [[concepts/context-paradigm]] — the programming paradigm
- [[concepts/temporal-composability]] / [[concepts/spatial-composability]] — the two dimensions
- [[concepts/ai-harness]] — harness use-case for the framework
- [[references/cordis-spatiotemporal-composability]] — paper deep-dive

## Mentions in Source

> "We implement these ideas in Cordis, a meta-framework of spatiotemporal composability that provides a core library with effect tracking and coeffect resolution, as well as a declarative component loader with configuration reconciliation and hot module replacement." ^[extracted]

## Sources

- https://github.com/cordiverse/paper
- https://raw.githubusercontent.com/cordiverse/paper/main/paper.pdf
