---
title: Self-driving Mode — PostHog Product Page
category: references
tags:
  - posthog
  - self-driving
  - agent-loop
  - product-engineering
  - automation
sources:
  - 'https://posthog.com/self-driving'
source_url: https://posthog.com/self-driving
summary: "PostHog's self-driving product page: Signals → Scouts → Inbox → PR → measurement loop. Safety guarantees (sandboxed, human-only merge, secrets) and per-PR pricing (unlimited reports, 3 free/month)."
provenance:
  extracted: 0.90
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.62
lifecycle: draft
lifecycle_changed: 2026-07-18
tier: supporting
created: 2026-07-18
updated: 2026-07-18
relationships:
  - target: '[[entities/posthog]]'
    type: related_to
  - target: '[[concepts/agent-loop]]'
    type: implements
  - target: '[[misc/web-posthog-com-blog-what-if-your-product-built-itself]]'
    type: related_to
---

# Self-driving Mode — PostHog Product Page

**Author:** PostHog
**Date:** Undated (product page, references current open beta)
**Source:** [posthog.com/self-driving](https://posthog.com/self-driving)

> The official product landing page for PostHog's self-driving mode, described as "autonomy from instruction, not from you" — the product's autonomous improvement pipeline that runs signals-to-PRs without direct human prompting.

## Core Pipeline

The self-driving loop follows a five-stage pipeline: ^[extracted]

1. **Signals** — Ingest signals from diverse sources:
   - Error tracking
   - Session replay (dead clicks, quick backs, long stalls)
   - Scheduled agents (Scouts)
   - External tools (Zendesk, Linear, GitHub issues)

2. **Scouts** — Scheduled agents that watch PostHog data and emit structured signals for the pipeline

3. **Inbox** — Human review queue where signals are triaged: actionable items proceed, ambiguous items gather more evidence, needs-human-input items await product decisions

4. **Pull Requests** — Agents write the fix and open a PR automatically. Every change ships with its own instrumentation — agents add events, feature flags, and experiments automatically ^[extracted]

5. **Measurement loop** — After merge, PostHog checks whether the target metric actually moved. If not, that generates a new signal (and the change can be rolled back) ^[extracted]

## Safety Guarantees

Self-driving mode is designed with multiple safety layers: ^[extracted]

- **Sandboxed cloud work** — agents operate in isolated environments with no direct repo access
- **Human-only merge button** — nothing reaches production without human approval at the merge step
- **Secrets protection** — secrets and credentials are never exposed to agent workspaces
- **Private repos stay private** — no code is shared outside the organization's boundaries

> Self-driving is "autonomy from instruction, not from you." ^[extracted]

## Pricing

- Unlimited reports
- Priced by pull request
- 3 free PRs per month ^[extracted]

## Relationship to the IEEE Narrowing Critique

The [[references/ieee-ai-flattens-discovery]] article describes how AI-driven loops cluster around tractable, data-rich problems — narrowing discovery over time. PostHog's self-driving loop operates within a bounded product domain with human oversight and measurement verification, which may constrain this narrowing effect. Whether the same convergence dynamic applies within product engineering (vs. open-ended science) is an open question. ^[inferred]

## Related

- [[entities/posthog]] — The company behind the self-driving product
- [[concepts/agent-loop]] — The agent loop architecture that PostHog's pipeline implements
- [[misc/web-posthog-com-blog-what-if-your-product-built-itself]] — Companion blog post by Josh Snyder and Cleo Lant describing the same pipeline in more technical detail
- [[references/posthog-stop-being-the-code-review-bottleneck]] — PostHog's code review automation (StampHog, QA swarms) is a subsystem of the broader self-driving product vision
