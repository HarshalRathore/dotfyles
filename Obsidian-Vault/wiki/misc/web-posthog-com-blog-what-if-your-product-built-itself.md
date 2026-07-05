---
title: "What If Your Product Built Itself? — PostHog Self-driving Pipeline"
category: misc
tags:
  - posthog
  - self-driving
  - agent-pipeline
  - product-engineering
sources:
  - "[[sources/what-if-your-product-built-itself]]"
source_url: "https://posthog.com/blog/what-if-your-product-built-itself"
created: "2026-07-01"
updated: "2026-07-01"
summary: "PostHog's self-driving product improvement pipeline — ingest signals, group into problems, research, decide actionability, write fix, open PR, iterate until CI green. By Josh Snyder and Cleo Lant (Jun 2026)."
affinity:
  posthog: 3
promotion_status: misc
stub: false
provenance:
  extracted: 0.88
  inferred: 0.10
  ambiguous: 0.02
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: 2026-07-01
---

# What If Your Product Built Itself? — PostHog Self-driving Pipeline

By [[entities/josh-snyder]] and [[entities/cleo-lant]] (PostHog). Posted 2026-06-22. Describes the full self-driving product improvement pipeline: signals → problems → research → actionability → fix → PR.

## Overview

PostHog's product improvement loop: a signal emits from your product, and rather than waiting for someone to spot it on a dashboard, a background agent goes and works out what's wrong. Once it has, it opens a PR automatically. The goal: wake up to PRs sitting ready in GitHub.

!
*The full self-driving pipeline: signals → ingestion → grouping → research → actionability → fix → PR (PostHog, 2026)*

## Key Points

### The five-step pipeline

1. **Ingesting signals** — PostHog ingests trillions of events/month across many source types. A security LLM classifier detects and drops prompt injection attacks at the top of the pipeline. Clean signals are normalized into a unified shape: source product, type, content, weight (importance), and an embedding of the contents.

!
*Ingestion: normalize signals from diverse sources into unified shape, with security classifier at the top (PostHog, 2026)*

2. **Grouping signals into problems** — Signals are grouped into "reports" by matching an LLM-generated description of what each signal is *about* (not raw embedding clustering, which groups structurally similar text together). Raw embedding clustering fails because stack traces cluster together while related Slack messages get left out. Fix: ask an LLM what each signal is about, write that as a few short queries, and match those queries in embedding space.

3. **Researching the problem** — Once a report crosses a weight threshold, a research agent (Claude Agent SDK in a sandbox) investigates. The agent has access to PostHog's MCP server (to pull extra data on demand), the codebase, and external MCPs (Linear, Notion). Outputs: problem summary, priority, and a suggested reviewer (via git blame).

!
*Research agent: Claude Agent SDK with MCP tools investigates the problem (PostHog, 2026)*

4. **Deciding what's actionable** — Three buckets:
   - **Not actionable**: not enough data → back to the pool to gather more evidence
   - **Needs human input**: product decision the agent shouldn't make → lands in inbox
   - **Immediately actionable**: proceeds to fix

5. **Writing the fix** — Opens a PR automatically. Iterates until CI is green.

!
*Execution: writing the fix and opening a PR automatically (PostHog, 2026)*

### Lessons learned

- **Evals matter** — The pipeline's quality depends on rigorous evaluation at every stage. The self-driving loop is only as good as its weakest evaluation step.
- **Scope it or skip it** — Narrow, well-scoped problems succeed autonomously. Broad, vague problems require human judgment. The actionability classifier is critical.
- **Tokens are expensive** — Running LLM calls across trillions of events is not free. The security classifier at the front reduces downstream costs by dropping malicious signals early.

### Key technical insight

Products need to build for **agents as a first-class surface**. PostHog's MCP server lets agents pull in extra data on demand — session replays, errors, logs — making research much more accurate than static analysis alone.

## Concepts

- [[concepts/agent-loop]] — This pipeline is a concrete production deployment of the agent loop: signals as the goal, grouped reports as context, research and PR writing as the agent, and CI green as the evaluation.
- [[web-posthog-com-blog-what-is-a-scout]] — Scouts feed signals into this pipeline. The scout article describes what a signal looks like; this article describes what happens after the signal.

## Entities

- [[entities/josh-snyder]] — Co-author, PostHog engineer building the self-driving pipeline
- [[entities/cleo-lant]] — Co-author, PostHog engineer, also wrote the "stop AI slop" evals guide
- [[posthog]] — The company behind the self-driving product pipeline

## Related

- [[web-posthog-com-blog-what-is-a-scout]] — Companion post about scouts (the signal layer above this pipeline)
- [[web-posthog-com-blog-stop-ai-slop]] — Cleo Lant's earlier post on AI evals that informs the quality assurance layer
- [[posthog]] — PostHog entity page
- [[concepts/agent-loop]] — Agent loop concept that this pipeline implements
