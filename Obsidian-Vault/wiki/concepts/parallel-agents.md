---
title: "Parallel Agents"
category: concepts
tags:
  - agent
  - parallel
  - windsurf
  - concurrent
  - agentic
  - wave
summary: "The capability for AI agents to execute multiple tasks simultaneously — researching while coding, testing while preparing PRs — enabling background operation and supporting the always-on AI vision."
sources:
  - "https://www.youtube.com/watch?v=jvunpl5qo8q"
provenance:
  extracted: 0.90
  inferred: 0.07
  ambiguous: 0.03
base_confidence: 0.70
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Parallel Agents

**Parallel agents** is the capability for AI agents to execute multiple tasks simultaneously within a software engineering workflow. Introduced as Wave 10 by [[entities/windsurf|Windsurf]], parallel agents enable the [[concepts/always-on-ai|always-on AI]] vision by allowing background research and preparation while the main agent works. ^[extracted]

## What It Enables

Parallel agents allow the AI to:

- Research documentation while the main agent writes code
- Run tests while another agent prepares a PR description
- Prepare deployment configurations while the primary agent completes coding
- Work on multiple files or tasks concurrently

This is a fundamental shift from sequential agent execution (one task at a time) to concurrent execution, dramatically increasing throughput and reducing the human wait time.

## Relationship to Always-On AI

Parallel agents are the technical mechanism that makes [[concepts/always-on-ai|always-on AI]] feasible. When multiple agents can work in parallel in the background, the AI can research, prepare, and act autonomously while the human continues their work — only surfacing results for approval. ^[inferred]

## Implementation in Windsurf

Parallel agents were released as part of Windsurf's 10th "wave" of innovations. ^[extracted] They operate within the [[concepts/ai-harness|agentic harness]] infrastructure, leveraging the [[concepts/ai-harness|memory and checkpointing]] systems to maintain state across parallel executions.

## Related

- [[concepts/always-on-ai|Always-On AI]] — Parallel agents enable background operation
- [[concepts/ai-harness|AI Agentic Harness]] — The infrastructure layer
- [[concepts/agent-loop|Agent Loop]] — Parallel agents as a variant of the agent loop pattern
- [[concepts/ubiquitous-ai|Ubiquitous AI]] — Parallel agents can operate across multiple tools simultaneously
