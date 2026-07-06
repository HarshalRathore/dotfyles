---
title: Events are the Wrong Abstraction Thesis
category: concepts
tags:
- architecture
- event-driven
- critique
- durable-execution
- ai-agents
- distributed-systems
aliases:
- EDA critique
- events wrong abstraction
- event-driven architecture problems
relationships:
- target: '[[concepts/durable-execution]]'
  type: derived_from
- target: '[[concepts/decoupled-architecture]]'
  type: contradicts
- target: '[[concepts/agent-reliability-challenge]]'
  type: related_to
sources:
- 'https://www.youtube.com/watch?v=kj9ezytws1y'
summary: The argument that event-driven architecture puts the wrong thing at the center of AI agent ecosystems — creating more infrastructure than business logic, scattered logic, and hidden design-time cou...
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Events are the Wrong Abstraction Thesis

The claim that event-driven architecture (EDA) is the wrong center for AI agent systems — analogous to how the geocentric model of the solar system was accurate but suboptimal compared to the heliocentric model. ^[extracted]

## The Copernican Analogy

Both geocentric and heliocentric models are "accurate" — they can both calculate celestial trajectories. But the heliocentric model dramatically simplified reasoning about planetary motion and enabled new discoveries (gravity, laws of nature). Similarly, EDA works but puts the wrong thing at the center, making AI agent systems more complex than necessary. ^[extracted]

## Problems with EDA for AI Agents

### No APIs, Only Events

Events lack the documentation, structure, and clear contracts that APIs provide. Async API specs describe message formats but not interaction contracts. Developers are "great at documentation" — meaning event documentation is unreliable. ^[extracted]

### Scattered Logic

Business logic fragments across thousands of services. Finding what a bug does requires grepping across the codebase for event names, tracing producers and consumers, and sometimes running the system to observe failure behavior. ^[extracted]

### Ad-Hoc State Machines

Every service implements its own state machine. CS majors love them until they get paged at 2 AM. Services need local databases and caches to prevent failures, creating inconsistent intermediate states. ^[extracted]

### No Transactions

No atomicity between message processing and state updates. A system can be in a state where something has been "updated" but the update hasn't fully propagated. ^[extracted]

### Race Conditions

The inevitable result of asynchronous, uncoordinated event processing — the hardest bugs to diagnose. ^[extracted]

### Design-Time Coupling

The core theoretical claim: EDA is **loosely coupled at runtime but tightly coupled at design time**. Just because one service can go down without breaking others doesn't mean the services are loosely coupled at the design level. Changing an event format breaks every downstream consumer, even those three hops away that nobody knew were consuming the event. This creates fear of iteration — developers avoid touching "the magic event" because everything might crumble. ^[extracted]

## The Proposed Alternative: Durable Execution

Put durable execution at the center instead of events. The developer writes code that looks like normal synchronous code — function calls, local variables, control flow — while the platform transparently handles retries, state persistence, crash recovery, and cross-machine execution. Events remain the implementation detail, not the abstraction. ^[extracted]

## Relationship to Existing Concepts

- **[[concepts/durable-execution|Durable Execution]]** — The proposed replacement abstraction. ^[inferred]
- **[[concepts/decoupled-architecture|Decoupled Architecture]]** — This thesis challenges the claim that EDA achieves loose coupling; it argues EDA achieves runtime loose coupling but design-time tight coupling. ^[inferred]
- **[[concepts/agent-reliability-challenge|Agent Reliability Challenge]]** — The thesis identifies EDA's structural problems as a root cause of the agent reliability challenge. ^[inferred]
- **[[concepts/software-abstraction-evolution|Software Abstraction Evolution]]** — The thesis frames durable execution as the next step in abstraction, abstracting away events the way prior language evolutions abstracted away lower-level concerns. ^[inferred]
- **[[concepts/dirty-secret-of-abstraction|Dirty Secret of Abstraction]]** — The thesis relies on the dirty secret: durable execution still uses events under the hood, but abstracts that complexity away from the developer. ^[inferred]
- **[[concepts/all-ai-is-distributed-systems|All AI is Distributed Systems]]** — The thesis rests on the premise that AI agents are distributed systems and thus need distributed systems reliability infrastructure. ^[inferred]
