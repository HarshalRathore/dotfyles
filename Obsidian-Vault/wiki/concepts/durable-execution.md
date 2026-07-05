---
title: Durable Execution
category: concepts
tags: [durable-execution, reliability, crash-proof, distributed-systems, workflow, temporal, ai-agents]
aliases: [crash-proof execution, durable workflows]
relationships:
  - target: "[[concepts/events-wrong-abstraction-thesis]]"
    type: replaces
  - target: "[[concepts/temporal-workflow-orchestration]]"
    type: implements
  - target: "[[concepts/agent-reliability-challenge]]"
    type: related_to
sources:
  - "[[sources/watchv=kj9ezytws1y]]"
  - "[[sources/watchv=1izywsokr9s]]"
summary: "A paradigm of crash-proof execution where application state is automatically preserved, execution spans processes and machines transparently, and failures become inconsequential — proposed as the re-centered abstraction for AI agent systems."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.60
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Durable Execution

Durable execution is a paradigm of software execution where failures are inevitable but inconsequential. It enables developers to write code that automatically preserves state, survives process and machine crashes, and resumes transparently from the last save point — without any explicit reliability infrastructure. ^[extracted]

## Four Characteristics

Durable execution is defined by four characteristics: ^[extracted]

### 1. Automatic State Preservation

In a typical application, a crash loses all variable state — developers work around this by manually caching to Redis, databases, or local files. In durable execution, **all** local variables, function inputs, outputs, and return values are stored automatically. The developer never writes persistence code. ^[extracted]

### 2. Virtualized Execution

Normal execution runs in a single process on a single machine and ends immediately on crash. Durable execution spans multiple processes across multiple machines. When the current process fails, the system takes the saved state, restarts execution, and resumes from the last known save point — often without the developer even knowing a failure occurred. ^[extracted]

### 3. Time Agnostic

Durable execution can run for arbitrary durations. A `sleep(30 days)` inside a durable workflow is entirely valid — if the system crashes during the sleep, it resumes when the timer expires. Duration is irrelevant because crash recovery is automatic. ^[extracted]

### 4. Hardware Agnostic

Reliability is built into the software layer, not the hardware layer. No hot-swappable CPUs or redundant memory needed — the system runs anywhere, including constrained hardware like a Raspberry Pi (Temporal shipped a durable execution system into space on one). ^[extracted]

## Application to AI Agents

In a durable execution agent architecture, the developer writes a single workflow that calls LLMs and tools. The platform handles: ^[extracted]

- **Automatic retries** — if an LLM goes down or returns a rate limit, the function call retries automatically until successful
- **Crash recovery** — if the process crashes mid-execution, state is reconstructed and execution continues
- **No queue management** — the developer never writes code for queues, events, or dead letter queues

The result is a dramatically simpler architecture where the developer focuses solely on business logic rather than distributed systems plumbing. ^[extracted]

## Relationship to Prior Abstractions

Durable execution is framed as the next step in software engineering's 50-70 year progression of abstraction: assembly → Fortran → structured programming → OOP → **durable execution**. Each step abstracted away complexity from the programmer. The key insight: durable execution still uses events under the hood, but abstracts that complexity away from the developer, just as assembly was abstracted away decades ago. ^[extracted]

## Platform Implementation

Temporal is the primary platform providing durable execution as an open-source, MIT-licensed product with SDKs in seven languages (Go, Python, TypeScript, Ruby, .NET, Java, PHP). All SDKs are natively polyglot — a Go workflow can call a Ruby function directly. ^[extracted]

## Relationship to Existing Concepts

- **[[concepts/events-wrong-abstraction-thesis|Events are the Wrong Abstraction Thesis]]** — Durable execution is proposed as the replacement for event-driven architecture as the center of AI agent systems. ^[inferred]
- **[[concepts/temporal-workflow-orchestration|Temporal Workflow Orchestration]]** — Temporal workflows are one concrete implementation of durable execution for AI agents. ^[inferred]
- **[[concepts/agent-reliability-challenge|Agent Reliability Challenge]]** — Durable execution addresses the reliability challenge at the execution platform level. ^[inferred]
- **[[concepts/decoupled-architecture|Decoupled Architecture]]** — Durable execution achieves loose coupling through platform-level abstraction rather than event-driven loose coupling. ^[inferred]
