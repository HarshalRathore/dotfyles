---
title: Synth Labs
tags:
- organization
- ai
- agents
- infrastructure
sources:
- 'https://www.youtube.com/watch?v=5rmc-monvx0'
summary: AI infrastructure company building stateful environment abstractions for vertical agents. Founded by Josh Purtell.
provenance:
  extracted: 0.5
  inferred: 0.45
  ambiguous: 0.05
base_confidence: 0.3
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: entities
---

# Synth Labs

AI infrastructure company founded by [[entities/josh-purtell|Josh Purtell]] that builds [[concepts/stateful-environments|stateful environment]] abstractions for production-grade vertical AI agents. ^[extracted]

## Work

Synth Labs develops the stateful environments pattern: engine abstractions that containerize domain logic for vertical applications (finance, accounting, health, legal) external to the agent implementation. The environments expose simplified, task-relevant representations that agents can observe and manipulate, with built-in support for network boundaries, multi-agent coordination, and state reset/rollback. ^[inferred]

## Open Source

The company maintains an open-source repository of these abstractions, with implementations across academic benchmarks. Available at the "synth AI environments" GitHub organization. ^[extracted]

## Related

- [[entities/josh-purtell]] — Founder
- [[concepts/stateful-environments]] — The core architectural pattern Synth Labs builds
- [[concepts/agent-tree-search]] — Production pattern enabled by Synth Labs' resettable environments
- [[references/stateful-environments-vertical-agents-josh-purtell-synth-labs]] — AI Engineer World's Fair 2025 talk
