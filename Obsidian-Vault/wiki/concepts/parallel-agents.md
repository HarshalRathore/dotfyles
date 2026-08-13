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
summary: "The capability for AI agents to execute multiple tasks simultaneously, from background coding work to large parallel sub-agent teams."
sources:
  - "https://www.youtube.com/watch?v=jvunpl5qo8q"
  - "https://x.com/i/status/2083430232405733819"
  - "https://www.deeplearning.ai/courses/agentic-ai"
  - "https://nitter.tiekoetter.com/i/article/2080296261576687751"
provenance:
  extracted: 0.88
  inferred: 0.09
  ambiguous: 0.03
base_confidence: 0.70
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-08-02T13:04:14Z
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

## Parallel Construction in a Graph

Andrew Ng uses parallelism as a benefit of agentic workflows: independent research or generation steps can run concurrently and later feed a synthesis step. The linked graph-engineering article applies the same shape to seven factor-construction nodes that fan out before sequential validation and risk stages. The article's trading workflow is illustrative and unverified. ^[extracted] ^[ambiguous]

## Relationship to Always-On AI

Parallel agents are the technical mechanism that makes [[concepts/always-on-ai|always-on AI]] feasible. When multiple agents can work in parallel in the background, the AI can research, prepare, and act autonomously while the human continues their work — only surfacing results for approval. ^[inferred]

## Implementation in Windsurf

Parallel agents were released as part of Windsurf's 10th "wave" of innovations. ^[extracted] They operate within the [[concepts/ai-harness|agentic harness]] infrastructure, leveraging the [[concepts/ai-harness|memory and checkpointing]] systems to maintain state across parallel executions.


## Google Antigravity at Scale

The Google Antigravity keynote describes a larger parallel-agent pattern than background task assistance: 93 sub-agents worked asynchronously on an operating-system build for more than 12 hours, issuing over 15,000 model requests and processing 2.6 billion tokens. The run reportedly generated and iterated over tests as it decomposed the scheduler, memory management, and file system. ^[extracted]

This is a product demonstration and self-reported experiment, not an independently verified benchmark. It nevertheless shows the shift from a few concurrent helpers to a managed agent team with a shared objective, asynchronous task management, and a reviewable artifact. ^[inferred] See [[entities/google-antigravity|Google Antigravity]] and [[misc/web-x-com-i-status-2083430232405733819|the source page]].
## Related

- [[concepts/always-on-ai|Always-On AI]] — Parallel agents enable background operation
- [[concepts/ai-harness|AI Agentic Harness]] — The infrastructure layer
- [[concepts/agent-loop|Agent Loop]] — Parallel agents as a variant of the agent loop pattern
- [[concepts/ubiquitous-ai|Ubiquitous AI]] — Parallel agents can operate across multiple tools simultaneously
