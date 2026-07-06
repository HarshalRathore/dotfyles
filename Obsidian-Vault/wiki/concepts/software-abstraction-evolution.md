---
title: Software Abstraction Evolution
category: concepts
tags:
- software-engineering
- abstraction
- history
- durable-execution
- programming-languages
aliases:
- evolution of abstraction
- history of programming abstraction
relationships:
- target: '[[concepts/durable-execution]]'
  type: related_to
- target: '[[concepts/events-wrong-abstraction-thesis]]'
  type: related_to
sources:
- 'https://www.youtube.com/watch?v=kj9ezytws1y'
summary: The 50-70 year progression of abstraction in software engineering — from assembly to Fortran to structured programming to OOP to garbage collection — with durable execution as the next step, abstra...
provenance:
  extracted: 0.9
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.7
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Software Abstraction Evolution

The historical progression of abstraction in software engineering, where each new paradigm abstracts away complexity from the programmer and into the language or runtime — and durable execution as the next step in this progression. ^[extracted]

## The Progression

Over 50-70 years of software engineering history, the pattern is consistent: complexity is moved from the programmer into the tooling. ^[extracted]

| Era | Abstraction | What it eliminated |
|-----|------------|-------------------|
| 1950s | Assembly | Manual register management, raw memory addresses |
| 1950s-60s | Fortran | Manual mathematical operations, register allocation |
| 1960s | Algol 60 / Pascal | GOTOs and jumps; introduced structured flow |
| 1960s-70s | Lisp | Manual memory management; introduced garbage collection |
| 1960s-80s | Simula / Smalltalk | Procedural code; introduced object-oriented programming |
| 2020s+ | **Durable Execution** | Manual event queues, retry logic, state persistence |

The dirty secret of each step: the abstraction still uses the previous layer under the hood. Fortran still generates assembly. OOP still uses procedural code. Durable execution still uses events — but the programmer never has to see them. ^[extracted]

## Application to AI Agent Architecture

Mason Egger frames durable execution as the natural next step: just as we stopped writing assembly because the compiler handles it, we should stop writing event-handling code because the platform handles it. The complexity of distributed systems (queues, retries, state management, crash recovery) moves into the platform layer, leaving the developer to write what the application should do rather than how it survives failure. ^[extracted]

## Relationship to Existing Concepts

- **[[concepts/durable-execution|Durable Execution]]** — The concrete abstraction that this evolution leads to. ^[inferred]
- **[[concepts/events-wrong-abstraction-thesis|Events are the Wrong Abstraction Thesis]]** — The argument that events should be abstracted away, not exposed as the primary developer-facing construct. ^[inferred]
- **[[concepts/agent-reliability-challenge|Agent Reliability Challenge]]** — The problem that durable execution, as the next abstraction step, is proposed to solve. ^[inferred]
