---
title: "Lecture 10: Only a Full Pipeline Run Counts as Real Verification (Learn Harness Engineering)"
type: reference
category: references
tags: [e2e-testing, agent-evaluation, testing, verification, harness-engineering, quality-assurance]
sources:
  - "https://walkinglabs.github.io/learn-harness-engineering/en/lectures/lecture-10-why-end-to-end-testing-changes-results/"
source_url: "https://walkinglabs.github.io/learn-harness-engineering/en/lectures/lecture-10-why-end-to-end-testing-changes-results/"
created: "2026-08-13"
updated: "2026-08-13"
summary: "Lecture 10: unit tests are blind to component-boundary defects; E2E testing changes agent behavior, and harness validation must include an end-to-end layer with agent-oriented error messages."
base_confidence: 0.85
lifecycle: draft
tier: supporting
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
---

# Only a Full Pipeline Run Counts as Real Verification

> [!tldr] Unit tests are designed for isolation, which makes them systematically blind to component-boundary defects — and agents make it worse by running only the fastest tests and declaring "done." End-to-end testing is the only layer that proves the absence of system-level defects, and it changes agent coding behavior, not just results. The harness must make E2E a gating level, turn architectural rules into executable checks, and write error messages for agents (what went wrong, why, how to fix).

**Course:** Learn Harness Engineering (Walking Labs). **Lecture 10** — "Only a Full Pipeline Run Counts as Real Verification" (indexed as "Why End-to-End Testing Changes Results"). The lecture ships code examples and a hands-on project (Project 05: "Let the agent verify its own work").

## Overview

The lecture opens with an Electron app file-export feature: the agent writes the renderer component, the preload script, and the service layer; every component's unit tests pass; the agent says "done." Clicking the actual export button reveals five defects — wrong file path format, unresponsive progress bar, memory leak on large files — none caught by unit tests. ^[extracted] The argument: Google's Testing Pyramid makes a large unit-test base essential, but stopping there systematically misses component-interaction issues, and AI coding agents make it worse because they tend to run only the fastest tests and then declare completion. ^[extracted] Only end-to-end testing can prove the absence of system-level defects. ^[extracted]

## Key Points

### The blind spots of unit tests

The isolation design philosophy of unit testing (mock dependencies, focus on the unit under test) creates systematic blind spots — problems that surface only when everything actually runs together: ^[extracted]

- **Interface mismatch** — one component passes a relative file path, the other expects an absolute path; both unit tests use mocks and pass. ^[extracted]
- **State propagation errors** — a database migration changes the schema while the ORM caching layer still holds old-schema entries; fresh mock environments per test never expose cross-layer state inconsistency. ^[extracted]
- **Resource lifecycle issues** — file handles, database connections, and network sockets span components; per-test resource creation and teardown hides contention and leaks. ^[extracted]
- **Environment dependency** — code passes in the mocked test environment but fails in the real environment due to configuration differences, network latency, or service unavailability. ^[extracted]

### E2E testing changes behavior, not just results

When an agent knows its work will be validated by end-to-end tests, its coding behavior shifts: ^[extracted]

- It starts asking how its interfaces connect to upstream components, instead of focusing on a single function in isolation. ^[extracted]
- In systems with architectural constraints, E2E tests force the agent to follow boundary rules. ^[extracted]
- E2E suites typically include failure scenarios, which pushes the agent to handle error paths and exception handling. ^[extracted]

### Testing Pyramid and review feedback promotion

- OpenAI's Codex engineering practices require error messages written for agents to include fix instructions: instead of "Direct filesystem access in renderer," write "Direct filesystem access in renderer. All file operations must go through the preload bridge. Move this call to preload/file-ops.ts and invoke it via window.api." ^[extracted] This turns architectural rules into an auto-correction loop — messages say not just what went wrong but how to fix it, enabling autonomous self-correction. ^[extracted]
- **Review feedback promotion:** recurring code-review comments become automated tests — every new category of repeated issue adds a rule, so the harness grows stronger automatically. ^[extracted]

### How to do it: designing the E2E harness layer

**0. Define architectural boundaries before writing E2E tests.** Clear boundaries are the prerequisite; against a tangled architecture, E2E testing only proves "the whole mess runs" without telling you where design intent was violated. ^[extracted] OpenAI's experience with agent-generated codebases: constraints must be established as early prerequisites on day one, because agents copy existing repository patterns — even inconsistent or suboptimal ones — and introduce more drift every session without constraints. ^[extracted] OpenAI's "Layered Domain Architecture" divides each business domain into fixed layers (Types → Config → Repo → Service → Runtime → UI) with dependencies flowing strictly forward and cross-domain concerns entering only through explicit Providers interfaces, mechanically enforced via custom linting. ^[extracted] Key principle: **enforce invariants; don't micromanage implementation** — require "data is parsed at the boundary" without prescribing which library to use, and error messages must include fix instructions. ^[extracted]

**1. The harness must include an end-to-end layer** — make it explicit in the validation flow that tasks involving cross-component changes require E2E tests to pass: ^[extracted]

- Level 1: Unit tests (must pass)
- Level 2: Integration tests (must pass)
- Level 3: End-to-end tests (must pass when cross-component changes are involved)
- Skipping any required level = Not Complete

**2. Turn architectural rules into executable checks** — every architectural constraint gets a corresponding test or lint rule (e.g. `grep -r "require('fs')" src/renderer/ && exit 1 || echo "OK: no direct fs access in renderer"`). ^[extracted]

**3. Design agent-oriented error messages** with three elements — what went wrong, why, and how to fix it (ERROR / WHY / FIX structure). ^[extracted]

**4. Establish a review feedback promotion process** — every new category of agent error discovered in code review becomes an automated check; "a month later your harness will be far stronger than it was at the start of the month." ^[extracted]

### Real-world case: Electron file export

Task: implement a file export feature in an Electron app — renderer UI, preload script filesystem proxy, service-layer data transformation. ^[extracted] Unit test phase: renderer, preload, and service tests all pass (each dependency mocked); the agent declares completion. ^[extracted] End-to-end tests then caught all five defects: interface mismatch (inconsistent file path format), state propagation (export progress not sent back to UI via IPC), resource leak (large-file handles not released), permission issue (different permissions in the packaged environment), and error propagation (service-layer exceptions didn't reach the UI). ^[extracted] All five were caught by E2E; unit tests caught none. ^[extracted] The trade-off: test time rose from 2 seconds to 15 seconds — "perfectly acceptable in an agent workflow." ^[extracted]

### Key takeaways

- Unit tests are systematically blind to component-boundary defects — their isolation design is exactly what prevents interaction detection. ^[extracted]
- E2E testing not only detects defects, it changes how agents write code, shifting focus toward integration and boundaries. ^[extracted]
- Architectural rules must be executable — checked automatically on every commit, not written in a document waiting to be read. ^[extracted]
- Error messages must be designed for agents, with concrete "how to fix" steps, forming a self-correcting feedback loop. ^[extracted]
- Review feedback promotion makes the harness automatically stronger — every captured defect category becomes a permanent line of defense. ^[extracted]

## Concepts

- [[concepts/agent-evaluation-pipeline|Agent Evaluation Pipeline]] — this lecture adds the unit → integration → E2E validation hierarchy that gates agent task completion
- [[concepts/evaluation-at-pipeline-steps|Evaluation at Pipeline Steps]] — step-level (unit) evaluation is necessary but insufficient; only full-pipeline runs count as real verification
- [[concepts/evolution-of-verification|Evolution of Verification]] — E2E harness verification as the current layer of the verification stack ^[inferred]
- [[concepts/agent-systemic-evaluation|Agent Systemic Evaluation]] — systemic/end-to-end evaluation of agents
- [[concepts/ai-harness|AI Agentic Harness]] — the harness's validation flow must include an end-to-end layer
- [[concepts/ai-regression-testing|AI Regression Testing]] — E2E as regression defense for agent-generated code
- [[concepts/ai-to-ai-verification|AI-to-AI Verification]] — agent-oriented error messages turn test failures into automated self-correction
- [[concepts/capability-overhang|Capability Overhang]] — E2E suites as the missing verification infrastructure for agent capabilities ^[inferred]

## Entities

- [[entities/openai|OpenAI]] — source of the Codex harness-engineering practices cited by the lecture (layered domain architecture, agent-oriented error messages, day-one architectural constraints)
- [[entities/google|Google]] — Testing Pyramid model, per "How Google Tests Software" (Whittaker et al.)
- [[entities/netflix|Netflix]] — Chaos Engineering (Basiri et al.), cited as an adjacent proactive-failure-injection verification practice

## Open Questions

- The lecture calls the 2s → 15s E2E time cost "perfectly acceptable," but gives no scaling guidance — at what suite size does E2E gating slow agent iteration past the point of usefulness? ^[ambiguous]
- The exercises reference a "five-step process" for review feedback promotion, but the lecture never enumerates the five steps. ^[ambiguous]
- No guidance on E2E test selection per task (full suite vs. targeted subset) — the validation hierarchy defines levels but not selection. ^[inferred]
- Whether agent-oriented error messages stay effective as agent context grows or as models tune out verbose failures — the lecture presents them as unconditionally beneficial. ^[inferred]

## Related

- Part of the Learn Harness Engineering course (Walking Labs), lecture 10; companion hands-on project 05 "Let the agent verify its own work"
- Lecture further reading: How Google Tests Software (Whittaker et al.), OpenAI Harness Engineering (Codex), Chaos Engineering (Basiri et al.), QuickCheck (Claessen & Hughes)
- [[concepts/agent-evaluations|Agent Evaluations]] — production eval infrastructure; this lecture's hierarchy is the code-level complement
- [[concepts/ai-engineering|AI Engineering]] — enforce invariants, don't micromanage implementation, as an engineering principle
