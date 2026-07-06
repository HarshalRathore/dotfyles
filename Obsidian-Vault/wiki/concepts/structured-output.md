---
title: Structured Output
category: concepts
tags: [agent-output, contracts, schema, agent-architecture, machine-actionable]
aliases: [structured output, output contracts, structured output contracts]
relationships:
  - target: '[[concepts/three-tier-delegation]]'
    type: related_to
  - target: '[[concepts/acdc-framework]]'
    type: related_to
  - target: '[[concepts/agent-recipes]]'
    type: related_to
sources:
  - https://www.youtube.com/watch?v=4sX_He5c4sI
summary: When agent output feeds other systems, structured output contracts are a hard requirement — the same principle that governs any system-to-system communication.
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: 2026-07-06
tier: supporting
created: 2026-07-06T00:00:00Z
updated: 2026-07-06T00:00:00Z
---

# Structured Output

**Structured output** is the principle that when an agent's output feeds into another system, the output must conform to a defined contract — an agreed-upon shape between the producer and consumer. ^[extracted]

This is not new to AI. It is the same principle that governs any system-to-system communication: APIs, message queues, file formats, and protocols all define structured contracts. ^[extracted]

## The Principle

> Freeform text is fine when the human is the only one reading it. But when another system has to act on the agent's output, structured output contracts are a hard requirement. ^[extracted]

## Why It Matters

Without structured output:
- Downstream systems cannot reliably parse agent responses
- Validation and error handling become impossible
- Agents cannot participate in automated pipelines

With structured output:
- Agents become reliable components in larger systems
- Output can be validated, transformed, and forwarded
- Agents can be composed into multi-agent workflows

## Connection to Three-Tier Delegation

The three-tier delegation model relies on structured output: ^[inferred]

- **Code** produces deterministic, structured output by definition
- **Agents** must produce structured output to interface with code and humans
- **Humans** produce structured output when filling out forms, signing contracts, etc.

## Related

- [[concepts/three-tier-delegation|Three-Tier Delegation]] — the model that requires structured output
- [[concepts/acdc-framework|ACDC Framework]] — verification requires structured output
- [[concepts/agent-recipes|Agent Recipes]] — recipes encode structured approaches
- [[concepts/agent-as-judge|Agent as Judge]] — agents producing evaluation output

## Sources

- AI Engineer World's Fair 2026: https://www.youtube.com/watch?v=4sX_He5c4sI
