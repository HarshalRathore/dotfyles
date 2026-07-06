---
title: Events are the Wrong Abstraction for Your AI Agents — Mason Egger, Temporal.io
category: references
tags:
- ai
- architecture
- durable-execution
- event-driven
- distributed-systems
- conference-talk
- ai-eng-worlds-fair-2025
aliases:
- Mason Egger Temporal events wrong abstraction
- Temporal durable execution AI agents
relationships:
- target: '[[concepts/durable-execution]]'
  type: related_to
- target: '[[concepts/events-wrong-abstraction-thesis]]'
  type: related_to
- target: '[[concepts/software-abstraction-evolution]]'
  type: related_to
- target: '[[entities/temporal]]'
  type: related_to
sources:
- 'https://www.youtube.com/watch?v=kj9ezytws1y'
summary: Mason Egger argues that event-driven architecture is the wrong center for AI agent systems, proposing durable execution as the re-centered abstraction that abstracts away event complexity like prio...
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.6
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Events are the Wrong Abstraction for Your AI Agents — Mason Egger, Temporal.io

> Talk at AI Engineer World's Fair 2025. Mason Egger of Temporal argues that event-driven architecture (EDA) is the wrong center for AI agent systems, using a Copernicus analogy to propose durable execution as the proper re-centered abstraction.

## Core Thesis

EDA architectures — with message buses, dead letter queues, cron-based garbage collection, and event consumers — put events at the center of the ecosystem rather than the core business logic. The result: more infrastructure for handling events than actual application logic. ^[extracted] Egger draws a parallel to the Copernican shift: just as putting the sun at the center simplified celestial mechanics compared to the geocentric model, putting durable execution at the center simplifies AI agent architecture compared to event-driven design. ^[extracted]

## Critique of Event-Driven Architecture

Egger identifies several concrete problems with EDA for AI agents: ^[extracted]

- **No APIs**: Events lack the documentation, structure, and clear contracts that APIs provide. Async API specs describe message formats but not interaction contracts. ^[extracted]
- **Scattered logic**: Business logic fragments across thousands of services, requiring cross-service grep to trace execution paths. ^[extracted]
- **Ad-hoc state machines**: Every service implements its own state machine, leading to 2 AM pages when they break. ^[extracted]
- **No transactions**: No atomicity between message processing and state updates, creating inconsistent intermediate states. ^[extracted]
- **Race conditions**: The inevitable result of asynchronous, uncoordinated event processing. ^[extracted]
- **Design-time coupling**: EDA is "loosely coupled at runtime but tightly coupled at design time" — event consumers three hops downstream break when an event format changes, creating hidden dependencies. ^[extracted]

## Durable Execution as the Alternative

Durable execution (Temporal's term for "crash-proof execution") is proposed as the re-centered abstraction with four characteristics: ^[extracted]

1. **Automatic state preservation** — local variables, function inputs/outputs/returns are stored automatically; no manual caching to Redis or databases needed. ^[extracted]
2. **Virtualized execution** — execution spans multiple processes and machines; if one process fails, the system restarts from the last save point, often transparently. ^[extracted]
3. **Time agnostic** — can sleep for 30 days or more and resume; crash recovery means duration is irrelevant. ^[extracted]
4. **Hardware agnostic** — reliability built into software, not hardware; runs anywhere including Raspberry Pi (Temporal shipped one into space). ^[extracted]

In a durable execution agent architecture, the developer writes a workflow that calls LLMs and tools, and the platform handles automatic retries, crash recovery, and state reconstruction — without any queue or event management code. ^[extracted]

## Software Engineering as Abstraction

Egger frames durable execution as the next step in a 50-70 year progression of abstraction in software engineering: ^[extracted]

- Assembly → Fortran (mathematical operations)
- GOTOs → Algol 60/Pascal (structured flow)
- Manual memory → Lisp (garbage collection)
- Procedural → Simula/Smalltalk (object-oriented programming)
- Events/manual queues → **Durable execution** (the next abstraction)

The "dirty secret": durable execution still uses events under the hood. But the complexity is abstracted away from the programmer layer, just as assembly was abstracted away decades ago. ^[extracted]

## Platform Details

Temporal provides durable execution as an open-source MIT-licensed platform with SDKs in seven languages: Go, Python, TypeScript, Ruby, .NET, Java, and PHP (with another coming). All SDKs are natively polyglot — a Go workflow can call a Ruby function by name and parameters. ^[extracted]

## Sources

- [[references/aief2025-events-wrong-abstraction-mason-egger|Events are the Wrong Abstraction for Your AI Agents — Mason Egger, Temporal.io]]
