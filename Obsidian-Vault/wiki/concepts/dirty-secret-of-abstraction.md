---
title: Dirty Secret of Abstraction
category: concepts
tags:
- abstraction
- software-engineering
- distributed-systems
- durable-execution
aliases:
- dirty secret
- abstraction hidden complexity
- each abstraction uses the layer below
relationships:
- target: '[[concepts/software-abstraction-evolution|Software Abstraction Evolution]]'
  type: related_to
- target: '[[concepts/durable-execution|Durable Execution]]'
  type: related_to
sources:
- 'https://www.youtube.com/watch?v=kj9ezytws1y'
summary: Each layer of abstraction still uses the previous layer under the hood — the complexity doesn't disappear, it just moves deeper into the tooling. This pattern makes abstraction useful but means the...
provenance:
  extracted: 0.9
  inferred: 0.1
  ambiguous: 0.0
base_confidence: 0.8
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Dirty Secret of Abstraction

Every new abstraction layer in software engineering still uses the previous layer under the hood — but the complexity is hidden from the developer. This is the "dirty secret" of abstraction: the complexity doesn't disappear, it just moves deeper. ^[extracted]

## Examples Across Abstraction Layers

| Abstraction | What it hides | What's underneath |
|------------|--------------|-------------------|
| Fortran | Manual register management, raw memory addresses | Assembly language |
| Structured programming (Algol 60/Pascal) | GOTOs and jumps | Machine code with jumps |
| Object-oriented programming (Simula/Smalltalk) | Procedural code | Procedural code |
| Garbage collection (Lisp) | Manual memory management | Manual memory management |
| Durable execution | Event queues, retry logic, state persistence | Event queues, retry logic, state persistence |

The key insight: each step made programming easier by moving complexity from the programmer into the tooling. The programmer writes higher-level code and never has to see the lower-level details. ^[extracted]

## Application to AI Agent Architecture

Mason Egger applies this pattern to argue that durable execution is the natural next step: just as we stopped writing assembly because the compiler handles it, we should stop writing event-handling code because the platform handles it. Events remain the implementation detail, not the developer-facing abstraction. ^[extracted]

The dirty secret means that durable execution still uses events under the hood — but the developer never has to see them. The complexity of distributed systems (queues, retries, state management, crash recovery) moves into the platform layer, leaving the developer to write what the application should do rather than how it survives failure. ^[extracted]

## Relationship to Existing Concepts

- **[[concepts/software-abstraction-evolution|Software Abstraction Evolution]]** — The dirty secret is the pattern that drives the entire progression of abstraction. ^[inferred]
- **[[concepts/durable-execution|Durable Execution]]** — The dirty secret explains why durable execution works: it abstracts away events the way prior abstractions abstracted away lower-level concerns. ^[inferred]
- **[[concepts/events-wrong-abstraction-thesis|Events are the Wrong Abstraction Thesis]]** — The thesis argues that events should be abstracted away (the dirty secret), not exposed as the primary developer-facing construct. ^[inferred]
